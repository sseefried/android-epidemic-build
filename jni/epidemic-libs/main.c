#include <HsFFI.h>

#include "SDL_test_common.h"

extern void haskell_main(void);
extern void __stginit_Epidemiczm0zi0zi1_MainLib (void);

int main(int argc, char *argv[])
{
  hs_init(&argc, &argv);
  hs_add_root(__stginit_Epidemiczm0zi0zi1_MainLib);
  haskell_main();
  hs_exit();
  return 0;
}
