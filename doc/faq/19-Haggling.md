## I don't like haggling; can I change the source code to turn it off?

As of 5.6.1, there is an in game option to disable haggling. Simply use '=' to open options and choose your preference.

#### Previous Versions

If you have the source code for any previous 5.x version, you can turn off haggling with a simple change.  Here is the change you would need to make. (Note: This is *not* an official patch.)

In the source file store1.c, this is the routine for determining whether you need to haggle.  You can change the function, or simply change the return(flagnoneed) to return(TRUE) to eliminate all haggling.  The code here is from versions 5.5.1 and 5.5.2; the text of the function is slightly different in earlier versions.

int noneedtobargain(store_num, minprice)
int store_num;
int32 minprice;
{
  register int flagnoneed;
  int bargain_record;
  register store_type *s_ptr;

  s_ptr = &store[store_num];
  if (s_ptr->good_buy == MAX_SHORT)
    return TRUE;
  bargain_record = (s_ptr->good_buy - 3 * s_ptr->bad_buy - 5);
  flagnoneed = ((bargain_record > 0)
		&& ((long)bargain_record * (long)bargain_record
		    > minprice/50));
  return (flagnoneed);
}