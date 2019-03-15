// Files.h
// This workaround is used to compile with old SDK on new machines without Carbon/QuickTime

#ifndef compatibility_h
#define compatibility_h

#include "stdarg.h"
#define __FILES__
typedef void FSRef;

// workaround for old types in objects' source code
#ifdef WIN_VERSION
typedef unsigned char Boolean;
#endif

#endif /* compatibility_h */
