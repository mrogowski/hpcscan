#ifndef HPCSCAN_GLOBAL_H_
#define HPCSCAN_GLOBAL_H_

#include <string>

#include "type_def.h"

namespace hpcscan {

// debug level switch
extern Debug_level debug ;

// global number of MPI process
extern int nproc_world ;

// global rank of MPI process
extern int myid_world ;

// total memory
extern Myint64 max_mem, current_mem ;

} // namespace hpcscan

#endif
