#! /bin/csh -f 

set objdir = $OBJROOT/atm/obj; cd $objdir
set comp = 'unknown'
if ($COMP_INTERFACE == 'MCT' ) set comp = mct
if ($COMP_INTERFACE == 'ESMF') set comp = esmf

#------------------------------------------------------------------------------
# Filepath: List of source code directories (in order of importance).
#------------------------------------------------------------------------------

\cat >! Filepath << EOF1
$CASEROOT/SourceMods/src.datm
$CODEROOT/atm/datm
$CODEROOT/atm/datm/cpl_$comp
EOF1

#------------------------------------------------------------------------------
# run make
#------------------------------------------------------------------------------

gmake complib -j $GMAKE_J MODEL=datm COMPLIB=$LIBROOT/libatm.a -f $CASETOOLS/Makefile MACFILE=$CASEROOT/Macros.$MACH || exit 2

