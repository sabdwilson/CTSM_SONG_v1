-- Date: Mon Aug 25 13:28:03 2025
ancient = 86400
mrcMpathT = {}
spiderT = {
  ["/contrib/modulefiles"] = {
    ["ams-lic/ams"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["ams-lic/ams/2023.102"] = {
          Name = "ams",
          Version = "2023.102",
          canonical = "2023.102",
          fn = "/contrib/modulefiles/ams-lic/ams/2023.102",
          help = [[	Adds ams to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000002023.000000102.*zfinal",
          wV = "000002023.000000102.*zfinal",
          whatis = {
            "Name: ams", "Version: 2023.102",
          },
        },
        ["ams-lic/ams/2024.102"] = {
          Name = "ams",
          Version = "2024.102",
          canonical = "2024.102",
          fn = "/contrib/modulefiles/ams-lic/ams/2024.102",
          help = [[	Adds ams to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000002024.000000102.*zfinal",
          wV = "000002024.000000102.*zfinal",
          whatis = {
            "Name: ams", "Version: 2024.102",
          },
        },
        ["ams-lic/ams/2025.102"] = {
          Name = "ams",
          Version = "2025.102",
          canonical = "2025.102",
          fn = "/contrib/modulefiles/ams-lic/ams/2025.102",
          help = [[	Adds ams to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000002025.000000102.*zfinal",
          wV = "000002025.000000102.*zfinal",
          whatis = {
            "Name: ams", "Version: 2025.102",
          },
        },
      },
    },
    ["astro-idl/idl"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["astro-idl/idl/.8.8"] = {
          Name = "idl",
          Version = "8.8",
          canonical = ".8.8",
          fn = "/contrib/modulefiles/astro-idl/idl/.8.8",
          help = [[	Adds idl to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000000000.000000008.000000008.*zfinal",
          pathA = {
            ["/contrib/astro-idl/idl/8.8/idl88/bin"] = 1,
          },
          wV = "000000000.000000008.000000008.*zfinal",
          whatis = {
            "Name: idl", "Version: 8.8",
          },
        },
        ["astro-idl/idl/8.9"] = {
          Name = "idl",
          Version = "8.9",
          canonical = "8.9",
          fn = "/contrib/modulefiles/astro-idl/idl/8.9",
          help = [[	Adds idl to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000000008.000000009.*zfinal",
          pathA = {
            ["/contrib/astro-idl/idl/8.9/idl89/bin"] = 1,
          },
          wV = "000000008.000000009.*zfinal",
          whatis = {
            "Name: idl", "Version: 8.9",
          },
        },
      },
    },
    ["chrisreidy/baylyd/colmap"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["chrisreidy/baylyd/colmap/colmap"] = {
          Description = "this is a module that puts the user in a singularity container with a pre-configured overlay to support the custom program glomap",
          Name = "colmap",
          Version = "0.0",
          canonical = "colmap",
          fn = "/contrib/modulefiles/chrisreidy/baylyd/colmap/colmap",
          help = [[	adds colmap to the user environment and starts it up
]],
          mpath = "/contrib/modulefiles",
          pV = "*colmap.*zfinal",
          pathA = {
            ["/contrib/modulefiles/chrisreidy/baylyd/colmap/bin"] = 1,
            ["/home/u4/baylyd/my_modules"] = 1,
          },
          wV = "*colmap.*zfinal",
          whatis = {
            "Name: colmap", "Version: 0.0", "Description: this is a module that puts the user in a singularity container with a pre-configured overlay to support the custom program glomap",
          },
        },
      },
    },
    ["chrisreidy/baylyd/gaussian_splat"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["chrisreidy/baylyd/gaussian_splat/gaussian_splat"] = {
          Description = "this module makes it possible to do various tasks with images that have been colmap processed",
          Name = "gaussian splatting",
          Version = "0.0",
          canonical = "gaussian_splat",
          fn = "/contrib/modulefiles/chrisreidy/baylyd/gaussian_splat/gaussian_splat",
          help = [[	adds gaussian splatting workflow support
]],
          mpath = "/contrib/modulefiles",
          pV = "*gaussian.*_.*splat.*zfinal",
          pathA = {
            ["/contrib/modulefiles/chrisreidy/baylyd/gaussian_splat/bin/gaussian_splat_step"] = 1,
            ["/contrib/modulefiles/chrisreidy/baylyd/gaussian_splat/bin/resize_step"] = 1,
            ["/contrib/modulefiles/chrisreidy/baylyd/gaussian_splat/bin/sibr_viewer"] = 1,
            ["/home/u4/baylyd/my_modules"] = 1,
          },
          wV = "*gaussian.*_.*splat.*zfinal",
          whatis = {
            "Name: gaussian splatting", "Version: 0.0", "Description: this module makes it possible to do various tasks with images that have been colmap processed",
          },
        },
      },
    },
    ["echeu/treePL"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["echeu/treePL/1.0"] = {
          Name = "treePL",
          Version = "1.0",
          canonical = "1.0",
          fn = "/contrib/modulefiles/echeu/treePL/1.0",
          help = [[	Adds treePL to your environment
]],
          lpathA = {
            ["/contrib/echeu/treePL/installation/lib"] = 1,
            ["/contrib/echeu/treePL/installation/lib64"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "000000001.*zfinal",
          pathA = {
            ["/contrib/echeu/treePL/installation/bin"] = 1,
          },
          wV = "000000001.*zfinal",
          whatis = {
            "Name: treePL", "Version: 1.0",
          },
        },
      },
    },
    ["fgoeltl/vasp"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["fgoeltl/vasp/6.4.0"] = {
          Name = "vasp",
          Version = "6.4.0",
          canonical = "6.4.0",
          fn = "/contrib/modulefiles/fgoeltl/vasp/6.4.0",
          help = [[	Adds vasp to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000000006.000000004.*zfinal",
          pathA = {
            ["/contrib/fgoeltl/vasp.6.4.0/bin"] = 1,
          },
          wV = "000000006.000000004.*zfinal",
          whatis = {
            "Name: vasp", "Version: 6.4.0",
          },
        },
      },
    },
    ["hongli2/vasp"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hongli2/vasp/6.3.2.patched"] = {
          Name = "vasp",
          Version = "6.3.2.patched",
          canonical = "6.3.2.patched",
          fn = "/contrib/modulefiles/hongli2/vasp/6.3.2.patched",
          help = [[	Adds vasp to your environment
	Includes two patches:
		- https://theory.cm.utexas.edu/vtsttools/installation.html
		- https://gitlab.com/cplaisance/vaspsol_pp
		  patch files for vaspsol++ must be obtained by emailing the developer
]],
          mpath = "/contrib/modulefiles",
          pV = "000000006.000000003.000000002.*patched.*zfinal",
          pathA = {
            ["/contrib/hongli2/vasp.6.3.2.patched/bin"] = 1,
          },
          wV = "000000006.000000003.000000002.*patched.*zfinal",
          whatis = {
            "Name: vasp", "Version: 6.3.2.patched",
          },
        },
        ["hongli2/vasp/cp-vaspsol++.6.3.2"] = {
          Name = "vasp",
          Version = "cp-vaspsol++.6.3.2",
          canonical = "cp-vaspsol++.6.3.2",
          fn = "/contrib/modulefiles/hongli2/vasp/cp-vaspsol++.6.3.2",
          help = [[	Adds vasp to your environment
	Includes three patches:
		- https://theory.cm.utexas.edu/vtsttools/installation.html
		- https://gitlab.com/cplaisance/vaspsol_pp
		- cp-vaspsol++.patch
		  patch files for vaspsol++ must be obtained by emailing the developer
]],
          mpath = "/contrib/modulefiles",
          pV = "*cp.*vaspsol.*+.*+.000000006.000000003.000000002.*zfinal",
          pathA = {
            ["/contrib/hongli2/cp-vaspsol++.6.3.2/bin"] = 1,
          },
          wV = "*cp.*vaspsol.*+.*+.000000006.000000003.000000002.*zfinal",
          whatis = {
            "Name: vasp", "Version: cp-vaspsol++.6.3.2",
          },
        },
      },
    },
    ["hpcteam/amber"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hpcteam/amber/24"] = {
          Name = "amber",
          Version = "24",
          canonical = "24",
          fn = "/contrib/modulefiles/hpcteam/amber/24",
          help = [[	Adds libmesh-opt to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000000024.*zfinal",
          pathA = {
            ["/contrib/hpcteam/amber24/install/bin"] = 1,
          },
          wV = "000000024.*zfinal",
          whatis = {
            "Name: amber", "Version: 24",
          },
        },
      },
    },
    ["hpcteam/eigen"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hpcteam/eigen/3.4.0"] = {
          Name = "eigen",
          Version = "3.4.0",
          canonical = "3.4.0",
          fn = "/contrib/modulefiles/hpcteam/eigen/3.4.0",
          help = [[	Adds eigen to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000000003.000000004.*zfinal",
          wV = "000000003.000000004.*zfinal",
          whatis = {
            "Name: eigen", "Version: 3.4.0", "eigen is a C++ template library for linear algebra",
          },
        },
      },
    },
    ["hpcteam/hwloc"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hpcteam/hwloc/2.12.1"] = {
          Category = "python module",
          Description = "Portable Hardware Locality",
          Name = "hwloc",
          Version = "2.11.1",
          canonical = "2.12.1",
          fn = "/contrib/modulefiles/hpcteam/hwloc/2.12.1",
          help = [[ 
This module loads the hwloc utility

Version 2.11.1

]],
          lpathA = {
            ["/contrib/hpcteam/hwloc/2.12.1/lib"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "000000002.000000012.000000001.*zfinal",
          pathA = {
            ["/contrib/hpcteam/hwloc/2.12.1/bin"] = 1,
          },
          wV = "000000002.000000012.000000001.*zfinal",
          whatis = {
            "Name: hwloc", "Version: 2.11.1", "Category: python module"
            , "Description: Portable Hardware Locality", "URL http://www.open-mpi.org/projects/hwloc/",
          },
        },
      },
    },
    ["hpcteam/lapack"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hpcteam/lapack/3.12.1"] = {
          Name = "perl",
          Version = "3.12.1",
          canonical = "3.12.1",
          fn = "/contrib/modulefiles/hpcteam/lapack/3.12.1",
          help = [[	Adds lapack to your environment
]],
          lpathA = {
            ["/contrib/hpcteam/lapack/3.12.1/lib64"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "000000003.000000012.000000001.*zfinal",
          wV = "000000003.000000012.000000001.*zfinal",
          whatis = {
            "Name: perl", "Version: 3.12.1",
          },
        },
      },
    },
    ["hpcteam/libmesh"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hpcteam/libmesh/1.6.2"] = {
          Name = "libmesh-opt",
          Version = "1.6.2",
          canonical = "1.6.2",
          fn = "/contrib/modulefiles/hpcteam/libmesh/1.6.2",
          help = [[	Adds libmesh-opt to your environment
]],
          lpathA = {
            ["/contrib/hpcteam/libmesh/1.6.2/lib"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "000000001.000000006.000000002.*zfinal",
          pathA = {
            ["/contrib/hpcteam/libmesh/1.7.8/bin"] = 1,
          },
          wV = "000000001.000000006.000000002.*zfinal",
          whatis = {
            "Name: libmesh-opt", "Version: 1.6.2",
          },
        },
        ["hpcteam/libmesh/1.7.8"] = {
          Name = "libmesh-opt",
          Version = "1.7.8",
          canonical = "1.7.8",
          fn = "/contrib/modulefiles/hpcteam/libmesh/1.7.8",
          help = [[	Adds libmesh-opt to your environment
]],
          lpathA = {
            ["/contrib/hpcteam/libmesh/1.7.8/lib"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "000000001.000000007.000000008.*zfinal",
          pathA = {
            ["/contrib/hpcteam/libmesh/1.7.8/bin"] = 1,
          },
          wV = "000000001.000000007.000000008.*zfinal",
          whatis = {
            "Name: libmesh-opt", "Version: 1.7.8",
          },
        },
      },
    },
    ["hpcteam/openmpi5"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hpcteam/openmpi5/5.0.5"] = {
          Category = "runtime library",
          Description = "A powerful implementation of MPI/SHMEM",
          Name = "openmpi5 built with gnu13 toolchain",
          URL = "http://www.open-mpi.org",
          Version = "5.0.5",
          canonical = "5.0.5",
          changeMPATH = true,
          family = "MPI",
          fn = "/contrib/modulefiles/hpcteam/openmpi5/5.0.5",
          help = [[ 
This module loads the openmpi5 library built with the gnu13 toolchain.

Version 5.0.5

]],
          lpathA = {
            ["/contrib/hpcteam/openmpi5/5.0.5/lib"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "000000005.000000000.000000005.*zfinal",
          pathA = {
            ["/contrib/hpcteam/openmpi5/5.0.5/bin"] = 1,
          },
          wV = "000000005.000000000.000000005.*zfinal",
          whatis = {
            "Name: openmpi5 built with gnu13 toolchain", "Version: 5.0.5"
            , "Category: runtime library"
            , "Description: A powerful implementation of MPI/SHMEM", "URL: http://www.open-mpi.org",
          },
        },
        ["hpcteam/openmpi5/5.0.5-OHPCmodules"] = {
          Category = "runtime library",
          Description = "A powerful implementation of MPI/SHMEM",
          Name = "openmpi5 built with gnu13 toolchain",
          URL = "http://www.open-mpi.org",
          Version = "5.0.5",
          canonical = "5.0.5-OHPCmodules",
          changeMPATH = true,
          family = "MPI",
          fn = "/contrib/modulefiles/hpcteam/openmpi5/5.0.5-OHPCmodules",
          help = [[ 
This module loads the openmpi5 library built with the gnu13 toolchain.

Version 5.0.5

]],
          lpathA = {
            ["/contrib/hpcteam/openmpi5/5.0.5-OHPCmodules/lib"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "000000005.000000000.000000005.*ohpcmodules.*zfinal",
          pathA = {
            ["/contrib/hpcteam/openmpi5/5.0.5-OHPCmodules/bin"] = 1,
          },
          wV = "000000005.000000000.000000005.*ohpcmodules.*zfinal",
          whatis = {
            "Name: openmpi5 built with gnu13 toolchain", "Version: 5.0.5"
            , "Category: runtime library"
            , "Description: A powerful implementation of MPI/SHMEM", "URL: http://www.open-mpi.org",
          },
        },
      },
    },
    ["hpcteam/perl"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hpcteam/perl/5.40.2"] = {
          Name = "perl",
          Version = "5.40.2",
          canonical = "5.40.2",
          fn = "/contrib/modulefiles/hpcteam/perl/5.40.2",
          help = [[	Adds perl to your environment
]],
          lpathA = {
            ["/contrib/hpcteam/perl/5.40.2/lib"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "000000005.000000040.000000002.*zfinal",
          pathA = {
            ["/contrib/hpcteam/perl/5.40.2/bin"] = 1,
          },
          wV = "000000005.000000040.000000002.*zfinal",
          whatis = {
            "Name: perl", "Version: 5.40.2",
          },
        },
      },
    },
    ["hpcteam/petsc"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hpcteam/petsc/3.18.6"] = {
          Category = "runtime library",
          Description = "Portable Extensible Toolkit for Scientific Computation",
          Name = "petsc built with gnu13 compiler and openmpi5 MPI",
          Version = "3.18.1",
          canonical = "3.18.6",
          fn = "/contrib/modulefiles/hpcteam/petsc/3.18.6",
          help = [[ 
This module loads the PETSc library built with the gnu13 compiler
toolchain and the openmpi5 MPI stack.
 

Version 3.18.1

]],
          lpathA = {
            ["/contrib/hpcteam/petsc/3.18.6/lib"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "000000003.000000018.000000006.*zfinal",
          pathA = {
            ["/contrib/hpcteam/petsc/3.18.6/bin"] = 1,
          },
          wV = "000000003.000000018.000000006.*zfinal",
          whatis = {
            "Name: petsc built with gnu13 compiler and openmpi5 MPI", "Version: 3.18.1"
            , "Category: runtime library"
            , "Description: Portable Extensible Toolkit for Scientific Computation", "http://www.mcs.anl.gov/petsc/",
          },
        },
      },
    },
    ["hpcteam/pmix"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hpcteam/pmix/4.2.9"] = {
          Name = "pmix",
          Version = "4.2.9",
          canonical = "4.2.9",
          fn = "/contrib/modulefiles/hpcteam/pmix/4.2.9",
          help = [[This module loads the pmix library.
]],
          lpathA = {
            ["/contrib/hpcteam/pmix/4.2.9/lib"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "000000004.000000002.000000009.*zfinal",
          wV = "000000004.000000002.000000009.*zfinal",
          whatis = {
            "Name: pmix", "Version: 4.2.9",
          },
        },
      },
    },
    ["hpcteam/pywarpx"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hpcteam/pywarpx/25.03"] = {
          Name = "samrai",
          Version = "25.03",
          canonical = "25.03",
          fn = "/contrib/modulefiles/hpcteam/pywarpx/25.03",
          help = [[	Adds pywarpx to your environment
]],
          lpathA = {
            ["/contrib/hpcteam/pywarpx/env/lib"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "000000025.000000003.*zfinal",
          pathA = {
            ["/contrib/hpcteam/pywarpx/env/bin"] = 1,
          },
          wV = "000000025.000000003.*zfinal",
          whatis = {
            "Name: samrai", "Version: 25.03", "Structured Adaptive Mesh Refinement Application Infrastructure",
          },
        },
      },
    },
    ["hpcteam/samrai/2.4.4"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hpcteam/samrai/2.4.4/mpi"] = {
          Name = "samrai",
          Version = "2.4.4",
          canonical = "mpi",
          fn = "/contrib/modulefiles/hpcteam/samrai/2.4.4/mpi",
          help = [[	Adds samrai to your environment
]],
          lpathA = {
            ["/contrib/hpcteam/samrai/2.4.4/mpi/lib"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "*mpi.*zfinal",
          pathA = {
            ["/contrib/hpcteam/samrai/2.4.4/mpi/bin"] = 1,
          },
          wV = "*mpi.*zfinal",
          whatis = {
            "Name: samrai", "Version: 2.4.4", "Structured Adaptive Mesh Refinement Application Infrastructure",
          },
        },
        ["hpcteam/samrai/2.4.4/parallel"] = {
          Name = "samrai",
          Version = "2.4.4",
          canonical = "parallel",
          fn = "/contrib/modulefiles/hpcteam/samrai/2.4.4/parallel",
          help = [[	Adds samrai to your environment
]],
          lpathA = {
            ["/contrib/hpcteam/samrai/2.4.4/parallel/lib"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "*parallel.*zfinal",
          pathA = {
            ["/contrib/hpcteam/samrai/2.4.4/parallel/bin"] = 1,
          },
          wV = "*parallel.*zfinal",
          whatis = {
            "Name: samrai", "Version: 2.4.4", "Structured Adaptive Mesh Refinement Application Infrastructure",
          },
        },
        ["hpcteam/samrai/2.4.4/serial"] = {
          Name = "samrai",
          Version = "2.4.4",
          canonical = "serial",
          fn = "/contrib/modulefiles/hpcteam/samrai/2.4.4/serial",
          help = [[	Adds samrai to your environment
]],
          lpathA = {
            ["/contrib/hpcteam/samrai/2.4.4/serial/lib"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "*serial.*zfinal",
          pathA = {
            ["/contrib/hpcteam/samrai/2.4.4/serial/bin"] = 1,
          },
          wV = "*serial.*zfinal",
          whatis = {
            "Name: samrai", "Version: 2.4.4", "Structured Adaptive Mesh Refinement Application Infrastructure",
          },
        },
      },
    },
    ["hpcteam/silo"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hpcteam/silo/4.11.1"] = {
          Name = "silo",
          Version = "4.11.1",
          canonical = "4.11.1",
          fn = "/contrib/modulefiles/hpcteam/silo/4.11.1",
          help = [[	Adds silo to your environment
]],
          lpathA = {
            ["/contrib/hpcteam/silo/4.11.1/lib"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "000000004.000000011.000000001.*zfinal",
          pathA = {
            ["/contrib/hpcteam/silo/4.11.1/bin"] = 1,
          },
          wV = "000000004.000000011.000000001.*zfinal",
          whatis = {
            "Name: silo", "Version: 4.11.1",
          },
        },
      },
    },
    ["hpcteam/timpi"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hpcteam/timpi/1.8.4"] = {
          Name = "timpi",
          Version = "1.8.4",
          canonical = "1.8.4",
          fn = "/contrib/modulefiles/hpcteam/timpi/1.8.4",
          help = [[	Adds silo to your environment
]],
          lpathA = {
            ["/contrib/hpcteam/timpi/1.8.4/lib"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "000000001.000000008.000000004.*zfinal",
          pathA = {
            ["/contrib/hpcteam/silo/4.11.1/bin"] = 1,
            ["/contrib/hpcteam/timpi/1.8.4/bin"] = 1,
          },
          wV = "000000001.000000008.000000004.*zfinal",
          whatis = {
            "Name: timpi", "Version: 1.8.4",
          },
        },
      },
    },
    ["jlbredas/momap"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["jlbredas/momap/2022b"] = {
          Name = "momap",
          Version = "2022b",
          canonical = "2022b",
          fn = "/contrib/modulefiles/jlbredas/momap/2022b",
          help = [[	Adds momap to your environment
]],
          lpathA = {
            ["/contrib/jlbredas/momap/2022b/bin/openmpi/lib"] = 1,
            ["/contrib/jlbredas/momap/2022b/lib"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "000002022.*b.*zfinal",
          pathA = {
            ["/contrib/jlbredas/momap/2022b/bin"] = 1,
          },
          wV = "000002022.*b.*zfinal",
          whatis = {
            "Name: momap", "Version: 2022b",
          },
        },
      },
    },
    ["jlbredas/nexmd-develop"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["jlbredas/nexmd-develop"] = {
          Name = "nexmd-develop",
          Version = false,
          canonical = "",
          fn = "/contrib/modulefiles/jlbredas/nexmd-develop",
          help = "",
          mpath = "/contrib/modulefiles",
          pV = "M.*zfinal",
          pathA = {
            ["/contrib/jlbredas/nexmd-develop/bin"] = 1,
          },
          wV = "M.*zfinal",
          whatis = {
            "loads nexmd-develop program", "Name: nexmd-develop",
          },
        },
      },
    },
    ["jlbredas/qchem"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["jlbredas/qchem/5.4"] = {
          Name = "qchem",
          Version = "5.4",
          canonical = "5.4",
          fn = "/contrib/modulefiles/jlbredas/qchem/5.4",
          help = [[	Adds qchem to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000000005.000000004.*zfinal",
          pathA = {
            ["/contrib/jlbredas/qchem/5.4/bin"] = 1,
          },
          wV = "000000005.000000004.*zfinal",
          whatis = {
            "Name: qchem", "Version: 5.4", "Ab initio quantum chemistry",
          },
        },
        ["jlbredas/qchem/6.0"] = {
          Name = "qchem",
          Version = "6.0",
          canonical = "6.0",
          fn = "/contrib/modulefiles/jlbredas/qchem/6.0",
          help = [[	Adds qchem to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000000006.*zfinal",
          pathA = {
            ["/contrib/jlbredas/qchem/6.0/bin"] = 1,
          },
          wV = "000000006.*zfinal",
          whatis = {
            "Name: qchem", "Version: 6.0", "Ab initio quantum chemistry",
          },
        },
        ["jlbredas/qchem/6.1"] = {
          Name = "qchem",
          Version = "6.1",
          canonical = "6.1",
          fn = "/contrib/modulefiles/jlbredas/qchem/6.1",
          help = [[	Adds qchem to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000000006.000000001.*zfinal",
          pathA = {
            ["/contrib/jlbredas/qchem/6.1/bin"] = 1,
          },
          wV = "000000006.000000001.*zfinal",
          whatis = {
            "Name: qchem", "Version: 6.1", "Ab initio quantum chemistry",
          },
        },
      },
    },
    ["jlbredas/vasp"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["jlbredas/vasp/6.4.1"] = {
          Name = "vasp",
          Version = "6.4.1",
          canonical = "6.4.1",
          fn = "/contrib/modulefiles/jlbredas/vasp/6.4.1",
          help = [[	Adds vasp to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000000006.000000004.000000001.*zfinal",
          pathA = {
            ["/contrib/jlbredas/vasp/6.4.1/bin"] = 1,
          },
          wV = "000000006.000000004.000000001.*zfinal",
          whatis = {
            "Name: vasp", "Version: 6.4.1",
          },
        },
      },
    },
    ["jlbredas/wanniertools"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["jlbredas/wanniertools/2.7.1"] = {
          Name = "wanniertools",
          Version = "2.7.1",
          canonical = "2.7.1",
          fn = "/contrib/modulefiles/jlbredas/wanniertools/2.7.1",
          help = [[	Adds wannier tools to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000000002.000000007.000000001.*zfinal",
          pathA = {
            ["/contrib/jlbredas/wanniertools/wannier_tools/bin"] = 1,
          },
          wV = "000000002.000000007.000000001.*zfinal",
          whatis = {
            "Name: wanniertools", "Version: 2.7.1",
          },
        },
      },
    },
    ["jlbredas/wien2k"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["jlbredas/wien2k/21.1"] = {
          Name = "wien2k",
          Version = "21.1",
          canonical = "21.1",
          fn = "/contrib/modulefiles/jlbredas/wien2k/21.1",
          help = [[	Adds wien2k to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000000021.000000001.*zfinal",
          pathA = {
            ["/contrib/jlbredas/wien2k/21.1/bin"] = 1,
          },
          wV = "000000021.000000001.*zfinal",
          whatis = {
            "Name: wien2k", "Version: 21.1",
          },
        },
      },
    },
    ["krishna/vasp"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["krishna/vasp/6.4.0"] = {
          Name = "vasp",
          Version = "6.4.0",
          canonical = "6.4.0",
          fn = "/contrib/modulefiles/krishna/vasp/6.4.0",
          help = [[	Adds vasp to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000000006.000000004.*zfinal",
          pathA = {
            ["/contrib/krishna/vasp.6.4.0/bin"] = 1,
          },
          wV = "000000006.000000004.*zfinal",
          whatis = {
            "Name: vasp", "Version: 6.4.0",
          },
        },
        ["krishna/vasp/6.4.1"] = {
          Name = "vasp",
          Version = "6.4.1",
          canonical = "6.4.1",
          fn = "/contrib/modulefiles/krishna/vasp/6.4.1",
          help = [[	Adds vasp to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000000006.000000004.000000001.*zfinal",
          pathA = {
            ["/contrib/krishna/vasp.6.4.1/bin"] = 1,
          },
          wV = "000000006.000000004.000000001.*zfinal",
          whatis = {
            "Name: vasp", "Version: 6.4.1",
          },
        },
        ["krishna/vasp/6.4.1.wannier90"] = {
          Name = "vasp",
          Version = "6.4.1.wannier90",
          canonical = "6.4.1.wannier90",
          fn = "/contrib/modulefiles/krishna/vasp/6.4.1.wannier90",
          help = [[	Adds vasp to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000000006.000000004.000000001.*wannier.000000090.*zfinal",
          pathA = {
            ["/contrib/krishna/vasp.6.4.1.wannier90/bin"] = 1,
          },
          wV = "000000006.000000004.000000001.*wannier.000000090.*zfinal",
          whatis = {
            "Name: vasp", "Version: 6.4.1.wannier90",
          },
        },
      },
    },
    ["krishna/wannier90"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["krishna/wannier90/3.1.0"] = {
          Name = "wannier90",
          Version = "3.1.0",
          canonical = "3.1.0",
          fn = "/contrib/modulefiles/krishna/wannier90/3.1.0",
          help = [[	Adds wannier90 to your environment
]],
          lpathA = {
            ["/contrib/krishna/wannier90-3.1.0/INSTALL/usr/lib"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "000000003.000000001.*zfinal",
          pathA = {
            ["/contrib/krishna/wannier90-3.1.0/INSTALL/usr/bin"] = 1,
          },
          wV = "000000003.000000001.*zfinal",
          whatis = {
            "Name: wannier90", "Version: 3.1.0",
          },
        },
      },
    },
    ["krishna/wanniertools"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["krishna/wanniertools/2.7.1"] = {
          Name = "wanniertools",
          Version = "2.7.1",
          canonical = "2.7.1",
          fn = "/contrib/modulefiles/krishna/wanniertools/2.7.1",
          help = [[	Adds wannier tools to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000000002.000000007.000000001.*zfinal",
          pathA = {
            ["/contrib/krishna/wanniertools/wannier_tools/bin"] = 1,
          },
          wV = "000000002.000000007.000000001.*zfinal",
          whatis = {
            "Name: wanniertools", "Version: 2.7.1",
          },
        },
      },
    },
    ["krishna/wien2k"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["krishna/wien2k/18.2"] = {
          Name = "wien2k",
          Version = "18.2",
          canonical = "18.2",
          fn = "/contrib/modulefiles/krishna/wien2k/18.2",
          help = [[	Adds wien2k to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000000018.000000002.*zfinal",
          pathA = {
            ["/contrib/krishna/wien2k/18.2/bin"] = 1,
          },
          wV = "000000018.000000002.*zfinal",
          whatis = {
            "Name: wien2k", "Version: 18.2",
          },
        },
      },
    },
    ["latmarat/thermocalc"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["latmarat/thermocalc/2023a"] = {
          Name = "momap",
          Version = "2022b",
          canonical = "2023a",
          fn = "/contrib/modulefiles/latmarat/thermocalc/2023a",
          help = [[	Adds Thermocalc to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000002023.*a.*zfinal",
          pathA = {
            ["/contrib/latmarat/thermocalc/2023a"] = 1,
          },
          wV = "000002023.*a.*zfinal",
          whatis = {
            "Name: momap", "Version: 2022b",
          },
        },
      },
    },
    ["libera/modtran"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["libera/modtran/6.0"] = {
          Name = "modtran",
          Version = "6.0",
          canonical = "6.0",
          fn = "/contrib/modulefiles/libera/modtran/6.0",
          help = "",
          mpath = "/contrib/modulefiles",
          pV = "000000006.*zfinal",
          pathA = {
            ["/contrib/libera/modtran6.0.2.5/bin/linux"] = 1,
          },
          wV = "000000006.*zfinal",
          whatis = {
            "loads MODTRAN 6.0 program", "Name: modtran",
          },
        },
      },
    },
    ["manga/castep"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["manga/castep/22.11"] = {
          Name = "castep",
          Version = "22.11",
          canonical = "22.11",
          fn = "/contrib/modulefiles/manga/castep/22.11",
          help = [[	Adds castep to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000000022.000000011.*zfinal",
          pathA = {
            ["/contrib/manga/castep/22.11"] = 1,
          },
          wV = "000000022.000000011.*zfinal",
          whatis = {
            "Name: castep", "Version: 22.11",
          },
        },
      },
    },
    ["manga/orca"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["manga/orca/5.0.4"] = {
          Name = "orca",
          Version = "5.0.4",
          canonical = "5.0.4",
          fn = "/contrib/modulefiles/manga/orca/5.0.4",
          help = [[	Adds ORCA to your environment
]],
          lpathA = {
            ["/contrib/manga/orca/5.0.4/orca_5_0_4_linux_x86-64_shared_openmpi411"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "000000005.000000000.000000004.*zfinal",
          pathA = {
            ["/contrib/manga/orca/5.0.4/orca_5_0_4_linux_x86-64_shared_openmpi411"] = 1,
          },
          wV = "000000005.000000000.000000004.*zfinal",
          whatis = {
            "Name: orca", "Version: 5.0.4",
          },
        },
      },
    },
    ["mcwhite/chimerax"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["mcwhite/chimerax/1.8"] = {
          Name = "chimerax",
          Version = "1.8",
          canonical = "1.8",
          fn = "/contrib/modulefiles/mcwhite/chimerax/1.8",
          help = [[	Adds vasp to your environment
]],
          mpath = "/contrib/modulefiles",
          pV = "000000001.000000008.*zfinal",
          pathA = {
            ["/contrib/mcwhite/chimerax"] = 1,
          },
          wV = "000000001.000000008.*zfinal",
          whatis = {
            "Name: chimerax", "Version: 1.8",
          },
        },
      },
    },
    ["xiongr/schrodinger"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["xiongr/schrodinger/2022.1"] = {
          Name = "schrodinger",
          Version = "V. 2022.1",
          canonical = "2022.1",
          fn = "/contrib/modulefiles/xiongr/schrodinger/2022.1",
          help = "",
          lpathA = {
            ["/contrib/xiongr/Schrodinger22-1"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "000002022.000000001.*zfinal",
          pathA = {
            ["/contrib/xiongr/Schrodinger22-1"] = 1,
          },
          wV = "000002022.000000001.*zfinal",
          whatis = {
            "Name: schrodinger", "Version: V. 2022.1",
          },
        },
        ["xiongr/schrodinger/2024.1"] = {
          Name = "schrodinger",
          Version = "V. 2024.1",
          canonical = "2024.1",
          fn = "/contrib/modulefiles/xiongr/schrodinger/2024.1",
          help = "",
          lpathA = {
            ["/contrib/xiongr/Schrodinger24-1"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "000002024.000000001.*zfinal",
          pathA = {
            ["/contrib/xiongr/Schrodinger24-1"] = 1,
          },
          wV = "000002024.000000001.*zfinal",
          whatis = {
            "Name: schrodinger", "Version: V. 2024.1",
          },
        },
        ["xiongr/schrodinger/2024.1.puma"] = {
          Name = "schrodinger24.puma",
          Version = "V. 2024.1",
          canonical = "2024.1.puma",
          fn = "/contrib/modulefiles/xiongr/schrodinger/2024.1.puma",
          help = "",
          lpathA = {
            ["/contrib/xiongr/Schrodinger24-1.puma"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "000002024.000000001.*puma.*zfinal",
          pathA = {
            ["/contrib/xiongr/Schrodinger24-1.puma"] = 1,
          },
          wV = "000002024.000000001.*puma.*zfinal",
          whatis = {
            "Name: schrodinger24.puma", "Version: V. 2024.1",
          },
        },
        ["xiongr/schrodinger/2025.1"] = {
          Name = "schrodinger",
          Version = "V. 2025.1",
          canonical = "2025.1",
          fn = "/contrib/modulefiles/xiongr/schrodinger/2025.1",
          help = "",
          lpathA = {
            ["/contrib/xiongr/Schrodinger25-1"] = 1,
          },
          mpath = "/contrib/modulefiles",
          pV = "000002025.000000001.*zfinal",
          pathA = {
            ["/contrib/xiongr/Schrodinger25-1"] = 1,
          },
          wV = "000002025.000000001.*zfinal",
          whatis = {
            "Name: schrodinger", "Version: V. 2025.1",
          },
        },
      },
    },
  },
  ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/modulefiles"] = {
    nvhpc = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nvhpc/23.7"] = {
          Version = "23.7",
          canonical = "23.7",
          fn = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/modulefiles/nvhpc/23.7",
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/mpi/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/nvshmem/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/compilers/extras/qd/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/compilers/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/cuda/extras/CUPTI/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/cuda/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/math_libs/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/modulefiles",
          pV = "000000023.000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/mpi/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/compilers/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/compilers/extras/qd/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/cuda/bin"] = 1,
          },
          wV = "000000023.000000007.*zfinal",
        },
      },
    },
    ["nvhpc-byo-compiler"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nvhpc-byo-compiler/23.7"] = {
          Version = "23.7",
          canonical = "23.7",
          fn = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/modulefiles/nvhpc-byo-compiler/23.7",
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/nvshmem/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/cuda/extras/CUPTI/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/cuda/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/math_libs/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/modulefiles",
          pV = "000000023.000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/cuda/bin"] = 1,
          },
          wV = "000000023.000000007.*zfinal",
        },
      },
    },
    ["nvhpc-hpcx"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nvhpc-hpcx/23.7"] = {
          Version = "23.7",
          canonical = "23.7",
          fn = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/modulefiles/nvhpc-hpcx/23.7",
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/nvshmem/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/compilers/extras/qd/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/compilers/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/cuda/extras/CUPTI/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/cuda/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/math_libs/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/modulefiles",
          pV = "000000023.000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/hpcx/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/compilers/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/compilers/extras/qd/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/cuda/bin"] = 1,
          },
          wV = "000000023.000000007.*zfinal",
        },
      },
    },
    ["nvhpc-hpcx-cuda11"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nvhpc-hpcx-cuda11/23.7"] = {
          Version = "23.7",
          canonical = "23.7",
          fn = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/modulefiles/nvhpc-hpcx-cuda11/23.7",
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/nvshmem/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/compilers/extras/qd/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/compilers/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/cuda/extras/CUPTI/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/cuda/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/math_libs/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/modulefiles",
          pV = "000000023.000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/compilers/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/compilers/extras/qd/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/cuda/bin"] = 1,
          },
          wV = "000000023.000000007.*zfinal",
        },
      },
    },
    ["nvhpc-hpcx-cuda12"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nvhpc-hpcx-cuda12/23.7"] = {
          Version = "23.7",
          canonical = "23.7",
          fn = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/modulefiles/nvhpc-hpcx-cuda12/23.7",
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/nvshmem/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/compilers/extras/qd/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/compilers/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/cuda/extras/CUPTI/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/cuda/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/math_libs/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/modulefiles",
          pV = "000000023.000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/compilers/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/compilers/extras/qd/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/cuda/bin"] = 1,
          },
          wV = "000000023.000000007.*zfinal",
        },
      },
    },
    ["nvhpc-nompi"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nvhpc-nompi/23.7"] = {
          Version = "23.7",
          canonical = "23.7",
          fn = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/modulefiles/nvhpc-nompi/23.7",
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/nvshmem/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/compilers/extras/qd/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/compilers/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/cuda/extras/CUPTI/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/cuda/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/math_libs/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/modulefiles",
          pV = "000000023.000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/compilers/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/compilers/extras/qd/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/cuda/bin"] = 1,
          },
          wV = "000000023.000000007.*zfinal",
        },
      },
    },
  },
  ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/modulefiles"] = {
    nvhpc = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nvhpc/24.5"] = {
          Version = "24.5",
          canonical = "24.5",
          fn = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/modulefiles/nvhpc/24.5",
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/nvshmem/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/extras/qd/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/extras/CUPTI/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/math_libs/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/modulefiles",
          pV = "000000024.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/mpi/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/extras/qd/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/bin"] = 1,
          },
          wV = "000000024.000000005.*zfinal",
        },
      },
    },
    ["nvhpc-byo-compiler"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nvhpc-byo-compiler/24.5"] = {
          Version = "24.5",
          canonical = "24.5",
          fn = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/modulefiles/nvhpc-byo-compiler/24.5",
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/nvshmem/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/extras/CUPTI/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/math_libs/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/modulefiles",
          pV = "000000024.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/bin"] = 1,
          },
          wV = "000000024.000000005.*zfinal",
        },
      },
    },
    ["nvhpc-hpcx"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nvhpc-hpcx/24.5"] = {
          Version = "24.5",
          canonical = "24.5",
          fn = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/modulefiles/nvhpc-hpcx/24.5",
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/nvshmem/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/extras/qd/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/extras/CUPTI/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/math_libs/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/modulefiles",
          pV = "000000024.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/hpcx/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/extras/qd/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/bin"] = 1,
          },
          wV = "000000024.000000005.*zfinal",
        },
      },
    },
    ["nvhpc-hpcx-cuda11"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nvhpc-hpcx-cuda11/24.5"] = {
          Version = "24.5",
          canonical = "24.5",
          fn = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/modulefiles/nvhpc-hpcx-cuda11/24.5",
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/nvshmem/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/extras/qd/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/extras/CUPTI/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/math_libs/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/modulefiles",
          pV = "000000024.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/extras/qd/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/bin"] = 1,
          },
          wV = "000000024.000000005.*zfinal",
        },
      },
    },
    ["nvhpc-hpcx-cuda12"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nvhpc-hpcx-cuda12/24.5"] = {
          Version = "24.5",
          canonical = "24.5",
          fn = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/modulefiles/nvhpc-hpcx-cuda12/24.5",
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/nvshmem/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/extras/qd/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/extras/CUPTI/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/math_libs/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/modulefiles",
          pV = "000000024.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/extras/qd/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/bin"] = 1,
          },
          wV = "000000024.000000005.*zfinal",
        },
      },
    },
    ["nvhpc-nompi"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nvhpc-nompi/24.5"] = {
          Version = "24.5",
          canonical = "24.5",
          fn = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/modulefiles/nvhpc-nompi/24.5",
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/nvshmem/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/extras/qd/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/extras/CUPTI/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/math_libs/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/modulefiles",
          pV = "000000024.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/extras/qd/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/bin"] = 1,
          },
          wV = "000000024.000000005.*zfinal",
        },
      },
    },
    ["nvhpc-openmpi3"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nvhpc-openmpi3/24.5"] = {
          Version = "24.5",
          canonical = "24.5",
          fn = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/modulefiles/nvhpc-openmpi3/24.5",
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/nvshmem/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/openmpi/openmpi-3.1.5/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/extras/qd/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/extras/CUPTI/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/math_libs/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/modulefiles",
          pV = "000000024.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/openmpi/openmpi-3.1.5/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/compilers/extras/qd/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/cuda/bin"] = 1,
          },
          wV = "000000024.000000005.*zfinal",
        },
      },
    },
  },
  ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/modulefiles"] = {
    nvhpc = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nvhpc/24.7"] = {
          Version = "24.7",
          canonical = "24.7",
          fn = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/modulefiles/nvhpc/24.7",
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/nvshmem/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/compilers/extras/qd/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/compilers/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/cuda/extras/CUPTI/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/cuda/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/math_libs/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/modulefiles",
          pV = "000000024.000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/mpi/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/compilers/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/compilers/extras/qd/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/cuda/bin"] = 1,
          },
          wV = "000000024.000000007.*zfinal",
        },
      },
    },
    ["nvhpc-byo-compiler"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nvhpc-byo-compiler/24.7"] = {
          Version = "24.7",
          canonical = "24.7",
          fn = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/modulefiles/nvhpc-byo-compiler/24.7",
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/nvshmem/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/cuda/extras/CUPTI/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/cuda/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/math_libs/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/modulefiles",
          pV = "000000024.000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/cuda/bin"] = 1,
          },
          wV = "000000024.000000007.*zfinal",
        },
      },
    },
    ["nvhpc-hpcx"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nvhpc-hpcx/24.7"] = {
          Version = "24.7",
          canonical = "24.7",
          fn = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/modulefiles/nvhpc-hpcx/24.7",
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/nvshmem/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/compilers/extras/qd/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/compilers/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/cuda/extras/CUPTI/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/cuda/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/math_libs/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/modulefiles",
          pV = "000000024.000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/hpcx/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/compilers/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/compilers/extras/qd/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/cuda/bin"] = 1,
          },
          wV = "000000024.000000007.*zfinal",
        },
      },
    },
    ["nvhpc-hpcx-cuda12"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nvhpc-hpcx-cuda12/24.7"] = {
          Version = "24.7",
          canonical = "24.7",
          fn = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/modulefiles/nvhpc-hpcx-cuda12/24.7",
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/nvshmem/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/compilers/extras/qd/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/compilers/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/cuda/extras/CUPTI/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/cuda/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/math_libs/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/modulefiles",
          pV = "000000024.000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/compilers/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/compilers/extras/qd/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/cuda/bin"] = 1,
          },
          wV = "000000024.000000007.*zfinal",
        },
      },
    },
    ["nvhpc-nompi"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nvhpc-nompi/24.7"] = {
          Version = "24.7",
          canonical = "24.7",
          fn = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/modulefiles/nvhpc-nompi/24.7",
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/nvshmem/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/compilers/extras/qd/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/compilers/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/cuda/extras/CUPTI/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/cuda/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/math_libs/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/modulefiles",
          pV = "000000024.000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/compilers/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/compilers/extras/qd/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/cuda/bin"] = 1,
          },
          wV = "000000024.000000007.*zfinal",
        },
      },
    },
    ["nvhpc-openmpi3"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nvhpc-openmpi3/24.7"] = {
          Version = "24.7",
          canonical = "24.7",
          fn = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/modulefiles/nvhpc-openmpi3/24.7",
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/nvshmem/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/openmpi/openmpi-3.1.5/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/compilers/extras/qd/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/compilers/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/cuda/extras/CUPTI/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/cuda/lib64"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/math_libs/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/modulefiles",
          pV = "000000024.000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/openmpi/openmpi-3.1.5/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/compilers/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/compilers/extras/qd/bin"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/cuda/bin"] = 1,
          },
          wV = "000000024.000000007.*zfinal",
        },
      },
    },
  },
  ["/opt/ohpc/pub/moduledeps/gnu12"] = {
    openblas = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["openblas/0.3.21"] = {
          Category = "runtime library",
          Description = "An optimized BLAS library based on GotoBLAS2",
          Name = "OPENBLAS built with gnu12 toolchain",
          Version = "0.3.21",
          canonical = "0.3.21",
          family = "openblas",
          fn = "/opt/ohpc/pub/moduledeps/gnu12/openblas/0.3.21",
          help = [[ 
This module loads the OPENBLAS library built with the gnu12 compiler toolchain.

Version 0.3.21

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/gnu12/openblas/0.3.21/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu12",
          pV = "000000000.000000003.000000021.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/gnu12/openblas/0.3.21/bin"] = 1,
          },
          wV = "000000000.000000003.000000021.*zfinal",
          whatis = {
            "Name: OPENBLAS built with gnu12 toolchain", "Version: 0.3.21"
            , "Category: runtime library"
            , "Description: An optimized BLAS library based on GotoBLAS2", "http://www.openblas.net",
          },
        },
      },
    },
  },
  ["/opt/ohpc/pub/moduledeps/gnu13"] = {
    antlr = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["antlr/2.7.7"] = {
          Name = "antlr",
          Version = "2.7.7",
          canonical = "2.7.7",
          fn = "/opt/ohpc/pub/moduledeps/gnu13/antlr/2.7.7",
          help = [[	Adds antlr to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/antlr/2.7.7/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13",
          pV = "000000002.000000007.000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/antlr/2.7.7/bin"] = 1,
          },
          wV = "000000002.000000007.000000007.*zfinal",
          whatis = {
            "Name: antlr", "Version: 2.7.7", "ANother Tool for Language Recognition",
          },
        },
      },
    },
    googletest = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["googletest/1.12.1"] = {
          Name = "googletest",
          Version = "1.12.1",
          canonical = "1.12.1",
          fn = "/opt/ohpc/pub/moduledeps/gnu13/googletest/1.12.1",
          help = [[	Adds googletest to your environment
]],
          mpath = "/opt/ohpc/pub/moduledeps/gnu13",
          pV = "000000001.000000012.000000001.*zfinal",
          wV = "000000001.000000012.000000001.*zfinal",
          whatis = {
            "Name: googletest", "Version: 1.12.1",
          },
        },
      },
    },
    gsl = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["gsl/2.7.1"] = {
          Category = "runtime library",
          Description = "GNU Scientific Library (GSL)",
          Name = "GSL built with gnu13 toolchain",
          Version = "2.7.1",
          canonical = "2.7.1",
          fn = "/opt/ohpc/pub/moduledeps/gnu13/gsl/2.7.1",
          help = [[ 
This module loads the GSL library built with the gnu13 compiler toolchain.

Version 2.7.1

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/gnu13/gsl/2.7.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13",
          pV = "000000002.000000007.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/gnu13/gsl/2.7.1/bin"] = 1,
          },
          wV = "000000002.000000007.000000001.*zfinal",
          whatis = {
            "Name: GSL built with gnu13 toolchain", "Version: 2.7.1"
            , "Category: runtime library", "Description: GNU Scientific Library (GSL)", "http://www.gnu.org/software/gsl",
          },
        },
      },
    },
    hdf5 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hdf5/1.14.0"] = {
          Category = "runtime library",
          Description = "A general purpose library and file format for storing scientific data",
          Name = "HDF5 built with gnu13 toolchain",
          Version = "1.14.0",
          canonical = "1.14.0",
          family = "hdf5",
          fn = "/opt/ohpc/pub/moduledeps/gnu13/hdf5/1.14.0",
          help = [[ 
This module loads the HDF5 library built with the gnu13 compiler toolchain.

Version 1.14.0

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/gnu13/hdf5/1.14.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13",
          pV = "000000001.000000014.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/gnu13/hdf5/1.14.0/bin"] = 1,
          },
          wV = "000000001.000000014.*zfinal",
          whatis = {
            "Name: HDF5 built with gnu13 toolchain", "Version: 1.14.0"
            , "Category: runtime library"
            , "Description: A general purpose library and file format for storing scientific data", "http://www.hdfgroup.org/HDF5",
          },
        },
      },
    },
    impi = {
      defaultA = {
        {
          barefn = ".version",
          defaultIdx = 4,
          fn = "/opt/ohpc/pub/moduledeps/gnu13/impi/.version",
          fullName = "impi/.version",
          mpath = "/opt/ohpc/pub/moduledeps/gnu13",
          value = "2021.11",
        },
      },
      defaultT = {
        barefn = ".version",
        defaultIdx = 4,
        fn = "/opt/ohpc/pub/moduledeps/gnu13/impi/.version",
        fullName = "impi/.version",
        mpath = "/opt/ohpc/pub/moduledeps/gnu13",
        value = "2021.11",
      },
      dirT = {},
      fileT = {
        ["impi/2021.11"] = {
          Category = "library, runtime support",
          Description = "Intel MPI Library (C/C++/Fortran for x86_64)",
          Name = "Intel MPI",
          URL = "http://software.intel.com/en-us/articles/intel-mpi-library/",
          Version = "2021.11",
          canonical = "2021.11",
          changeMPATH = true,
          family = "MPI",
          fn = "/opt/ohpc/pub/moduledeps/gnu13/impi/2021.11",
          help = [[
This module loads the Intel MPI environment for use with the GNU
compiler toolchain

mpif90       (Fortran source)
mpicc        (C   source)
mpicxx       (C++ source)

Version 2021.11

]],
          mpath = "/opt/ohpc/pub/moduledeps/gnu13",
          pV = "000002021.000000011.*zfinal",
          wV = "^00002021.000000011.*zfinal",
          whatis = {
            "Name: Intel MPI", "Version: 2021.11", "Category: library, runtime support"
            , "Description: Intel MPI Library (C/C++/Fortran for x86_64)", "URL: http://software.intel.com/en-us/articles/intel-mpi-library/",
          },
        },
      },
    },
    libaec = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["libaec/1.1.2"] = {
          Name = "libaec",
          Version = "1.1.2",
          canonical = "1.1.2",
          fn = "/opt/ohpc/pub/moduledeps/gnu13/libaec/1.1.2",
          help = [[	Adds libaec to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/libaec/1.1.2/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13",
          pV = "000000001.000000001.000000002.*zfinal",
          wV = "000000001.000000001.000000002.*zfinal",
          whatis = {
            "Name: libaec", "Version: 1.1.2",
          },
        },
      },
    },
    metis = {
      defaultA = {
        {
          barefn = "default",
          defaultIdx = 1,
          fn = "/opt/ohpc/pub/moduledeps/gnu13/metis/default",
          fullName = "metis/default",
          mpath = "/opt/ohpc/pub/moduledeps/gnu13",
          value = "5.1.0",
        },
      },
      defaultT = {
        barefn = "default",
        defaultIdx = 1,
        fn = "/opt/ohpc/pub/moduledeps/gnu13/metis/default",
        fullName = "metis/default",
        mpath = "/opt/ohpc/pub/moduledeps/gnu13",
        value = "5.1.0",
      },
      dirT = {},
      fileT = {
        ["metis/5.1.0"] = {
          Category = "runtime library",
          Description = "Serial Graph Partitioning and Fill-reducing Matrix Ordering",
          Name = "METIS built with gnu13 toolchain",
          Version = "5.1.0",
          canonical = "5.1.0",
          family = "metis",
          fn = "/opt/ohpc/pub/moduledeps/gnu13/metis/5.1.0.lua",
          help = [[This module loads the METIS library built with the gnu13 compiler toolchain.
Version 5.1.0
]],
          lpathA = {
            ["/opt/ohpc/pub/libs/gnu13/metis/5.1.0/lib"] = 1,
          },
          luaExt = 6,
          mpath = "/opt/ohpc/pub/moduledeps/gnu13",
          pV = "000000005.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/gnu13/metis/5.1.0/bin"] = 1,
          },
          wV = "^00000005.000000001.*zfinal",
          whatis = {
            "Name: METIS built with gnu13 toolchain", "Version: 5.1.0"
            , "Category: runtime library"
            , "Description: Serial Graph Partitioning and Fill-reducing Matrix Ordering", "http://glaros.dtc.umn.edu/gkhome/metis/metis/overview",
          },
        },
      },
    },
    openblas = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["openblas/0.3.21"] = {
          Category = "runtime library",
          Description = "An optimized BLAS library based on GotoBLAS2",
          Name = "OPENBLAS built with gnu13 toolchain",
          Version = "0.3.21",
          canonical = "0.3.21",
          family = "openblas",
          fn = "/opt/ohpc/pub/moduledeps/gnu13/openblas/0.3.21",
          help = [[ 
This module loads the OPENBLAS library built with the gnu13 compiler toolchain.

Version 0.3.21

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/gnu13/openblas/0.3.21/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13",
          pV = "000000000.000000003.000000021.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/gnu13/openblas/0.3.21/bin"] = 1,
          },
          wV = "000000000.000000003.000000021.*zfinal",
          whatis = {
            "Name: OPENBLAS built with gnu13 toolchain", "Version: 0.3.21"
            , "Category: runtime library"
            , "Description: An optimized BLAS library based on GotoBLAS2", "http://www.openblas.net",
          },
        },
      },
    },
    openmpi5 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["openmpi5/5.0.5"] = {
          Category = "runtime library",
          Description = "A powerful implementation of MPI/SHMEM",
          Name = "openmpi5 built with gnu13 toolchain",
          URL = "http://www.open-mpi.org",
          Version = "5.0.5",
          canonical = "5.0.5",
          changeMPATH = true,
          family = "MPI",
          fn = "/opt/ohpc/pub/moduledeps/gnu13/openmpi5/5.0.5",
          help = [[ 
This module loads the openmpi5 library built with the gnu13 toolchain.

Version 5.0.5

]],
          lpathA = {
            ["/opt/ohpc/pub/mpi/openmpi5-gnu13/5.0.5/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13",
          pV = "000000005.000000000.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/mpi/openmpi5-gnu13/5.0.5/bin"] = 1,
          },
          wV = "000000005.000000000.000000005.*zfinal",
          whatis = {
            "Name: openmpi5 built with gnu13 toolchain", "Version: 5.0.5"
            , "Category: runtime library"
            , "Description: A powerful implementation of MPI/SHMEM", "URL: http://www.open-mpi.org",
          },
        },
      },
    },
    proj = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["proj/7.2.1"] = {
          Name = "proj",
          Version = "7.2.1",
          canonical = "7.2.1",
          fn = "/opt/ohpc/pub/moduledeps/gnu13/proj/7.2.1",
          help = [[	Adds proj to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/proj/7.2.1/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13",
          pV = "000000007.000000002.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/proj/7.2.1/bin"] = 1,
          },
          wV = "000000007.000000002.000000001.*zfinal",
          whatis = {
            "Name: proj", "Version: 7.2.1",
          },
        },
        ["proj/9.4.0"] = {
          Name = "proj",
          Version = "9.4.0",
          canonical = "9.4.0",
          fn = "/opt/ohpc/pub/moduledeps/gnu13/proj/9.4.0",
          help = [[	Adds proj to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/proj/9.4.0/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13",
          pV = "000000009.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/proj/9.4.0/bin"] = 1,
          },
          wV = "000000009.000000004.*zfinal",
          whatis = {
            "Name: proj", "Version: 9.4.0",
          },
        },
      },
    },
  },
  ["/opt/ohpc/pub/moduledeps/gnu13-openmpi5"] = {
    boost = {
      defaultA = {
        {
          barefn = "default",
          defaultIdx = 1,
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/boost/default",
          fullName = "boost/default",
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          value = "1.81.0",
        },
      },
      defaultT = {
        barefn = "default",
        defaultIdx = 1,
        fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/boost/default",
        fullName = "boost/default",
        mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
        value = "1.81.0",
      },
      dirT = {},
      fileT = {
        ["boost/1.81.0"] = {
          Category = "runtime library",
          Description = "Free peer-reviewed portable C++ source libraries",
          Name = "boost built with gnu13 compiler and openmpi5 MPI",
          Version = "1.81.0",
          canonical = "1.81.0",
          family = "boost",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/boost/1.81.0.lua",
          help = [[This module loads the boost library built with the gnu13
compiler toolchain and the openmpi5 MPI stack.

Version 1.81.0
]],
          lpathA = {
            ["/opt/ohpc/pub/libs/gnu13/openmpi5/boost/1.81.0/lib"] = 1,
          },
          luaExt = 7,
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000001.000000081.*zfinal",
          wV = "^00000001.000000081.*zfinal",
          whatis = {
            "Name: boost built with gnu13 compiler and openmpi5 MPI", "Version: 1.81.0"
            , "Category: runtime library"
            , "Description: Free peer-reviewed portable C++ source libraries", "http://www.boost.org",
          },
        },
      },
    },
    castep = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["castep/20.11"] = {
          Name = "castep",
          Version = "20.11",
          canonical = "20.11",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/castep/20.11",
          help = [[	Adds castep to your environment
]],
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000020.000000011.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/castep/20.11"] = 1,
          },
          wV = "000000020.000000011.*zfinal",
          whatis = {
            "Name: castep", "Version: 20.11",
          },
        },
      },
    },
    cdo = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["cdo/1.9.10"] = {
          Name = "cdo",
          Version = "1.9.10",
          canonical = "1.9.10",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/cdo/1.9.10",
          help = [[	Adds cdo to your environment
]],
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000001.000000009.000000010.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/cdo/1.9.10/bin"] = 1,
          },
          wV = "000000001.000000009.000000010.*zfinal",
          whatis = {
            "Name: cdo", "Version: 1.9.10",
          },
        },
        ["cdo/2.2.2"] = {
          Name = "cdo",
          Version = "2.2.2",
          canonical = "2.2.2",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/cdo/2.2.2",
          help = [[	Adds cdo to your environment
]],
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000002.000000002.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/cdo/2.2.2/bin"] = 1,
          },
          wV = "000000002.000000002.000000002.*zfinal",
          whatis = {
            "Name: cdo", "Version: 2.2.2",
          },
        },
      },
    },
    dirac = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["dirac/24.0"] = {
          Name = "dirac",
          Version = "24.0",
          canonical = "24.0",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/dirac/24.0",
          help = [[	Adds dirac to your environment
]],
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000024.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/dirac/24.0/bin"] = 1,
          },
          wV = "000000024.*zfinal",
          whatis = {
            "Name: dirac", "Version: 24.0",
          },
        },
      },
    },
    fftw = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["fftw/3.3.10"] = {
          Category = "runtime library",
          Description = "A Fast Fourier Transform library",
          Name = "fftw built with gnu13 compiler and openmpi5 MPI",
          Version = "3.3.10",
          canonical = "3.3.10",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/fftw/3.3.10",
          help = [[ 
This module loads the fftw library built with the gnu13 compiler
toolchain and the openmpi5 MPI stack.

Version 3.3.10

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/gnu13/openmpi5/fftw/3.3.10/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000003.000000003.000000010.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/gnu13/openmpi5/fftw/3.3.10/bin"] = 1,
          },
          wV = "000000003.000000003.000000010.*zfinal",
          whatis = {
            "Name: fftw built with gnu13 compiler and openmpi5 MPI", "Version: 3.3.10"
            , "Category: runtime library", "Description: A Fast Fourier Transform library", "URL http://www.fftw.org",
          },
        },
      },
    },
    hmmer = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hmmer/3.4"] = {
          Name = "hmmer",
          Version = "3.4",
          canonical = "3.4",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/hmmer/3.4",
          help = [[	Adds hmmer to your environment
]],
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000003.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/hmmer/3.4/bin"] = 1,
          },
          wV = "000000003.000000004.*zfinal",
          whatis = {
            "Name: hmmer", "Version: 3.4",
          },
        },
      },
    },
    hypre = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hypre/2.20.0"] = {
          Name = "hypre",
          Version = "2.20.0",
          canonical = "2.20.0",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/hypre/2.20.0",
          help = [[	Adds hypre to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/hypre/2.20.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000002.000000020.*zfinal",
          wV = "000000002.000000020.*zfinal",
          whatis = {
            "Name: hypre", "Version: 2.20.0",
          },
        },
        ["hypre/2.32.0"] = {
          Name = "hypre",
          Version = "2.32.0",
          canonical = "2.32.0",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/hypre/2.32.0",
          help = [[	Adds hypre to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/hypre/2.32.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000002.000000032.*zfinal",
          wV = "000000002.000000032.*zfinal",
          whatis = {
            "Name: hypre", "Version: 2.32.0",
          },
        },
      },
    },
    lammps = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["lammps/7Feb2024"] = {
          Name = "lammps",
          Version = "7Feb2024",
          canonical = "7Feb2024",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/lammps/7Feb2024",
          help = [[	Adds lammps to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/lammps/7Feb2024/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000007.*feb.000002024.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/lammps/7Feb2024/bin"] = 1,
          },
          wV = "000000007.*feb.000002024.*zfinal",
          whatis = {
            "Name: lammps", "Version: 7Feb2024",
          },
        },
      },
    },
    ["libmesh-opt"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["libmesh-opt/1.7.8"] = {
          Name = "libmesh-opt",
          Version = "1.7.8",
          canonical = "1.7.8",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/libmesh-opt/1.7.8",
          help = [[	Adds libmesh-opt to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/libmesh-opt/1.7.8/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000001.000000007.000000008.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/libmesh-opt/1.7.8/bin"] = 1,
          },
          wV = "000000001.000000007.000000008.*zfinal",
          whatis = {
            "Name: libmesh-opt", "Version: 1.7.8",
          },
        },
      },
    },
    muparser = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["muparser/2.3.5"] = {
          Name = "muparser",
          Version = "2.3.5",
          canonical = "2.3.5",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/muparser/2.3.5",
          help = [[	Adds muparser to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/muparser/2.3.5/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000002.000000003.000000005.*zfinal",
          wV = "000000002.000000003.000000005.*zfinal",
          whatis = {
            "Name: muparser", "Version: 2.3.5",
          },
        },
      },
    },
    netcdf = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["netcdf/4.9.2"] = {
          Category = "runtime library",
          Description = "C Libraries for the Unidata network Common Data Form",
          Name = "NETCDF built with gnu13 toolchain",
          Version = "4.9.2",
          canonical = "4.9.2",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/netcdf/4.9.2",
          help = [[ 
This module loads the NetCDF C API built with the gnu13 compiler
toolchain and the openmpi5 MPI stack.
 
Note that this build of NetCDF leverages the HDF I/O library and requires linkage
against hdf5. Consequently, the phdf5 package is loaded automatically with this module.
A typical compilation step for C applications requiring NetCDF is as follows:
 
$CC -I$NETCDF_INC app.c -L$NETCDF_LIB -lnetcdf -L$HDF5_LIB -lhdf5

Version 4.9.2

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/gnu13/openmpi5/netcdf/4.9.2/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000004.000000009.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/gnu13/openmpi5/netcdf/4.9.2/bin"] = 1,
          },
          wV = "000000004.000000009.000000002.*zfinal",
          whatis = {
            "Name: NETCDF built with gnu13 toolchain", "Version: 4.9.2"
            , "Category: runtime library"
            , "Description: C Libraries for the Unidata network Common Data Form", "http://www.unidata.ucar.edu/software/netcdf/",
          },
        },
      },
    },
    ["netcdf-cxx"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["netcdf-cxx/4.3.1"] = {
          Category = "runtime library",
          Description = "C++ Libraries for the Unidata network Common Data Form",
          Name = "NETCDF_CXX built with gnu13 toolchain",
          Version = "4.3.1",
          canonical = "4.3.1",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/netcdf-cxx/4.3.1",
          help = [[ 
This module loads the NetCDF C++ API built with the gnu13 compiler toolchain.
 
Note that this build of NetCDF leverages the HDF I/O library and requires linkage
against hdf5 and the native C NetCDF library. Consequently, phdf5 and the standard C
version of NetCDF are loaded automatically via this module. A typical compilation
example for C++ applications requiring NetCDF is as follows:
 
$CXX -I$NETCDF_CXX_INC app.cpp -L$NETCDF_CXX_LIB -lnetcdf_c++4 -L$NETCDF_LIB -lnetcdf -L$HDF5_LIB -lhdf5

Version 4.3.1

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/gnu13/openmpi5/netcdf-cxx/4.3.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000004.000000003.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/gnu13/openmpi5/netcdf-cxx/4.3.1/bin"] = 1,
          },
          wV = "000000004.000000003.000000001.*zfinal",
          whatis = {
            "Name: NETCDF_CXX built with gnu13 toolchain", "Version: 4.3.1"
            , "Category: runtime library"
            , "Description: C++ Libraries for the Unidata network Common Data Form", "http://www.unidata.ucar.edu/software/netcdf/",
          },
        },
      },
    },
    ["netcdf-fortran"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["netcdf-fortran/4.6.1"] = {
          Category = "runtime library",
          Description = "Fortran Libraries for the Unidata network Common Data Form",
          Name = "NETCDF_FORTRAN built with gnu13 toolchain",
          Version = "4.6.1",
          canonical = "4.6.1",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/netcdf-fortran/4.6.1",
          help = [[ 
This module loads the NetCDF Fortran API built with the gnu13 compiler toolchain.
 
Note that this build of NetCDF leverages the HDF I/O library and requires linkage
against hdf5 and the native C NetCDF library. Consequently, phdf5 and the standard C
version of NetCDF are loaded automatically via this module. A typical compilation
example for Fortran applications requiring NetCDF is as follows:
 
]],
          lpathA = {
            ["/opt/ohpc/pub/libs/gnu13/openmpi5/netcdf-fortran/4.6.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000004.000000006.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/gnu13/openmpi5/netcdf-fortran/4.6.1/bin"] = 1,
          },
          wV = "000000004.000000006.000000001.*zfinal",
          whatis = {
            "Name: NETCDF_FORTRAN built with gnu13 toolchain", "Version: 4.6.1"
            , "Category: runtime library"
            , "Description: Fortran Libraries for the Unidata network Common Data Form", "http://www.unidata.ucar.edu/software/netcdf/",
          },
        },
      },
    },
    petsc = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["petsc/3.18.1"] = {
          Category = "runtime library",
          Description = "Portable Extensible Toolkit for Scientific Computation",
          Name = "petsc built with gnu13 compiler and openmpi5 MPI",
          Version = "3.18.1",
          canonical = "3.18.1",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/petsc/3.18.1",
          help = [[ 
This module loads the PETSc library built with the gnu13 compiler
toolchain and the openmpi5 MPI stack.
 

Version 3.18.1

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/gnu13/openmpi5/petsc/3.18.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000003.000000018.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/gnu13/openmpi5/petsc/3.18.1/bin"] = 1,
          },
          wV = "000000003.000000018.000000001.*zfinal",
          whatis = {
            "Name: petsc built with gnu13 compiler and openmpi5 MPI", "Version: 3.18.1"
            , "Category: runtime library"
            , "Description: Portable Extensible Toolkit for Scientific Computation", "http://www.mcs.anl.gov/petsc/",
          },
        },
      },
    },
    phdf5 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["phdf5/1.14.0"] = {
          Category = "runtime library",
          Description = "A general purpose library and file format for storing scientific data",
          Name = "hdf5 built with gnu13 compiler and openmpi5 MPI",
          Version = "1.14.0",
          canonical = "1.14.0",
          family = "hdf5",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/phdf5/1.14.0",
          help = [[ 
This module loads the parallel hdf5 library built with the gnu13 compiler
toolchain and the openmpi5 MPI stack.

Version 1.14.0

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/gnu13/openmpi5/hdf5/1.14.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000001.000000014.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/gnu13/openmpi5/hdf5/1.14.0/bin"] = 1,
          },
          wV = "000000001.000000014.*zfinal",
          whatis = {
            "Name: hdf5 built with gnu13 compiler and openmpi5 MPI", "Version: 1.14.0"
            , "Category: runtime library"
            , "Description: A general purpose library and file format for storing scientific data", "http://www.hdfgroup.org/HDF5",
          },
        },
      },
    },
    pnetcdf = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["pnetcdf/1.12.3"] = {
          Category = "runtime library",
          Description = "A Parallel NetCDF library (PnetCDF)",
          Name = "pnetcdf built with gnu13 compiler and openmpi5 MPI",
          Version = "1.12.3",
          canonical = "1.12.3",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/pnetcdf/1.12.3",
          help = [[ 
This module loads the pnetcdf library built with the gnu13 compiler
toolchain and the openmpi5 MPI stack.

Version 1.12.3

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/gnu13/openmpi5/pnetcdf/1.12.3/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000001.000000012.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/gnu13/openmpi5/pnetcdf/1.12.3/bin"] = 1,
          },
          wV = "000000001.000000012.000000003.*zfinal",
          whatis = {
            "Name: pnetcdf built with gnu13 compiler and openmpi5 MPI", "Version: 1.12.3"
            , "Category: runtime library", "Description: A Parallel NetCDF library (PnetCDF)", "URL http://cucis.ece.northwestern.edu/projects/PnetCDF",
          },
        },
      },
    },
    raxml = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["raxml/8.2.12"] = {
          Name = "raxml",
          Version = "8.2.12",
          canonical = "8.2.12",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/raxml/8.2.12",
          help = [[	Adds raxml to your environment
]],
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000008.000000002.000000012.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/raxml/8.2.12"] = 1,
          },
          wV = "000000008.000000002.000000012.*zfinal",
          whatis = {
            "Name: raxml", "Version: 8.2.12",
          },
        },
      },
    },
    samrai = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["samrai/2.4.4"] = {
          Name = "samrai",
          Version = "2.4.4",
          canonical = "2.4.4",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/samrai/2.4.4",
          help = [[	Adds samrai to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/samrai/2.4.4/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000002.000000004.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/samrai/2.4.4/bin"] = 1,
          },
          wV = "000000002.000000004.000000004.*zfinal",
          whatis = {
            "Name: samrai", "Version: 2.4.4", "Structured Adaptive Mesh Refinement Application Infrastructure",
          },
        },
      },
    },
    scalapack = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["scalapack/2.2.0"] = {
          Category = "runtime library",
          Description = "A subset of LAPACK routines redesigned for heterogeneous computing",
          Name = "scalapack built with gnu13 compiler and openmpi5 MPI",
          Version = "2.2.0",
          canonical = "2.2.0",
          fn = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5/scalapack/2.2.0",
          help = [[ 
This module loads the ScaLAPACK library built with the gnu13 compiler
toolchain and the openmpi5 MPI stack.
 

Version 2.2.0

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/gnu13/openmpi5/scalapack/2.2.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/gnu13-openmpi5",
          pV = "000000002.000000002.*zfinal",
          wV = "000000002.000000002.*zfinal",
          whatis = {
            "Name: scalapack built with gnu13 compiler and openmpi5 MPI", "Version: 2.2.0"
            , "Category: runtime library"
            , "Description: A subset of LAPACK routines redesigned for heterogeneous computing", "https://netlib.org/scalapack/",
          },
        },
      },
    },
  },
  ["/opt/ohpc/pub/moduledeps/intel"] = {
    antlr = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["antlr/2.7.7"] = {
          Name = "antlr",
          Version = "2.7.7",
          canonical = "2.7.7",
          fn = "/opt/ohpc/pub/moduledeps/intel/antlr/2.7.7",
          help = [[	Adds antlr to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/antlr-intel/2.7.7/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/intel",
          pV = "000000002.000000007.000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/antlr-intel/2.7.7/bin"] = 1,
          },
          wV = "000000002.000000007.000000007.*zfinal",
          whatis = {
            "Name: antlr", "Version: 2.7.7",
          },
        },
      },
    },
    googletest = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["googletest/1.12.1"] = {
          Name = "googletest",
          Version = "1.12.1",
          canonical = "1.12.1",
          fn = "/opt/ohpc/pub/moduledeps/intel/googletest/1.12.1",
          help = [[	Adds googletest to your environment
]],
          mpath = "/opt/ohpc/pub/moduledeps/intel",
          pV = "000000001.000000012.000000001.*zfinal",
          wV = "000000001.000000012.000000001.*zfinal",
          whatis = {
            "Name: googletest", "Version: 1.12.1",
          },
        },
      },
    },
    gsl = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["gsl/2.8"] = {
          Category = "runtime library",
          Description = "GNU Scientific Library (GSL)",
          Name = "GSL built with intel toolchain",
          Version = "2.8",
          canonical = "2.8",
          fn = "/opt/ohpc/pub/moduledeps/intel/gsl/2.8",
          help = [[ 
This module loads the GSL library built with the intel compiler toolchain.

Version 2.8

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/intel/gsl/2.8/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/intel",
          pV = "000000002.000000008.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/intel/gsl/2.8/bin"] = 1,
          },
          wV = "000000002.000000008.*zfinal",
          whatis = {
            "Name: GSL built with intel toolchain", "Version: 2.8"
            , "Category: runtime library", "Description: GNU Scientific Library (GSL)", "http://www.gnu.org/software/gsl",
          },
        },
      },
    },
    hdf5 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hdf5/1.14.6"] = {
          Category = "runtime library",
          Description = "A general purpose library and file format for storing scientific data",
          Name = "HDF5 built with intel toolchain",
          Version = "1.14.6",
          canonical = "1.14.6",
          family = "hdf5",
          fn = "/opt/ohpc/pub/moduledeps/intel/hdf5/1.14.6",
          help = [[ 
This module loads the HDF5 library built with the intel compiler toolchain.

Version 1.14.6

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/intel/hdf5/1.14.6/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/intel",
          pV = "000000001.000000014.000000006.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/intel/hdf5/1.14.6/bin"] = 1,
          },
          wV = "000000001.000000014.000000006.*zfinal",
          whatis = {
            "Name: HDF5 built with intel toolchain", "Version: 1.14.6"
            , "Category: runtime library"
            , "Description: A general purpose library and file format for storing scientific data", "http://www.hdfgroup.org/HDF5",
          },
        },
      },
    },
    impi = {
      defaultA = {
        {
          barefn = ".version",
          defaultIdx = 4,
          fn = "/opt/ohpc/pub/moduledeps/intel/impi/.version",
          fullName = "impi/.version",
          mpath = "/opt/ohpc/pub/moduledeps/intel",
          value = "2021.11",
        },
      },
      defaultT = {
        barefn = ".version",
        defaultIdx = 4,
        fn = "/opt/ohpc/pub/moduledeps/intel/impi/.version",
        fullName = "impi/.version",
        mpath = "/opt/ohpc/pub/moduledeps/intel",
        value = "2021.11",
      },
      dirT = {},
      fileT = {
        ["impi/2021.11"] = {
          Category = "library, runtime support",
          Description = "Intel MPI Library (C/C++/Fortran for x86_64)",
          Name = "Intel MPI",
          URL = "http://software.intel.com/en-us/articles/intel-mpi-library",
          Version = "2021.11",
          canonical = "2021.11",
          changeMPATH = true,
          family = "MPI",
          fn = "/opt/ohpc/pub/moduledeps/intel/impi/2021.11",
          help = [[
This module loads the Intel MPI environment.

   mpiifort  (Fortran source)
   mpiicc    (C   source)
   mpiicpc   (C++ source)

Version 2021.11

]],
          mpath = "/opt/ohpc/pub/moduledeps/intel",
          pV = "000002021.000000011.*zfinal",
          wV = "^00002021.000000011.*zfinal",
          whatis = {
            "Name: Intel MPI", "Version: 2021.11", "Category: library, runtime support"
            , "Description: Intel MPI Library (C/C++/Fortran for x86_64)", "URL: http://software.intel.com/en-us/articles/intel-mpi-library",
          },
        },
        ["impi/2021.15"] = {
          Category = "library, runtime support",
          Description = "Intel MPI Library (C/C++/Fortran for x86_64)",
          Name = "Intel MPI",
          URL = "http://software.intel.com/en-us/articles/intel-mpi-library",
          Version = "2021.15",
          canonical = "2021.15",
          changeMPATH = true,
          family = "MPI",
          fn = "/opt/ohpc/pub/moduledeps/intel/impi/2021.15",
          help = [[
This module loads the Intel MPI environment.

   mpiifort  (Fortran source)
   mpiicc    (C   source)
   mpiicpc   (C++ source)

Version 2021.15

]],
          mpath = "/opt/ohpc/pub/moduledeps/intel",
          pV = "000002021.000000015.*zfinal",
          wV = "000002021.000000015.*zfinal",
          whatis = {
            "Name: Intel MPI", "Version: 2021.15", "Category: library, runtime support"
            , "Description: Intel MPI Library (C/C++/Fortran for x86_64)", "URL: http://software.intel.com/en-us/articles/intel-mpi-library",
          },
        },
      },
    },
    libaec = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["libaec/1.1.2"] = {
          Name = "libaec",
          Version = "1.1.2",
          canonical = "1.1.2",
          fn = "/opt/ohpc/pub/moduledeps/intel/libaec/1.1.2",
          help = [[	Adds libaec to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/libaec-intel/1.1.2/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/intel",
          pV = "000000001.000000001.000000002.*zfinal",
          wV = "000000001.000000001.000000002.*zfinal",
          whatis = {
            "Name: libaec", "Version: 1.1.2",
          },
        },
      },
    },
    metis = {
      defaultA = {
        {
          barefn = "default",
          defaultIdx = 1,
          fn = "/opt/ohpc/pub/moduledeps/intel/metis/default",
          fullName = "metis/default",
          mpath = "/opt/ohpc/pub/moduledeps/intel",
          value = "5.1.0",
        },
      },
      defaultT = {
        barefn = "default",
        defaultIdx = 1,
        fn = "/opt/ohpc/pub/moduledeps/intel/metis/default",
        fullName = "metis/default",
        mpath = "/opt/ohpc/pub/moduledeps/intel",
        value = "5.1.0",
      },
      dirT = {},
      fileT = {
        ["metis/5.1.0"] = {
          Category = "runtime library",
          Description = "Serial Graph Partitioning and Fill-reducing Matrix Ordering",
          Name = "METIS built with intel toolchain",
          Version = "5.1.0",
          canonical = "5.1.0",
          family = "metis",
          fn = "/opt/ohpc/pub/moduledeps/intel/metis/5.1.0.lua",
          help = [[This module loads the METIS library built with the intel compiler toolchain.
Version 5.1.0
]],
          lpathA = {
            ["/opt/ohpc/pub/libs/intel/metis/5.1.0/lib"] = 1,
          },
          luaExt = 6,
          mpath = "/opt/ohpc/pub/moduledeps/intel",
          pV = "000000005.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/intel/metis/5.1.0/bin"] = 1,
          },
          wV = "^00000005.000000001.*zfinal",
          whatis = {
            "Name: METIS built with intel toolchain", "Version: 5.1.0"
            , "Category: runtime library"
            , "Description: Serial Graph Partitioning and Fill-reducing Matrix Ordering", "http://glaros.dtc.umn.edu/gkhome/metis/metis/overview",
          },
        },
      },
    },
    nco = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nco/5.3.1"] = {
          Name = "nco",
          Version = "5.3.1",
          canonical = "5.3.1",
          fn = "/opt/ohpc/pub/moduledeps/intel/nco/5.3.1",
          help = [[	Adds nco to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/nco-intel/5.3.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/intel",
          pV = "000000005.000000003.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nco-intel/5.3.1/bin"] = 1,
          },
          wV = "000000005.000000003.000000001.*zfinal",
          whatis = {
            "Name: nco", "Version: 5.3.1",
          },
        },
      },
    },
    proj = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["proj/7.2.1"] = {
          Name = "proj",
          Version = "7.2.1",
          canonical = "7.2.1",
          fn = "/opt/ohpc/pub/moduledeps/intel/proj/7.2.1",
          help = [[	Adds proj to your environment
]],
          mpath = "/opt/ohpc/pub/moduledeps/intel",
          pV = "000000007.000000002.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/proj-intel/7.2.1/bin"] = 1,
          },
          wV = "000000007.000000002.000000001.*zfinal",
          whatis = {
            "Name: proj", "Version: 7.2.1",
          },
        },
        ["proj/9.4.0"] = {
          Name = "proj",
          Version = "9.4.0",
          canonical = "9.4.0",
          fn = "/opt/ohpc/pub/moduledeps/intel/proj/9.4.0",
          help = [[	Adds proj to your environment
]],
          mpath = "/opt/ohpc/pub/moduledeps/intel",
          pV = "000000009.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/proj-intel/9.4.0/bin"] = 1,
          },
          wV = "000000009.000000004.*zfinal",
          whatis = {
            "Name: proj", "Version: 9.4.0",
          },
        },
      },
    },
  },
  ["/opt/ohpc/pub/moduledeps/intel-impi"] = {
    boost = {
      defaultA = {
        {
          barefn = "default",
          defaultIdx = 1,
          fn = "/opt/ohpc/pub/moduledeps/intel-impi/boost/default",
          fullName = "boost/default",
          mpath = "/opt/ohpc/pub/moduledeps/intel-impi",
          value = "1.88.0",
        },
      },
      defaultT = {
        barefn = "default",
        defaultIdx = 1,
        fn = "/opt/ohpc/pub/moduledeps/intel-impi/boost/default",
        fullName = "boost/default",
        mpath = "/opt/ohpc/pub/moduledeps/intel-impi",
        value = "1.88.0",
      },
      dirT = {},
      fileT = {
        ["boost/1.88.0"] = {
          Category = "runtime library",
          Description = "Free peer-reviewed portable C++ source libraries",
          Name = "boost built with intel compiler and impi MPI",
          Version = "1.88.0",
          canonical = "1.88.0",
          family = "boost",
          fn = "/opt/ohpc/pub/moduledeps/intel-impi/boost/1.88.0.lua",
          help = [[This module loads the boost library built with the intel
compiler toolchain and the impi MPI stack.

Version 1.88.0
]],
          lpathA = {
            ["/opt/ohpc/pub/libs/intel/impi/boost/1.88.0/lib"] = 1,
          },
          luaExt = 7,
          mpath = "/opt/ohpc/pub/moduledeps/intel-impi",
          pV = "000000001.000000088.*zfinal",
          wV = "^00000001.000000088.*zfinal",
          whatis = {
            "Name: boost built with intel compiler and impi MPI", "Version: 1.88.0"
            , "Category: runtime library"
            , "Description: Free peer-reviewed portable C++ source libraries", "http://www.boost.org",
          },
        },
      },
    },
    fftw = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["fftw/3.3.10"] = {
          Category = "runtime library",
          Description = "A Fast Fourier Transform library",
          Name = "fftw built with intel compiler and impi MPI",
          Version = "3.3.10",
          canonical = "3.3.10",
          fn = "/opt/ohpc/pub/moduledeps/intel-impi/fftw/3.3.10",
          help = [[ 
This module loads the fftw library built with the intel compiler
toolchain and the impi MPI stack.

Version 3.3.10

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/intel/impi/fftw/3.3.10/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/intel-impi",
          pV = "000000003.000000003.000000010.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/intel/impi/fftw/3.3.10/bin"] = 1,
          },
          wV = "000000003.000000003.000000010.*zfinal",
          whatis = {
            "Name: fftw built with intel compiler and impi MPI", "Version: 3.3.10"
            , "Category: runtime library", "Description: A Fast Fourier Transform library", "URL http://www.fftw.org",
          },
        },
      },
    },
    netcdf = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["netcdf/4.9.3"] = {
          Category = "runtime library",
          Description = "C Libraries for the Unidata network Common Data Form",
          Name = "NETCDF built with intel toolchain",
          Version = "4.9.3",
          canonical = "4.9.3",
          fn = "/opt/ohpc/pub/moduledeps/intel-impi/netcdf/4.9.3",
          help = [[ 
This module loads the NetCDF C API built with the intel compiler
toolchain and the impi MPI stack.
 
Note that this build of NetCDF leverages the HDF I/O library and requires linkage
against hdf5. Consequently, the phdf5 package is loaded automatically with this module.
A typical compilation step for C applications requiring NetCDF is as follows:
 
$CC -I$NETCDF_INC app.c -L$NETCDF_LIB -lnetcdf -L$HDF5_LIB -lhdf5

Version 4.9.3

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/intel/impi/netcdf/4.9.3/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/intel-impi",
          pV = "000000004.000000009.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/intel/impi/netcdf/4.9.3/bin"] = 1,
          },
          wV = "000000004.000000009.000000003.*zfinal",
          whatis = {
            "Name: NETCDF built with intel toolchain", "Version: 4.9.3"
            , "Category: runtime library"
            , "Description: C Libraries for the Unidata network Common Data Form", "http://www.unidata.ucar.edu/software/netcdf/",
          },
        },
      },
    },
    ["netcdf-cxx"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["netcdf-cxx/4.3.1"] = {
          Category = "runtime library",
          Description = "C++ Libraries for the Unidata network Common Data Form",
          Name = "NETCDF_CXX built with intel toolchain",
          Version = "4.3.1",
          canonical = "4.3.1",
          fn = "/opt/ohpc/pub/moduledeps/intel-impi/netcdf-cxx/4.3.1",
          help = [[ 
This module loads the NetCDF C++ API built with the intel compiler toolchain.
 
Note that this build of NetCDF leverages the HDF I/O library and requires linkage
against hdf5 and the native C NetCDF library. Consequently, phdf5 and the standard C
version of NetCDF are loaded automatically via this module. A typical compilation
example for C++ applications requiring NetCDF is as follows:
 
$CXX -I$NETCDF_CXX_INC app.cpp -L$NETCDF_CXX_LIB -lnetcdf_c++4 -L$NETCDF_LIB -lnetcdf -L$HDF5_LIB -lhdf5

Version 4.3.1

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/intel/impi/netcdf-cxx/4.3.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/intel-impi",
          pV = "000000004.000000003.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/intel/impi/netcdf-cxx/4.3.1/bin"] = 1,
          },
          wV = "000000004.000000003.000000001.*zfinal",
          whatis = {
            "Name: NETCDF_CXX built with intel toolchain", "Version: 4.3.1"
            , "Category: runtime library"
            , "Description: C++ Libraries for the Unidata network Common Data Form", "http://www.unidata.ucar.edu/software/netcdf/",
          },
        },
      },
    },
    ["netcdf-fortran"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["netcdf-fortran/4.6.2"] = {
          Category = "runtime library",
          Description = "Fortran Libraries for the Unidata network Common Data Form",
          Name = "NETCDF_FORTRAN built with intel toolchain",
          Version = "4.6.2",
          canonical = "4.6.2",
          fn = "/opt/ohpc/pub/moduledeps/intel-impi/netcdf-fortran/4.6.2",
          help = [[ 
This module loads the NetCDF Fortran API built with the intel compiler toolchain.
 
Note that this build of NetCDF leverages the HDF I/O library and requires linkage
against hdf5 and the native C NetCDF library. Consequently, phdf5 and the standard C
version of NetCDF are loaded automatically via this module. A typical compilation
example for Fortran applications requiring NetCDF is as follows:
 
]],
          lpathA = {
            ["/opt/ohpc/pub/libs/intel/impi/netcdf-fortran/4.6.2/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/intel-impi",
          pV = "000000004.000000006.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/intel/impi/netcdf-fortran/4.6.2/bin"] = 1,
          },
          wV = "000000004.000000006.000000002.*zfinal",
          whatis = {
            "Name: NETCDF_FORTRAN built with intel toolchain", "Version: 4.6.2"
            , "Category: runtime library"
            , "Description: Fortran Libraries for the Unidata network Common Data Form", "http://www.unidata.ucar.edu/software/netcdf/",
          },
        },
      },
    },
    petsc = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["petsc/3.18.1"] = {
          Category = "runtime library",
          Description = "Portable Extensible Toolkit for Scientific Computation",
          Name = "petsc built with intel compiler and impi MPI",
          Version = "3.18.1",
          canonical = "3.18.1",
          fn = "/opt/ohpc/pub/moduledeps/intel-impi/petsc/3.18.1",
          help = [[ 
This module loads the PETSc library built with the intel compiler
toolchain and the impi MPI stack.
 

Version 3.18.1

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/intel/impi/petsc/3.18.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/intel-impi",
          pV = "000000003.000000018.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/intel/impi/petsc/3.18.1/bin"] = 1,
          },
          wV = "000000003.000000018.000000001.*zfinal",
          whatis = {
            "Name: petsc built with intel compiler and impi MPI", "Version: 3.18.1"
            , "Category: runtime library"
            , "Description: Portable Extensible Toolkit for Scientific Computation", "http://www.mcs.anl.gov/petsc/",
          },
        },
      },
    },
    phdf5 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["phdf5/1.14.6"] = {
          Category = "runtime library",
          Description = "A general purpose library and file format for storing scientific data",
          Name = "hdf5 built with intel compiler and impi MPI",
          Version = "1.14.6",
          canonical = "1.14.6",
          family = "hdf5",
          fn = "/opt/ohpc/pub/moduledeps/intel-impi/phdf5/1.14.6",
          help = [[ 
This module loads the parallel hdf5 library built with the intel compiler
toolchain and the impi MPI stack.

Version 1.14.6

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/intel/impi/hdf5/1.14.6/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/intel-impi",
          pV = "000000001.000000014.000000006.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/intel/impi/hdf5/1.14.6/bin"] = 1,
          },
          wV = "000000001.000000014.000000006.*zfinal",
          whatis = {
            "Name: hdf5 built with intel compiler and impi MPI", "Version: 1.14.6"
            , "Category: runtime library"
            , "Description: A general purpose library and file format for storing scientific data", "http://www.hdfgroup.org/HDF5",
          },
        },
      },
    },
    pnetcdf = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["pnetcdf/1.14.0"] = {
          Category = "runtime library",
          Description = "A Parallel NetCDF library (PnetCDF)",
          Name = "pnetcdf built with intel compiler and impi MPI",
          Version = "1.14.0",
          canonical = "1.14.0",
          fn = "/opt/ohpc/pub/moduledeps/intel-impi/pnetcdf/1.14.0",
          help = [[ 
This module loads the pnetcdf library built with the intel compiler
toolchain and the impi MPI stack.

Version 1.14.0

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/intel/impi/pnetcdf/1.14.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/intel-impi",
          pV = "000000001.000000014.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/intel/impi/pnetcdf/1.14.0/bin"] = 1,
          },
          wV = "000000001.000000014.*zfinal",
          whatis = {
            "Name: pnetcdf built with intel compiler and impi MPI", "Version: 1.14.0"
            , "Category: runtime library", "Description: A Parallel NetCDF library (PnetCDF)", "URL http://cucis.ece.northwestern.edu/projects/PnetCDF",
          },
        },
      },
    },
    scalapack = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["scalapack/2.2.2"] = {
          Category = "runtime library",
          Description = "A subset of LAPACK routines redesigned for heterogeneous computing",
          Name = "scalapack built with intel compiler and impi MPI",
          Version = "2.2.2",
          canonical = "2.2.2",
          fn = "/opt/ohpc/pub/moduledeps/intel-impi/scalapack/2.2.2",
          help = [[ 
This module loads the ScaLAPACK library built with the intel compiler
toolchain and the impi MPI stack.
 

Version 2.2.2

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/intel/impi/scalapack/2.2.2/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/intel-impi",
          pV = "000000002.000000002.000000002.*zfinal",
          wV = "000000002.000000002.000000002.*zfinal",
          whatis = {
            "Name: scalapack built with intel compiler and impi MPI", "Version: 2.2.2"
            , "Category: runtime library"
            , "Description: A subset of LAPACK routines redesigned for heterogeneous computing", "https://netlib.org/scalapack/",
          },
        },
      },
    },
  },
  ["/opt/ohpc/pub/moduledeps/oneapi"] = {
    [".compiler-rt32"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        [".compiler-rt32/2023.2.1"] = {
          Version = "2023.2.1",
          canonical = "2023.2.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/.compiler-rt32/2023.2.1",
          lpathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/compiler/2023.2.1/linux/compiler/lib/ia32_lin"] = 1,
            ["/opt/ohpc/pub/compiler/intel/oneapi/compiler/2023.2.1/linux/compiler/lib/intel64_lin"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002023.000000002.000000001.*zfinal",
          wV = "000002023.000000002.000000001.*zfinal",
        },
        [".compiler-rt32/2024.0.0"] = {
          Version = "2024.0.0",
          canonical = "2024.0.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/.compiler-rt32/2024.0.0",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.*zfinal",
          wV = "000002024.*zfinal",
        },
        [".compiler-rt32/2024.1.2"] = {
          Version = "2024.1.2",
          canonical = "2024.1.2",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/.compiler-rt32/2024.1.2",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.000000001.000000002.*zfinal",
          wV = "000002024.000000001.000000002.*zfinal",
        },
      },
    },
    [".compiler32"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        [".compiler32/2023.2.1"] = {
          Version = "2023.2.1",
          canonical = "2023.2.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/.compiler32/2023.2.1",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002023.000000002.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/compiler/2023.2.1/linux/bin"] = 1,
            ["/opt/ohpc/pub/compiler/intel/oneapi/compiler/2023.2.1/linux/bin/intel64"] = 1,
          },
          wV = "000002023.000000002.000000001.*zfinal",
          whatis = {
            "Configure for use with Intel 32-bit compiler(s).",
          },
        },
        [".compiler32/2024.0.0"] = {
          Version = "2024.0.0",
          canonical = "2024.0.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/.compiler32/2024.0.0",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.*zfinal",
          wV = "000002024.*zfinal",
        },
        [".compiler32/2024.1.2"] = {
          Version = "2024.1.2",
          canonical = "2024.1.2",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/.compiler32/2024.1.2",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.000000001.000000002.*zfinal",
          wV = "000002024.000000001.000000002.*zfinal",
        },
      },
    },
    [".icc32"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        [".icc32/2023.2.1"] = {
          Version = "2023.2.1",
          canonical = "2023.2.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/.icc32/2023.2.1",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002023.000000002.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/compiler/2023.2.1/linux/bin/intel64"] = 1,
          },
          wV = "000002023.000000002.000000001.*zfinal",
          whatis = {
            "Intel 32-bit Classic Compiler (icc)",
          },
        },
      },
    },
    [".ifort32"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        [".ifort32/2024.0.0"] = {
          Version = "2024.0.0",
          canonical = "2024.0.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/.ifort32/2024.0.0",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.*zfinal",
          wV = "000002024.*zfinal",
        },
        [".ifort32/2024.1.2"] = {
          Version = "2024.1.2",
          canonical = "2024.1.2",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/.ifort32/2024.1.2",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.000000001.000000002.*zfinal",
          wV = "000002024.000000001.000000002.*zfinal",
        },
      },
    },
    [".mkl32"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        [".mkl32/2024.0"] = {
          Description = "Intel(R) oneAPI Math Kernel Library (oneMKL)",
          Name = "Intel(R) oneAPI Math Kernel Library",
          URL = "https://www.intel.com/content/www/us/en/developer/tools/oneapi/onemkl.html",
          Version = "mkl32/2024.0",
          canonical = "2024.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/.mkl32/2024.0",
          help = [[module whatis .mkl32
]],
          lpathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/mkl/2024.0/lib"] = 1,
            ["/opt/ohpc/pub/compiler/intel/oneapi/mkl/2024.0/lib32"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.*zfinal",
          wV = "000002024.*zfinal",
          whatis = {
            "Name: Intel(R) oneAPI Math Kernel Library", "Version: mkl32/2024.0"
            , "Description: Intel(R) oneAPI Math Kernel Library (oneMKL)"
            , "URL: https://www.intel.com/content/www/us/en/developer/tools/oneapi/onemkl.html", "Dependencies: tbb32 compiler-rt32",
          },
        },
      },
    },
    ccl = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["ccl/2021.11.1"] = {
          Version = "2021.11.1",
          canonical = "2021.11.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/ccl/2021.11.1",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002021.000000011.000000001.*zfinal",
          wV = "000002021.000000011.000000001.*zfinal",
        },
      },
    },
    compiler = {
      defaultA = {
        {
          barefn = ".version",
          defaultIdx = 4,
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler/.version",
          fullName = "compiler/.version",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          value = "2024.0.0",
        },
      },
      defaultT = {
        barefn = ".version",
        defaultIdx = 4,
        fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler/.version",
        fullName = "compiler/.version",
        mpath = "/opt/ohpc/pub/moduledeps/oneapi",
        value = "2024.0.0",
      },
      dirT = {},
      fileT = {
        ["compiler/2023.2.1"] = {
          Version = "2023.2.1",
          canonical = "2023.2.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler/2023.2.1",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002023.000000002.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/compiler/2023.2.1/linux/bin"] = 1,
            ["/opt/ohpc/pub/compiler/intel/oneapi/compiler/2023.2.1/linux/bin/intel64"] = 1,
          },
          wV = "000002023.000000002.000000001.*zfinal",
          whatis = {
            "Configure for use with Intel 64-bit compiler(s).",
          },
        },
        ["compiler/2024.0.0"] = {
          Version = "2024.0.0",
          canonical = "2024.0.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler/2024.0.0",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.*zfinal",
          wV = "^00002024.*zfinal",
        },
        ["compiler/2024.1.2"] = {
          Version = "2024.1.2",
          canonical = "2024.1.2",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler/2024.1.2",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.000000001.000000002.*zfinal",
          wV = "000002024.000000001.000000002.*zfinal",
        },
        ["compiler/2024.2.1"] = {
          Version = "2024.2.1",
          canonical = "2024.2.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler/2024.2.1",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.000000002.000000001.*zfinal",
          wV = "000002024.000000002.000000001.*zfinal",
        },
      },
    },
    ["compiler-intel-llvm"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["compiler-intel-llvm/2024.1.2"] = {
          Version = "2024.1.2",
          canonical = "2024.1.2",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler-intel-llvm/2024.1.2",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.000000001.000000002.*zfinal",
          wV = "000002024.000000001.000000002.*zfinal",
        },
        ["compiler-intel-llvm/2024.2.1"] = {
          Version = "2024.2.1",
          canonical = "2024.2.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler-intel-llvm/2024.2.1",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.000000002.000000001.*zfinal",
          wV = "000002024.000000002.000000001.*zfinal",
        },
      },
    },
    ["compiler-intel-llvm32"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["compiler-intel-llvm32/2024.1.2"] = {
          Version = "2024.1.2",
          canonical = "2024.1.2",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler-intel-llvm32/2024.1.2",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.000000001.000000002.*zfinal",
          wV = "000002024.000000001.000000002.*zfinal",
        },
        ["compiler-intel-llvm32/2024.2.1"] = {
          Version = "2024.2.1",
          canonical = "2024.2.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler-intel-llvm32/2024.2.1",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.000000002.000000001.*zfinal",
          wV = "000002024.000000002.000000001.*zfinal",
        },
      },
    },
    ["compiler-rt"] = {
      defaultA = {
        {
          barefn = ".version",
          defaultIdx = 4,
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler-rt/.version",
          fullName = "compiler-rt/.version",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          value = "2024.0.0",
        },
      },
      defaultT = {
        barefn = ".version",
        defaultIdx = 4,
        fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler-rt/.version",
        fullName = "compiler-rt/.version",
        mpath = "/opt/ohpc/pub/moduledeps/oneapi",
        value = "2024.0.0",
      },
      dirT = {},
      fileT = {
        ["compiler-rt/2023.2.1"] = {
          Version = "2023.2.1",
          canonical = "2023.2.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler-rt/2023.2.1",
          lpathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/compiler/2023.2.1/linux/compiler/lib/intel64_lin"] = 1,
            ["/opt/ohpc/pub/compiler/intel/oneapi/compiler/2023.2.1/linux/lib"] = 1,
            ["/opt/ohpc/pub/compiler/intel/oneapi/compiler/2023.2.1/linux/lib/x64"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002023.000000002.000000001.*zfinal",
          wV = "000002023.000000002.000000001.*zfinal",
        },
        ["compiler-rt/2024.0.0"] = {
          Version = "2024.0.0",
          canonical = "2024.0.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler-rt/2024.0.0",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.*zfinal",
          wV = "^00002024.*zfinal",
        },
        ["compiler-rt/2024.1.2"] = {
          Version = "2024.1.2",
          canonical = "2024.1.2",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler-rt/2024.1.2",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.000000001.000000002.*zfinal",
          wV = "000002024.000000001.000000002.*zfinal",
        },
        ["compiler-rt/2024.2.1"] = {
          Version = "2024.2.1",
          canonical = "2024.2.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler-rt/2024.2.1",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.000000002.000000001.*zfinal",
          wV = "000002024.000000002.000000001.*zfinal",
        },
      },
    },
    ["compiler-rt32"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["compiler-rt32/2023.2.1"] = {
          Version = "2023.2.1",
          canonical = "2023.2.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler-rt32/2023.2.1",
          lpathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/compiler/2023.2.1/linux/compiler/lib/ia32_lin"] = 1,
            ["/opt/ohpc/pub/compiler/intel/oneapi/compiler/2023.2.1/linux/compiler/lib/intel64_lin"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002023.000000002.000000001.*zfinal",
          wV = "000002023.000000002.000000001.*zfinal",
        },
        ["compiler-rt32/2024.0.0"] = {
          Version = "2024.0.0",
          canonical = "2024.0.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler-rt32/2024.0.0",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.*zfinal",
          wV = "000002024.*zfinal",
        },
        ["compiler-rt32/2024.1.2"] = {
          Version = "2024.1.2",
          canonical = "2024.1.2",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler-rt32/2024.1.2",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.000000001.000000002.*zfinal",
          wV = "000002024.000000001.000000002.*zfinal",
        },
        ["compiler-rt32/2024.2.1"] = {
          Version = "2024.2.1",
          canonical = "2024.2.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler-rt32/2024.2.1",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.000000002.000000001.*zfinal",
          wV = "000002024.000000002.000000001.*zfinal",
        },
      },
    },
    compiler32 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["compiler32/2023.2.1"] = {
          Version = "2023.2.1",
          canonical = "2023.2.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler32/2023.2.1",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002023.000000002.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/compiler/2023.2.1/linux/bin"] = 1,
            ["/opt/ohpc/pub/compiler/intel/oneapi/compiler/2023.2.1/linux/bin/intel64"] = 1,
          },
          wV = "000002023.000000002.000000001.*zfinal",
          whatis = {
            "Configure for use with Intel 32-bit compiler(s).",
          },
        },
        ["compiler32/2024.0.0"] = {
          Version = "2024.0.0",
          canonical = "2024.0.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler32/2024.0.0",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.*zfinal",
          wV = "000002024.*zfinal",
        },
        ["compiler32/2024.1.2"] = {
          Version = "2024.1.2",
          canonical = "2024.1.2",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler32/2024.1.2",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.000000001.000000002.*zfinal",
          wV = "000002024.000000001.000000002.*zfinal",
        },
        ["compiler32/2024.2.1"] = {
          Version = "2024.2.1",
          canonical = "2024.2.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/compiler32/2024.2.1",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.000000002.000000001.*zfinal",
          wV = "000002024.000000002.000000001.*zfinal",
        },
      },
    },
    dal = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["dal/2024.0.0"] = {
          Description = "Library for building compute-intense applications optimized for Intel CPUs and GPUs.",
          Name = "IntelÂ® oneAPI Data Analytics Library",
          URL = "https://www.intel.com/content/www/us/en/developer/tools/oneapi/onedal.html",
          Version = "dal/2024.0.0",
          canonical = "2024.0.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/dal/2024.0.0",
          help = "",
          lpathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/dal/2024.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.*zfinal",
          wV = "000002024.*zfinal",
          whatis = {
            "Name: IntelÂ® oneAPI Data Analytics Library", "Version: dal/2024.0.0"
            , "Description: Library for building compute-intense applications optimized for Intel CPUs and GPUs."
            , "URL: https://www.intel.com/content/www/us/en/developer/tools/oneapi/onedal.html", "Dependencies: none",
          },
        },
      },
    },
    debugger = {
      defaultA = {
        {
          barefn = ".version",
          defaultIdx = 4,
          fn = "/opt/ohpc/pub/moduledeps/oneapi/debugger/.version",
          fullName = "debugger/.version",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          value = "2024.0.0",
        },
      },
      defaultT = {
        barefn = ".version",
        defaultIdx = 4,
        fn = "/opt/ohpc/pub/moduledeps/oneapi/debugger/.version",
        fullName = "debugger/.version",
        mpath = "/opt/ohpc/pub/moduledeps/oneapi",
        value = "2024.0.0",
      },
      dirT = {},
      fileT = {
        ["debugger/2023.2.0"] = {
          Version = "2023.2.0",
          canonical = "2023.2.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/debugger/2023.2.0",
          lpathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/debugger/2023.2.0/dep/lib"] = 1,
            ["/opt/ohpc/pub/compiler/intel/oneapi/debugger/2023.2.0/gdb/intel64/lib"] = 1,
            ["/opt/ohpc/pub/compiler/intel/oneapi/debugger/2023.2.0/libipt/intel64/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002023.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/debugger/2023.2.0/gdb/intel64/bin"] = 1,
          },
          wV = "000002023.000000002.*zfinal",
          whatis = {
            "The gdb-oneapi debugger (an extension of standard gdb).",
          },
        },
        ["debugger/2024.0.0"] = {
          Description = "IntelÂ® oneAPI Application Debugger (gdb-oneapi)",
          Name = "IntelÂ® Distribution for GDB",
          URL = "https://www.intel.com/content/www/us/en/developer/tools/oneapi/distribution-for-gdb.html",
          Version = "debugger/2024.0.0",
          canonical = "2024.0.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/debugger/2024.0.0",
          help = [[module whatis debugger
]],
          lpathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/debugger/2024.0/opt/debugger/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/debugger/2024.0/bin"] = 1,
          },
          wV = "^00002024.*zfinal",
          whatis = {
            "Name: IntelÂ® Distribution for GDB", "Version: debugger/2024.0.0"
            , "Description: IntelÂ® oneAPI Application Debugger (gdb-oneapi)"
            , "URL: https://www.intel.com/content/www/us/en/developer/tools/oneapi/distribution-for-gdb.html", "Dependencies: none",
          },
        },
      },
    },
    ["dev-utilities"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["dev-utilities/2021.10.0"] = {
          Version = "2021.10.0",
          canonical = "2021.10.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/dev-utilities/2021.10.0",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002021.000000010.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/dev-utilities/2021.10.0/bin"] = 1,
          },
          wV = "000002021.000000010.*zfinal",
          whatis = {
            "Add oneap-cli sample browser to PATH and oneAPI samples include dirs into CPATH.",
          },
        },
        ["dev-utilities/2024.0.0"] = {
          Description = "Sample headers and CLI sample browser (oneapi-cli).",
          Name = "IntelÂ® Dev Utilities",
          URL = "https://github.com/intel/oneapi-cli",
          Version = "dev-utilities/2024.0.0",
          canonical = "2024.0.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/dev-utilities/2024.0.0",
          help = [[module whatis dev-utilities
]],
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/dev-utilities/2024.0/bin"] = 1,
          },
          wV = "000002024.*zfinal",
          whatis = {
            "Name: IntelÂ® Dev Utilities", "Version: dev-utilities/2024.0.0"
            , "Description: Sample headers and CLI sample browser (oneapi-cli)."
            , "URL: https://github.com/intel/oneapi-cli", "Dependencies: none",
          },
        },
      },
    },
    dnnl = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["dnnl/3.4.1"] = {
          Description = "Performance library of basic building blocks for deep learning applications",
          Name = "IntelÂ® oneAPI Deep Neural Network Library (oneDNN)",
          URL = "https://www.intel.com/content/www/us/en/developer/tools/oneapi/onednn.html",
          Version = "dnnl/3.4.1",
          canonical = "3.4.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/dnnl/3.4.1",
          help = [[module whatis dnnl
]],
          lpathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/dnnl/2024.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000000003.000000004.000000001.*zfinal",
          wV = "000000003.000000004.000000001.*zfinal",
          whatis = {
            "Name: IntelÂ® oneAPI Deep Neural Network Library (oneDNN)"
            , "Version: dnnl/3.4.1"
            , "Description: Performance library of basic building blocks for deep learning applications"
            , "URL: https://www.intel.com/content/www/us/en/developer/tools/oneapi/onednn.html", "Dependencies: tbb compiler-rt",
          },
        },
        ["dnnl/3.5.0"] = {
          Description = "Performance library of basic building blocks for deep learning applications",
          Name = "IntelÂ® oneAPI Deep Neural Network Library (oneDNN)",
          URL = "https://www.intel.com/content/www/us/en/developer/tools/oneapi/onednn.html",
          Version = "dnnl/3.5.0",
          canonical = "3.5.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/dnnl/3.5.0",
          help = [[module whatis dnnl
]],
          lpathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/dnnl/2024.2/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000000003.000000005.*zfinal",
          wV = "000000003.000000005.*zfinal",
          whatis = {
            "Name: IntelÂ® oneAPI Deep Neural Network Library (oneDNN)"
            , "Version: dnnl/3.5.0"
            , "Description: Performance library of basic building blocks for deep learning applications"
            , "URL: https://www.intel.com/content/www/us/en/developer/tools/oneapi/onednn.html", "Dependencies: tbb compiler-rt",
          },
        },
        ["dnnl/3.6.1"] = {
          Description = "Performance library of basic building blocks for deep learning applications",
          Name = "IntelÂ® oneAPI Deep Neural Network Library (oneDNN)",
          URL = "https://www.intel.com/content/www/us/en/developer/tools/oneapi/onednn.html",
          Version = "dnnl/3.6.1",
          canonical = "3.6.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/dnnl/3.6.1",
          help = [[module whatis dnnl
]],
          lpathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/dnnl/2025.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000000003.000000006.000000001.*zfinal",
          wV = "000000003.000000006.000000001.*zfinal",
          whatis = {
            "Name: IntelÂ® oneAPI Deep Neural Network Library (oneDNN)"
            , "Version: dnnl/3.6.1"
            , "Description: Performance library of basic building blocks for deep learning applications"
            , "URL: https://www.intel.com/content/www/us/en/developer/tools/oneapi/onednn.html", "Dependencies: tbb compiler-rt",
          },
        },
      },
    },
    dpct = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["dpct/2024.0.0"] = {
          Description = "Migrate existing CUDA* code to SYCL code.",
          Name = "IntelÂ® DPC++ Compatibility Tool",
          URL = "https://www.intel.com/content/www/us/en/developer/tools/oneapi/dpc-compatibility-tool.html",
          Version = "dpct/2024.0.0",
          canonical = "2024.0.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/dpct/2024.0.0",
          help = [[module whatis dpct
]],
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/dpcpp-ct/2024.0/bin"] = 1,
          },
          wV = "000002024.*zfinal",
          whatis = {
            "Name: IntelÂ® DPC++ Compatibility Tool", "Version: dpct/2024.0.0"
            , "Description: Migrate existing CUDA* code to SYCL code."
            , "URL: https://www.intel.com/content/www/us/en/developer/tools/oneapi/dpc-compatibility-tool.html", "Dependencies: none",
          },
        },
      },
    },
    dpl = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["dpl/2022.3"] = {
          Description = "Intel(R) oneAPI DPC++ Library provides an alternative for C++ developers who create heterogeneous applications and solutions. Its APIs are based on familiar standards - C++ STL, Parallel STL (PSTL), Boost.Compute, and SYCL* - to maximize productivity and performance across CPUs, GPUs, and FPGAs.",
          Name = "Intel(R) oneAPI DPC++ Library (oneDPL)",
          URL = "https://www.intel.com/content/www/us/en/developer/tools/oneapi/dpc-library.html",
          Version = "dpl/2022.3",
          canonical = "2022.3",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/dpl/2022.3",
          help = [[module whatis dpl
]],
          lpathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/dpl/2022.3/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002022.000000003.*zfinal",
          wV = "000002022.000000003.*zfinal",
          whatis = {
            "Name: Intel(R) oneAPI DPC++ Library (oneDPL)", "Version: dpl/2022.3"
            , "Description: Intel(R) oneAPI DPC++ Library provides an alternative for C++ developers who create heterogeneous applications and solutions. Its APIs are based on familiar standards - C++ STL, Parallel STL (PSTL), Boost.Compute, and SYCL* - to maximize productivity and performance across CPUs, GPUs, and FPGAs."
            , "URL: https://www.intel.com/content/www/us/en/developer/tools/oneapi/dpc-library.html", "Dependencies: none",
          },
        },
      },
    },
    icc = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["icc/2023.2.1"] = {
          Version = "2023.2.1",
          canonical = "2023.2.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/icc/2023.2.1",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002023.000000002.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/compiler/2023.2.1/linux/bin/intel64"] = 1,
          },
          wV = "000002023.000000002.000000001.*zfinal",
          whatis = {
            "Intel 64-bit Classic Compiler (icc)",
          },
        },
      },
    },
    icc32 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["icc32/2023.2.1"] = {
          Version = "2023.2.1",
          canonical = "2023.2.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/icc32/2023.2.1",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002023.000000002.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/compiler/2023.2.1/linux/bin/intel64"] = 1,
          },
          wV = "000002023.000000002.000000001.*zfinal",
          whatis = {
            "Intel 32-bit Classic Compiler (icc)",
          },
        },
      },
    },
    ifort = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["ifort/2024.0.0"] = {
          Version = "2024.0.0",
          canonical = "2024.0.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/ifort/2024.0.0",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.*zfinal",
          wV = "000002024.*zfinal",
        },
        ["ifort/2024.1.2"] = {
          Version = "2024.1.2",
          canonical = "2024.1.2",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/ifort/2024.1.2",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.000000001.000000002.*zfinal",
          wV = "000002024.000000001.000000002.*zfinal",
        },
        ["ifort/2024.2.1"] = {
          Version = "2024.2.1",
          canonical = "2024.2.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/ifort/2024.2.1",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.000000002.000000001.*zfinal",
          wV = "000002024.000000002.000000001.*zfinal",
        },
      },
    },
    ifort32 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["ifort32/2024.0.0"] = {
          Version = "2024.0.0",
          canonical = "2024.0.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/ifort32/2024.0.0",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.*zfinal",
          wV = "000002024.*zfinal",
        },
        ["ifort32/2024.1.2"] = {
          Version = "2024.1.2",
          canonical = "2024.1.2",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/ifort32/2024.1.2",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.000000001.000000002.*zfinal",
          wV = "000002024.000000001.000000002.*zfinal",
        },
        ["ifort32/2024.2.1"] = {
          Version = "2024.2.1",
          canonical = "2024.2.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/ifort32/2024.2.1",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.000000002.000000001.*zfinal",
          wV = "000002024.000000002.000000001.*zfinal",
        },
      },
    },
    inspector = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["inspector/2024.2"] = {
          Version = "2024.2",
          canonical = "2024.2",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/inspector/2024.2",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/inspector/2024.2/etc/modulefiles/bin64"] = 1,
          },
          wV = "000002024.000000002.*zfinal",
          whatis = {
            "Intel(R) Inspector 2024.2",
          },
        },
      },
    },
    intel_ipp_intel64 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["intel_ipp_intel64/2021.10"] = {
          Description = "A library of multimedia and data processing optimized for Single Instruction, Multiple Data (SIMD) instructions.",
          Name = "IntelÂ® Integrated Performance Primitives Intel(R) 64 architecture",
          URL = "https://www.intel.com/content/www/us/en/developer/tools/oneapi/ipp.html",
          Version = "intel_ipp_intel64/2021.10",
          canonical = "2021.10",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/intel_ipp_intel64/2021.10",
          help = "",
          lpathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/ipp/2021.10/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002021.000000010.*zfinal",
          wV = "000002021.000000010.*zfinal",
          whatis = {
            "Name: IntelÂ® Integrated Performance Primitives Intel(R) 64 architecture"
            , "Version: intel_ipp_intel64/2021.10"
            , "Description: A library of multimedia and data processing optimized for Single Instruction, Multiple Data (SIMD) instructions."
            , "URL: https://www.intel.com/content/www/us/en/developer/tools/oneapi/ipp.html", "Dependencies: compiler-rt tbb",
          },
        },
      },
    },
    intel_ippcp_intel64 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["intel_ippcp_intel64/2021.9"] = {
          Version = "2021.9",
          canonical = "2021.9",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/intel_ippcp_intel64/2021.9",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002021.000000009.*zfinal",
          wV = "000002021.000000009.*zfinal",
        },
      },
    },
    itac = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["itac/2022.0"] = {
          Version = "2022.0",
          canonical = "2022.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/itac/2022.0",
          lpathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/itac/2022.0/slib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002022.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/itac/2022.0/bin"] = 1,
          },
          wV = "000002022.*zfinal",
          whatis = {
            "Intel(R) Trace Analyzer and Collector",
          },
        },
      },
    },
    mkl = {
      defaultA = {
        {
          barefn = ".version",
          defaultIdx = 4,
          fn = "/opt/ohpc/pub/moduledeps/oneapi/mkl/.version",
          fullName = "mkl/.version",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          value = "2024.0",
        },
      },
      defaultT = {
        barefn = ".version",
        defaultIdx = 4,
        fn = "/opt/ohpc/pub/moduledeps/oneapi/mkl/.version",
        fullName = "mkl/.version",
        mpath = "/opt/ohpc/pub/moduledeps/oneapi",
        value = "2024.0",
      },
      dirT = {},
      fileT = {
        ["mkl/2024.0"] = {
          Description = "Intel(R) oneAPI Math Kernel Library (oneMKL)",
          Name = "Intel(R) oneAPI Math Kernel Library",
          URL = "https://www.intel.com/content/www/us/en/developer/tools/oneapi/onemkl.html",
          Version = "mkl/2024.0",
          canonical = "2024.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/mkl/2024.0",
          help = [[module whatis mkl
]],
          lpathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/mkl/2024.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.*zfinal",
          wV = "^00002024.*zfinal",
          whatis = {
            "Name: Intel(R) oneAPI Math Kernel Library", "Version: mkl/2024.0"
            , "Description: Intel(R) oneAPI Math Kernel Library (oneMKL)"
            , "URL: https://www.intel.com/content/www/us/en/developer/tools/oneapi/onemkl.html", "Dependencies: tbb compiler-rt",
          },
        },
      },
    },
    mkl32 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["mkl32/2024.0"] = {
          Description = "Intel(R) oneAPI Math Kernel Library (oneMKL)",
          Name = "Intel(R) oneAPI Math Kernel Library",
          URL = "https://www.intel.com/content/www/us/en/developer/tools/oneapi/onemkl.html",
          Version = "mkl32/2024.0",
          canonical = "2024.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/mkl32/2024.0",
          help = [[module whatis mkl32
]],
          lpathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/mkl/2024.0/lib"] = 1,
            ["/opt/ohpc/pub/compiler/intel/oneapi/mkl/2024.0/lib32"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.*zfinal",
          wV = "000002024.*zfinal",
          whatis = {
            "Name: Intel(R) oneAPI Math Kernel Library", "Version: mkl32/2024.0"
            , "Description: Intel(R) oneAPI Math Kernel Library (oneMKL)"
            , "URL: https://www.intel.com/content/www/us/en/developer/tools/oneapi/onemkl.html", "Dependencies: tbb32 compiler-rt32",
          },
        },
      },
    },
    mpi = {
      defaultA = {
        {
          barefn = ".version",
          defaultIdx = 4,
          fn = "/opt/ohpc/pub/moduledeps/oneapi/mpi/.version",
          fullName = "mpi/.version",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          value = "2021.11",
        },
      },
      defaultT = {
        barefn = ".version",
        defaultIdx = 4,
        fn = "/opt/ohpc/pub/moduledeps/oneapi/mpi/.version",
        fullName = "mpi/.version",
        mpath = "/opt/ohpc/pub/moduledeps/oneapi",
        value = "2021.11",
      },
      dirT = {},
      fileT = {
        ["mpi/.2021.15"] = {
          Description = "Intel(R) MPI Library",
          Name = "Intel(R) MPI Library",
          URL = "https://www.intel.com/content/www/us/en/developer/tools/oneapi/mpi-library.html",
          Version = "oneapi/.2021.15",
          canonical = ".2021.15",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/mpi/.2021.15",
          lpathA = {
            ["/opt/ohpc/pub/lib"] = 1,
            ["/opt/ohpc/pub/opt/mpi/libfabric/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000000000.000002021.000000015.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/bin"] = 1,
            ["/opt/ohpc/pub/opt/mpi/libfabric/bin"] = 1,
          },
          wV = "000000000.000002021.000000015.*zfinal",
          whatis = {
            "Name: Intel(R) MPI Library", "Version: oneapi/.2021.15"
            , "Description: Intel(R) MPI Library"
            , "URL: https://www.intel.com/content/www/us/en/developer/tools/oneapi/mpi-library.html", "Dependencies: none",
          },
        },
        ["mpi/2021.11"] = {
          Description = "Intel(R) MPI Library",
          Name = "Intel(R) MPI Library",
          URL = "https://www.intel.com/content/www/us/en/developer/tools/oneapi/mpi-library.html",
          Version = "modulefiles/2021.11",
          canonical = "2021.11",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/mpi/2021.11",
          lpathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/mpi/2021.11/lib"] = 1,
            ["/opt/ohpc/pub/compiler/intel/oneapi/mpi/2021.11/opt/mpi/libfabric/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002021.000000011.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/mpi/2021.11/bin"] = 1,
            ["/opt/ohpc/pub/compiler/intel/oneapi/mpi/2021.11/opt/mpi/libfabric/bin"] = 1,
          },
          wV = "^00002021.000000011.*zfinal",
          whatis = {
            "Name: Intel(R) MPI Library", "Version: modulefiles/2021.11"
            , "Description: Intel(R) MPI Library"
            , "URL: https://www.intel.com/content/www/us/en/developer/tools/oneapi/mpi-library.html", "Dependencies: none",
          },
        },
        ["mpi/2021.15"] = {
          Description = "Intel(R) MPI Library",
          Name = "Intel(R) MPI Library",
          URL = "https://www.intel.com/content/www/us/en/developer/tools/oneapi/mpi-library.html",
          Version = "modulefiles/2021.15",
          canonical = "2021.15",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/mpi/2021.15",
          help = [[module whatis mpi
]],
          lpathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/mpi/2021.15/lib"] = 1,
            ["/opt/ohpc/pub/compiler/intel/oneapi/mpi/2021.15/opt/mpi/libfabric/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002021.000000015.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/mpi/2021.15/bin"] = 1,
            ["/opt/ohpc/pub/compiler/intel/oneapi/mpi/2021.15/opt/mpi/libfabric/bin"] = 1,
          },
          wV = "000002021.000000015.*zfinal",
          whatis = {
            "Name: Intel(R) MPI Library", "Version: modulefiles/2021.15"
            , "Description: Intel(R) MPI Library"
            , "URL: https://www.intel.com/content/www/us/en/developer/tools/oneapi/mpi-library.html", "Dependencies: none",
          },
        },
      },
    },
    oclfpga = {
      defaultA = {
        {
          barefn = ".version",
          defaultIdx = 4,
          fn = "/opt/ohpc/pub/moduledeps/oneapi/oclfpga/.version",
          fullName = "oclfpga/.version",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          value = "2024.0.0",
        },
      },
      defaultT = {
        barefn = ".version",
        defaultIdx = 4,
        fn = "/opt/ohpc/pub/moduledeps/oneapi/oclfpga/.version",
        fullName = "oclfpga/.version",
        mpath = "/opt/ohpc/pub/moduledeps/oneapi",
        value = "2024.0.0",
      },
      dirT = {},
      fileT = {
        ["oclfpga/2023.2.1"] = {
          Version = "2023.2.1",
          canonical = "2023.2.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/oclfpga/2023.2.1",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002023.000000002.000000001.*zfinal",
          wV = "000002023.000000002.000000001.*zfinal",
          whatis = {
            "Intel(R) oneAPI DPCPP compiler FPGA environment",
          },
        },
        ["oclfpga/2024.0.0"] = {
          Version = "2024.0.0",
          canonical = "2024.0.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/oclfpga/2024.0.0",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002024.*zfinal",
          wV = "^00002024.*zfinal",
        },
      },
    },
    tbb = {
      defaultA = {
        {
          barefn = ".version",
          defaultIdx = 4,
          fn = "/opt/ohpc/pub/moduledeps/oneapi/tbb/.version",
          fullName = "tbb/.version",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          value = "2021.11",
        },
      },
      defaultT = {
        barefn = ".version",
        defaultIdx = 4,
        fn = "/opt/ohpc/pub/moduledeps/oneapi/tbb/.version",
        fullName = "tbb/.version",
        mpath = "/opt/ohpc/pub/moduledeps/oneapi",
        value = "2021.11",
      },
      dirT = {},
      fileT = {
        ["tbb/2021.10.0"] = {
          Version = "2021.10.0",
          canonical = "2021.10.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/tbb/2021.10.0",
          lpathA = {
            ["/opt/ohpc/pub/compiler/intel/oneapi/tbb/2021.10.0/lib/intel64/gcc4.8"] = 1,
          },
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002021.000000010.*zfinal",
          wV = "000002021.000000010.*zfinal",
          whatis = {
            "Intel(R) oneAPI Threading Building Blocks for intel64.",
          },
        },
        ["tbb/2021.11"] = {
          Version = "2021.11",
          canonical = "2021.11",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/tbb/2021.11",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002021.000000011.*zfinal",
          wV = "^00002021.000000011.*zfinal",
        },
        ["tbb/2021.12"] = {
          Version = "2021.12",
          canonical = "2021.12",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/tbb/2021.12",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002021.000000012.*zfinal",
          wV = "000002021.000000012.*zfinal",
        },
        ["tbb/2021.13"] = {
          Version = "2021.13",
          canonical = "2021.13",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/tbb/2021.13",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002021.000000013.*zfinal",
          wV = "000002021.000000013.*zfinal",
        },
        ["tbb/2022.0"] = {
          Version = "2022.0",
          canonical = "2022.0",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/tbb/2022.0",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000002022.*zfinal",
          wV = "000002022.*zfinal",
        },
      },
    },
    umf = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["umf/0.9.1"] = {
          Version = "0.9.1",
          canonical = "0.9.1",
          fn = "/opt/ohpc/pub/moduledeps/oneapi/umf/0.9.1",
          mpath = "/opt/ohpc/pub/moduledeps/oneapi",
          pV = "000000000.000000009.000000001.*zfinal",
          wV = "000000000.000000009.000000001.*zfinal",
        },
      },
    },
  },
  ["/opt/ohpc/pub/modulefiles"] = {
    R = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["R/4.0.0"] = {
          Name = "R",
          Version = "4.0.0",
          canonical = "4.0.0",
          fn = "/opt/ohpc/pub/modulefiles/R/4.0.0",
          help = [[	Adds R to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/R/4.0.0/bin"] = 1,
          },
          wV = "000000004.*zfinal",
          whatis = {
            "Name: R", "Version: 4.0.0",
          },
        },
        ["R/4.1.0"] = {
          Name = "R",
          Version = "4.1.0",
          canonical = "4.1.0",
          fn = "/opt/ohpc/pub/modulefiles/R/4.1.0",
          help = [[	Adds R to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/R/4.1.0/bin"] = 1,
          },
          wV = "000000004.000000001.*zfinal",
          whatis = {
            "Name: R", "Version: 4.1.0",
          },
        },
        ["R/4.2.2"] = {
          Name = "R",
          Version = "4.2.2",
          canonical = "4.2.2",
          fn = "/opt/ohpc/pub/modulefiles/R/4.2.2",
          help = [[	Adds R to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000002.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/R/4.2.2/bin"] = 1,
          },
          wV = "000000004.000000002.000000002.*zfinal",
          whatis = {
            "Name: R", "Version: 4.2.2",
          },
        },
        ["R/4.3.2"] = {
          Name = "R",
          Version = "4.3.2",
          canonical = "4.3.2",
          fn = "/opt/ohpc/pub/modulefiles/R/4.3.2",
          help = [[	Adds R to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000003.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/R/4.3.2/bin"] = 1,
          },
          wV = "000000004.000000003.000000002.*zfinal",
          whatis = {
            "Name: R", "Version: 4.3.2",
          },
        },
        ["R/4.4.0"] = {
          Name = "R",
          Version = "4.4.0",
          canonical = "4.4.0",
          fn = "/opt/ohpc/pub/modulefiles/R/4.4.0",
          help = [[	Adds R to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/R/4.4.0/lib64"] = 1,
            ["/opt/ohpc/pub/apps/R/4.4.0/lib64/R/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/R/4.4.0/bin"] = 1,
          },
          wV = "000000004.000000004.*zfinal",
          whatis = {
            "Name: R", "Version: 4.4.0",
          },
        },
      },
    },
    abaqus = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["abaqus/.2023-am"] = {
          Name = "abaqus",
          Version = "2023-am",
          canonical = ".2023-am",
          fn = "/opt/ohpc/pub/modulefiles/abaqus/.2023-am",
          help = [[	Adds abaqus to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/abaqus/2023-am/VGR2023x/linux_a64/code/bin/SMAExternal/mpich/lib"] = 1,
            ["/opt/ohpc/pub/apps/abaqus/2023-am/VGR2023x/linux_a64/tools/SMApy/python2.7/lib"] = 1,
            ["/opt/ohpc/pub/apps/abaqus/2023-am/VGR2023x/linux_a64/tools/SMApy/python3.7/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000000.000002023.*am.*zfinal",
          wV = "000000000.000002023.*am.*zfinal",
          whatis = {
            "Name: abaqus", "Version: 2023-am",
          },
        },
        ["abaqus/2020-am"] = {
          Name = "abaqus",
          Version = "2020-am",
          canonical = "2020-am",
          fn = "/opt/ohpc/pub/modulefiles/abaqus/2020-am",
          help = [[	Adds abaqus to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/abaqus/2020-am/V6R2020x/linux_a64/code/bin/SMAExternal/mpich/lib"] = 1,
            ["/opt/ohpc/pub/apps/abaqus/2020-am/V6R2020x/linux_a64/tools/SMApy/python2.7/lib"] = 1,
            ["/opt/ohpc/pub/apps/abaqus/2020-am/V6R2020x/linux_a64/tools/SMApy/python3.7/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000002020.*am.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/abaqus/2020-am/Commands"] = 1,
          },
          wV = "000002020.*am.*zfinal",
          whatis = {
            "Name: abaqus", "Version: 2020-am",
          },
        },
        ["abaqus/2023-am"] = {
          Name = "abaqus",
          Version = "2023-am",
          canonical = "2023-am",
          fn = "/opt/ohpc/pub/modulefiles/abaqus/2023-am",
          help = [[	Adds abaqus to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/abaqus/2023-am/V6R2023x/linux_a64/code/bin/SMAExternal/mpich/lib"] = 1,
            ["/opt/ohpc/pub/apps/abaqus/2023-am/V6R2023x/linux_a64/tools/SMApy/python2.7/lib"] = 1,
            ["/opt/ohpc/pub/apps/abaqus/2023-am/V6R2023x/linux_a64/tools/SMApy/python3.7/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000002023.*am.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/abaqus/2023-am/Commands"] = 1,
          },
          wV = "000002023.*am.*zfinal",
          whatis = {
            "Name: abaqus", "Version: 2023-am",
          },
        },
      },
    },
    abyss = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["abyss/2.2.4"] = {
          Name = "abyss",
          Version = "2.2.4",
          canonical = "2.2.4",
          fn = "/opt/ohpc/pub/modulefiles/abyss/2.2.4",
          help = [[	Adds abyss to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000002.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/abyss/2.2.4/bin"] = 1,
          },
          wV = "000000002.000000002.000000004.*zfinal",
          whatis = {
            "Name: abyss", "Version: 2.2.4",
          },
        },
      },
    },
    admixture = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["admixture/1.3.0"] = {
          Name = "admixture",
          Version = "1.3.0",
          canonical = "1.3.0",
          fn = "/opt/ohpc/pub/modulefiles/admixture/1.3.0",
          help = [[	Adds admixture to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/admixture/1.3.0/bin"] = 1,
          },
          wV = "000000001.000000003.*zfinal",
          whatis = {
            "Name: admixture", "Version: 1.3.0",
          },
        },
      },
    },
    alphafold = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["alphafold/2.3.0"] = {
          Description = "'alphafold' is an alias for 'apptainer run -B .:/etc -B /contrib/datasets/alphafold/2.3.0:/data --pwd /app/alphafold /contrib/singularity/alphafold/alphafold-2.3.0.sif --data_dir=/data'",
          Name = "alphafold",
          Version = "2.3.0",
          canonical = "2.3.0",
          fn = "/opt/ohpc/pub/modulefiles/alphafold/2.3.0",
          help = [[	Adds alphafold to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/alphafold/2.3.0/bin"] = 1,
          },
          wV = "000000002.000000003.*zfinal",
          whatis = {
            "Name: alphafold", "Version: 2.3.0", "Description: 'alphafold' is an alias for 'apptainer run -B .:/etc -B /contrib/datasets/alphafold/2.3.0:/data --pwd /app/alphafold /contrib/singularity/alphafold/alphafold-2.3.0.sif --data_dir=/data'",
          },
        },
        ["alphafold/3.0.0"] = {
          Description = "'alphafold' is an alias for 'apptainer run -B /contrib/datasets/alphafold/3.0.0:/data /contrib/singularity/alphafold/alphafold-3.0.0.sif --db_dir=/data'",
          Name = "alphafold",
          Version = "3.0.0",
          canonical = "3.0.0",
          fn = "/opt/ohpc/pub/modulefiles/alphafold/3.0.0",
          help = [[	Adds alphafold to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/alphafold/3.0.0/bin"] = 1,
          },
          wV = "000000003.*zfinal",
          whatis = {
            "Name: alphafold", "Version: 3.0.0", "Description: 'alphafold' is an alias for 'apptainer run -B /contrib/datasets/alphafold/3.0.0:/data /contrib/singularity/alphafold/alphafold-3.0.0.sif --db_dir=/data'",
          },
        },
      },
    },
    amber = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["amber/24"] = {
          Name = "amber",
          Version = "24",
          canonical = "24",
          fn = "/opt/ohpc/pub/modulefiles/amber/24",
          help = [[	Adds amber to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/amber/24/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/c-ares-1.34.4-hb9d3cd8_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/fmt-11.0.2-h434a139_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/keyutils-1.6.1-h166bdaf_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/krb5-1.21.3-h659f571_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/libarchive-3.7.7-h4585015_3/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/libcurl-8.11.1-h332b0f4_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/libedit-3.1.20240808-pl5321h7949ede_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/libffi-3.4.2-h7f98852_5/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/liblief-0.14.1-h5888daf_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/libnghttp2-1.64.0-h161d5f1_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/libnsl-2.0.1-hd590300_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/libsodium-1.0.20-h4ab18f5_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/libsolv-0.7.30-h3509ff9_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/libsqlite-3.48.0-hee588c1_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/libssh2-1.11.1-hf672d98_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/libuuid-2.38.1-h0b41bf4_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/libxcrypt-4.4.36-hd590300_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/libxml2-2.13.5-h0d44e9d_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/lz4-c-1.10.0-h5888daf_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/lzo-2.10-hd590300_1001/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/ncurses-6.5-h2d0b736_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/openssl-3.4.0-h7b32b05_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/python-3.12.8-h9e4cc4f_1_cpython/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/readline-8.2-h8228510_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/reproc-14.2.5.post0-hb9d3cd8_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/reproc-cpp-14.2.5.post0-h5888daf_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/tk-8.6.13-noxft_h4845f30_101/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/yaml-0.2.5-h7f98852_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/yaml-cpp-0.8.0-h59595ed_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/zeromq-4.3.5-h3b0a872_7/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber/24/miniconda/pkgs/zstd-1.5.6-ha6fb4c9_0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000024.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/amber/24/bin"] = 1,
          },
          wV = "000000024.*zfinal",
          whatis = {
            "Name: amber", "Version: 24",
          },
        },
      },
    },
    ["amber-gpu"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["amber-gpu/24"] = {
          Name = "amber-gpu",
          Version = "24",
          canonical = "24",
          fn = "/opt/ohpc/pub/modulefiles/amber-gpu/24",
          help = [[	Adds amber-gpu to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/amber-gpu/24/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/lib/python3.12/site-packages/numpy/_core/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/c-ares-1.19.1-h5eee18b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/expat-2.6.4-h6a678d5_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/fmt-9.1.0-hdb19cb5_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/icu-73.1-h6a678d5_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/krb5-1.20.1-h143b758_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/libarchive-3.7.7-hfab0078_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/libcurl-8.11.1-hc9e6f67_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/libedit-3.1.20230828-h5eee18b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/libffi-3.4.4-h6a678d5_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/liblief-0.12.3-h6a678d5_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/libnghttp2-1.57.0-h2d74bed_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/libsodium-1.0.18-h7b6447c_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/libsolv-0.7.30-he621ea3_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/libssh2-1.11.1-h251f7ec_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/libuuid-1.41.5-h5eee18b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/libxml2-2.13.5-hfdd30dd_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/lz4-c-1.9.4-h6a678d5_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/ncurses-6.4-h6a678d5_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/openssl-3.0.16-h5eee18b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/pcre2-10.42-hebb0a14_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/python-3.12.9-h5148396_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/readline-8.2-h5eee18b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/reproc-14.2.4-h6a678d5_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/reproc-cpp-14.2.4-h6a678d5_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/simdjson-3.10.1-hdb19cb5_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/spdlog-1.11.0-hdb19cb5_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/sqlite-3.45.3-h5eee18b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/tk-8.6.14-h39e8969_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/xz-5.4.6-h5eee18b_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/yaml-0.2.5-h7b6447c_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/yaml-cpp-0.8.0-h6a678d5_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/zeromq-4.3.5-h6a678d5_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/zlib-1.2.13-h5eee18b_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/amber-gpu/24/miniconda/pkgs/zstd-1.5.6-hc292b87_0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000024.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/amber-gpu/24/bin"] = 1,
          },
          wV = "000000024.*zfinal",
          whatis = {
            "Name: amber-gpu", "Version: 24",
          },
        },
      },
    },
    amduprof = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["amduprof/5.0.1479"] = {
          Name = "amduprof",
          Version = "5.0.1479",
          canonical = "5.0.1479",
          fn = "/opt/ohpc/pub/modulefiles/amduprof/5.0.1479",
          help = [[	Adds amduprof to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/amduprof/5.0.1479/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000005.000000000.000001479.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/amduprof/5.0.1479/bin"] = 1,
          },
          wV = "000000005.000000000.000001479.*zfinal",
          whatis = {
            "Name: amduprof", "Version: 5.0.1479",
          },
        },
      },
    },
    anaconda = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["anaconda/2022.05"] = {
          Name = "anaconda",
          Version = "2022.05",
          canonical = "2022.05",
          fn = "/opt/ohpc/pub/modulefiles/anaconda/2022.05",
          help = [[	Adds anaconda to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/anaconda/2022.05/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/blosc-1.21.0-h8c45485_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/brotli-1.0.9-he6710b0_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/c-ares-1.18.1-h7f8727e_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/cfitsio-3.470-hf0d0db6_6/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/charls-2.2.0-h2531618_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/dbus-1.13.18-hb2f20db_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/expat-2.4.4-h295c915_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/fontconfig-2.13.1-h6c09931_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/freetype-2.11.0-h70c0345_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/glib-2.69.1-h4ff587b_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/gmp-6.2.1-h2531618_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/gst-plugins-base-1.14.0-h8213a91_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/gstreamer-1.14.0-h28cd5cc_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/icu-58.2-he6710b0_3/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/jpeg-9e-h7f8727e_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/krb5-1.19.2-hac12032_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/lcms2-2.12-h3be6417_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/libarchive-3.4.2-h62408e4_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/libcurl-7.82.0-h0b77cf5_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/libedit-3.1.20210910-h7f8727e_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/libffi-3.3-he6710b0_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/libidn2-2.3.2-h7f8727e_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/liblief-0.11.5-h295c915_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/libnghttp2-1.46.0-hce63b2e_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/libpng-1.6.37-hbc83047_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/libprotobuf-3.19.1-h4ff587b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/libsodium-1.0.18-h7b6447c_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/libssh2-1.10.0-h8f2d780_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/libtiff-4.2.0-h85742a9_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/libuuid-1.0.3-h7f8727e_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/libwebp-1.2.2-h55f646e_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/libwebp-base-1.2.2-h7f8727e_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/libxcb-1.14-h7b6447c_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/libxml2-2.9.12-h03d6c58_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/libxslt-1.1.34-hc22bd24_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/lz4-c-1.9.3-h295c915_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/lzo-2.10-h7b6447c_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/mpfr-4.0.2-hb69a4c5_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/mpich-3.3.2-hc856adb_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/ncurses-6.3-h7f8727e_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/oniguruma-6.9.7.1-h27cfd23_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/openjpeg-2.4.0-h3ad879b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/openssl-1.1.1n-h7f8727e_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/pcre-8.45-h295c915_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/python-3.9.12-h12debd9_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/qt-5.9.7-h5867ecd_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/readline-8.1.2-h7f8727e_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/snappy-1.1.9-h295c915_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/sqlite-3.38.2-hc218d9a_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/tk-8.6.11-h1ccaba5_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/unixodbc-2.3.9-h7b6447c_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/xz-5.2.5-h7b6447c_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/yaml-0.2.5-h7b6447c_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/zeromq-4.3.4-h2531618_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/zlib-1.2.12-h7f8727e_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2022.05/pkgs/zstd-1.4.9-haebb681_0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000002022.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/anaconda/2022.05/bin"] = 1,
          },
          wV = "000002022.000000005.*zfinal",
          whatis = {
            "Name: anaconda", "Version: 2022.05",
          },
        },
        ["anaconda/2024.06"] = {
          Name = "anaconda",
          Version = "2024.06",
          canonical = "2024.06",
          fn = "/opt/ohpc/pub/modulefiles/anaconda/2024.06",
          help = [[	Adds anaconda to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/anaconda/2024.06/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/abseil-cpp-20211102.0-hd4dd3e8_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/aom-3.6.0-h6a678d5_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/arrow-cpp-14.0.2-h374c478_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/aws-sdk-cpp-1.10.55-h721c034_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/blosc-1.21.3-h6a678d5_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/c-ares-1.19.1-h5eee18b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/c-blosc2-2.12.0-h80c7b02_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/cfitsio-3.470-h5893167_7/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/charls-2.2.0-h2531618_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/cyrus-sasl-2.1.28-h52b45da_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/dav1d-1.2.1-h5eee18b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/dbus-1.13.18-hb2f20db_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/expat-2.6.2-h6a678d5_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/fmt-9.1.0-hdb19cb5_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/fontconfig-2.14.1-h4c34cd2_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/freetype-2.12.1-h4a9f257_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/gflags-2.2.2-h6a678d5_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/glog-0.5.0-h6a678d5_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/grpc-cpp-1.48.2-he1ff14a_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/gst-plugins-base-1.14.1-h6a678d5_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/gstreamer-1.14.1-h5eee18b_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/icu-73.1-h6a678d5_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/jpeg-9e-h5eee18b_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/krb5-1.20.1-h143b758_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/lcms2-2.12-h3be6417_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libarchive-3.6.2-h6ac8c49_3/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libavif-0.11.1-h5eee18b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libbrotlicommon-1.0.9-h5eee18b_8/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libbrotlidec-1.0.9-h5eee18b_8/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libbrotlienc-1.0.9-h5eee18b_8/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libcups-2.4.2-h2d74bed_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libcurl-8.7.1-h251f7ec_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libdeflate-1.17-h5eee18b_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libedit-3.1.20230828-h5eee18b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libevent-2.1.12-hdbd6064_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libffi-3.4.4-h6a678d5_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libglib-2.78.4-hdc74915_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/liblief-0.12.3-h6a678d5_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libnghttp2-1.57.0-h2d74bed_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libpng-1.6.39-h5eee18b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libpq-12.17-hdbd6064_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libprotobuf-3.20.3-he621ea3_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libsodium-1.0.18-h7b6447c_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libsolv-0.7.24-he621ea3_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libssh2-1.11.0-h251f7ec_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libthrift-0.15.0-h1795dd8_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libtiff-4.5.1-h6a678d5_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libuuid-1.41.5-h5eee18b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libwebp-base-1.3.2-h5eee18b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libxcb-1.15-h7f8727e_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libxkbcommon-1.0.1-h5eee18b_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libxml2-2.10.4-hfdd30dd_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/libxslt-1.1.37-h5eee18b_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/lz4-c-1.9.4-h6a678d5_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/lzo-2.10-h7b6447c_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/mysql-5.7.24-h721c034_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/ncurses-6.4-h6a678d5_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/nspr-4.35-h6a678d5_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/nss-3.89.1-h6a678d5_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/oniguruma-6.9.7.1-h27cfd23_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/openjpeg-2.4.0-h3ad879b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/openssl-3.0.14-h5eee18b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/pcre2-10.42-hebb0a14_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/python-3.12.4-h5148396_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/qt-main-5.15.2-h53bd1ea_10/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/qt-webengine-5.15.9-h9ab4d14_7/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/re2-2022.04.01-h295c915_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/readline-8.2-h5eee18b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/reproc-14.2.4-h6a678d5_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/reproc-cpp-14.2.4-h6a678d5_2/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/sqlite-3.45.3-h5eee18b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/tk-8.6.14-h39e8969_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/unixodbc-2.3.11-h5eee18b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/xz-5.4.6-h5eee18b_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/yaml-0.2.5-h7b6447c_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/yaml-cpp-0.8.0-h6a678d5_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/zeromq-4.3.5-h6a678d5_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/zlib-1.2.13-h5eee18b_1/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/zlib-ng-2.0.7-h5eee18b_0/lib"] = 1,
            ["/opt/ohpc/pub/apps/anaconda/2024.06/pkgs/zstd-1.5.5-hc292b87_2/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000002024.000000006.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/anaconda/2024.06/bin"] = 1,
          },
          wV = "000002024.000000006.*zfinal",
          whatis = {
            "Name: anaconda", "Version: 2024.06",
          },
        },
      },
    },
    anchorwave = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["anchorwave/1.2.1"] = {
          Name = "anchorwave",
          Version = "1.2.1",
          canonical = "1.2.1",
          fn = "/opt/ohpc/pub/modulefiles/anchorwave/1.2.1",
          help = [[	Adds anchorwave to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000002.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/anchorwave/1.2.1/bin"] = 1,
          },
          wV = "000000001.000000002.000000001.*zfinal",
          whatis = {
            "Name: anchorwave", "Version: 1.2.1",
          },
        },
      },
    },
    ansys = {
      defaultA = {
        {
          barefn = ".version",
          defaultIdx = 4,
          fn = "/opt/ohpc/pub/modulefiles/ansys/.version",
          fullName = "ansys/.version",
          mpath = "/opt/ohpc/pub/modulefiles",
          value = "24.1",
        },
      },
      defaultT = {
        barefn = ".version",
        defaultIdx = 4,
        fn = "/opt/ohpc/pub/modulefiles/ansys/.version",
        fullName = "ansys/.version",
        mpath = "/opt/ohpc/pub/modulefiles",
        value = "24.1",
      },
      dirT = {},
      fileT = {
        ["ansys/22.2"] = {
          Name = "ansys",
          Version = "22.2",
          canonical = "22.2",
          fn = "/opt/ohpc/pub/modulefiles/ansys/22.2",
          help = [[	Adds ansys to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/CEI/apex222/machines/linux_2.6_64/Mesa-13.0.5/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/CEI/apex222/machines/linux_2.6_64/Python-3.7.4/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/CEI/apex222/machines/linux_2.6_64/multiport/mpi/lnamd64/openmpi/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/CEI/apex222/machines/linux_2.6_64/qt-5.12.6/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/CFX/tools/multiport/mpi/lnamd64/openmpi/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/Icepak/icepak22.2/lib/tcl8.5.19/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/Icepak/icepak22.2/lib/tk8.5.19/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/Linux64/CMA/lib/openmpi/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/Linux64/SystemCoupling/runTime/linx64/cnlauncher/fluent/fluent22.1.0/multiport/mpi/lnamd64/openmpi/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/Linux64/common/fluent_mpi/multiport/mpi/lnamd64/intel21/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/Linux64/common/mono/Linux64/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/Linux64/fluent/fluent22.2.0/multiport/mpi/lnamd64/openmpi/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/Linux64/fluent/fluent22.2.0/utility/raytracing/multiport/mpi/lnamd64/openmpi/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/Linux64/fluent/fluent22.2.0/utility/viewfac/multiport/mpi/lnamd64/openmpi/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/Linux64/helic/share/python/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/Linux64/helic/share/ruby/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/Linux64/icepak/lib/tcl8.5.19/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/Linux64/mechanical/v222/Tools/mono/Linux64/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/Linux64/mechanical/v222/commonfiles/MPI/Intel/2021.5.0/linx64/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/Linux64/mechanical/v222/tp/hdf5/1_10_5/linx64/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/Linux64/mechanical/v222/tp/openssl/1.1.1/linx64/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/SystemCoupling/runTime/linx64/cnlauncher/fluent/fluent22.2.0/multiport/mpi/lnamd64/openmpi/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/Tools/mono/Linux64/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/ansys/syslib/CPython/3_7/linx64/Release/python/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/commonfiles/MPI/Intel/2021.5.0/linx64/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/commonfiles/MPI/Intel/2021.6.0/linx64/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/commonfiles/MPI/OpenMPI/4.0.5/linx64/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/fluent/fluent22.2.0/multiport/mpi/lnamd64/openmpi/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/fluent/fluent22.2.0/utility/raytracing/multiport/mpi/lnamd64/openmpi/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/fluent/fluent22.2.0/utility/viewfac/multiport/mpi/lnamd64/openmpi/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/optiSLang/lib/python3.7/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/optiSLang/scripting/algorithms/FFNet_env/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/optiSLang/scripting/algorithms/stochos_env/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/tp/cpprestsdk/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/tp/hdf5/1_10_5/linx64/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/tp/openssl/1.1.1/linx64/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/tp/qt/5.9.6/linx64/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/tp/zlib/1_2_11/linx64/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/tp/zlib/1_2_11/linx64_ZPREFIX/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000022.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/ACP"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/CEI/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/CFD-Post/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/CFX/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/EKM/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/Framework/bin/Linux64"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/Icepak/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/RSM/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/SystemCoupling/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/TurboGrid/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/aisol/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/ansys/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/autodyn/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/fensapice/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/fluent/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/icemcfd/linux64_amd/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/22.2/v222/polyflow/bin"] = 1,
          },
          wV = "000000022.000000002.*zfinal",
          whatis = {
            "Name: ansys", "Version: 22.2",
          },
        },
        ["ansys/24.1"] = {
          Name = "ansys",
          Version = "24.1",
          canonical = "24.1",
          fn = "/opt/ohpc/pub/modulefiles/ansys/24.1",
          help = [[	Adds ansys to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/CEI/apex241/machines/linux_2.6_64/Mesa-13.0.5/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/CEI/apex241/machines/linux_2.6_64/Python-3.10.9/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/CEI/apex241/machines/linux_2.6_64/multiport/mpi/lnamd64/openmpi/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/CEI/apex241/machines/linux_2.6_64/qt-5.12.6/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/CFD-Post/tools/openssl-1.1.1w/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/CFX/tools/multiport/mpi/lnamd64/openmpi/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/CFX/tools/openssl-1.1.1w/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/Icepak/icepak24.1/lib/tcl8.5.19/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/Icepak/icepak24.1/lib/tk8.5.19/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/SystemCoupling/runTime/linx64/cnlauncher/fluent/fluent24.1.0/multiport/mpi/lnamd64/openmpi/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/Tools/mono/Linux64/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/TurboGrid/tools/openssl-1.1.1w/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/ansys/syslib/CPython/3_10/linx64/Release/python/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/commonfiles/CFX/tools/openssl-1.1.1w/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/commonfiles/CPython/3_10/linx64/Release/python/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/commonfiles/MPI/Intel/2021.10.0/linx64/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/commonfiles/MPI/Intel/2021.8.0/linx64/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/commonfiles/MPI/OpenMPI/4.0.5/linx64/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/fluent/fluent24.1.0/multiport/mpi/lnamd64/openmpi/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/optiSLang/lib/python3.10/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/optiSLang/web_service/tools/openresty/luajit/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/tp/cpprestsdk/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/tp/openssl/1.1.1/linx64/lib"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/tp/qt/5.9.6/linx64/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000024.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/ACP"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/CEI/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/CFD-Post/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/CFX/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/EKM/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/Framework/bin/Linux64"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/Icepak/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/RSM/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/SystemCoupling/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/TurboGrid/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/aisol/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/ansys/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/autodyn/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/fensapice/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/fluent/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/icemcfd/linux64_amd/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/24.1/v241/polyflow/bin"] = 1,
          },
          wV = "^00000024.000000001.*zfinal",
          whatis = {
            "Name: ansys", "Version: 24.1",
          },
        },
        ["ansys/25.1"] = {
          Name = "ansys",
          Version = "25.1",
          canonical = "25.1",
          fn = "/opt/ohpc/pub/modulefiles/ansys/25.1",
          help = [[	Adds ansys to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000025.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/ansys/25.1/v251/ACP"] = 1,
            ["/opt/ohpc/pub/apps/ansys/25.1/v251/CEI/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/25.1/v251/CFD-Post/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/25.1/v251/CFX/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/25.1/v251/EKM/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/25.1/v251/Framework/bin/Linux64"] = 1,
            ["/opt/ohpc/pub/apps/ansys/25.1/v251/Icepak/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/25.1/v251/RSM/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/25.1/v251/SystemCoupling/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/25.1/v251/TurboGrid/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/25.1/v251/aisol/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/25.1/v251/ansys/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/25.1/v251/autodyn/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/25.1/v251/fensapice/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/25.1/v251/fluent/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/25.1/v251/icemcfd/linux64_amd/bin"] = 1,
            ["/opt/ohpc/pub/apps/ansys/25.1/v251/polyflow/bin"] = 1,
          },
          wV = "000000025.000000001.*zfinal",
          whatis = {
            "Name: ansys", "Version: 25.1",
          },
        },
      },
    },
    ant = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["ant/1.10.8"] = {
          Name = "ant",
          Version = "1.10.8",
          canonical = "1.10.8",
          fn = "/opt/ohpc/pub/modulefiles/ant/1.10.8",
          help = [[	Adds ant to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/ant/1.10.8/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000010.000000008.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/ant/1.10.8/bin"] = 1,
          },
          wV = "000000001.000000010.000000008.*zfinal",
          whatis = {
            "Name: ant", "Version: 1.10.8", "Apache Ant is a Java library using Java 8", " and command line tool to help build software",
          },
        },
      },
    },
    antlr = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["antlr/.2.7.7"] = {
          Name = "antlr",
          Version = "2.7.7",
          canonical = ".2.7.7",
          fn = "/opt/ohpc/pub/modulefiles/antlr/.2.7.7",
          help = [[	Adds antlr to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/antlr/2.7.7/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000000.000000002.000000007.000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/antlr/2.7.7/bin"] = 1,
          },
          wV = "000000000.000000002.000000007.000000007.*zfinal",
          whatis = {
            "Name: antlr", "Version: 2.7.7", "ANother Tool for Language Recognition",
          },
        },
      },
    },
    argtable2 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["argtable2/2.13"] = {
          Name = "argtable2",
          Version = "2.13",
          canonical = "2.13",
          fn = "/opt/ohpc/pub/modulefiles/argtable2/2.13",
          help = [[	Adds argtable2 to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/argtable2/2.13/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000013.*zfinal",
          wV = "000000002.000000013.*zfinal",
          whatis = {
            "Name: argtable2", "Version: 2.13",
          },
        },
      },
    },
    aria2 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["aria2/1.36.0"] = {
          Name = "aria2",
          Version = "1.36.0",
          canonical = "1.36.0",
          fn = "/opt/ohpc/pub/modulefiles/aria2/1.36.0",
          help = [[	Adds aria2 to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000036.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/aria2/1.36.0/bin"] = 1,
          },
          wV = "000000001.000000036.*zfinal",
          whatis = {
            "Name: aria2", "Version: 1.36.0",
          },
        },
      },
    },
    atlas = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["atlas/3.10.3"] = {
          Name = "atlas",
          Version = "3.10.3",
          canonical = "3.10.3",
          fn = "/opt/ohpc/pub/modulefiles/atlas/3.10.3",
          help = [[	Adds atlas to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/atlas/3.10.3/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000010.000000003.*zfinal",
          wV = "000000003.000000010.000000003.*zfinal",
          whatis = {
            "Name: atlas", "Version: 3.10.3", "Built with system gcc 4.8.5",
          },
        },
      },
    },
    augustus = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["augustus/3.3.3"] = {
          Name = "augustus",
          Version = "3.3.3",
          canonical = "3.3.3",
          fn = "/opt/ohpc/pub/modulefiles/augustus/3.3.3",
          help = [[	Adds augustus to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000003.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/augustus/3.3.3/bin"] = 1,
          },
          wV = "000000003.000000003.000000003.*zfinal",
          whatis = {
            "Name: augustus", "Version: 3.3.3",
          },
        },
      },
    },
    autotools = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        autotools = {
          Category = "utility, developer support",
          Description = "Developer utilities",
          Name = "GNU Autotools",
          Version = "1.0",
          canonical = "",
          fn = "/opt/ohpc/pub/modulefiles/autotools",
          help = [[This module loads the autotools collection to provide recent
versions of autoconf, automake, and libtool.
 
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "M.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/utils/autotools/bin"] = 1,
          },
          wV = "M.*zfinal",
          whatis = {
            "Name: GNU Autotools", "Version: 1.0", "Category: utility, developer support"
            , "Keywords: System, Utility", "Description: Developer utilities",
          },
        },
      },
    },
    ["aws-cli"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["aws-cli/2"] = {
          Name = "aws-cli",
          Version = "2",
          canonical = "2",
          fn = "/opt/ohpc/pub/modulefiles/aws-cli/2",
          help = [[	Adds aws-cli to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/aws-cli/2/bin"] = 1,
          },
          wV = "000000002.*zfinal",
          whatis = {
            "Name: aws-cli", "Version: 2", "AWS Command Line Interface",
          },
        },
      },
    },
    bamtools = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["bamtools/2.5.2"] = {
          Name = "bamtools",
          Version = "2.5.2",
          canonical = "2.5.2",
          fn = "/opt/ohpc/pub/modulefiles/bamtools/2.5.2",
          help = [[	Adds bamtools to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/bamtools/2.5.2/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000005.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/bamtools/2.5.2/bin"] = 1,
          },
          wV = "000000002.000000005.000000002.*zfinal",
          whatis = {
            "Name: bamtools", "Version: 2.5.2",
          },
        },
      },
    },
    bcftools = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["bcftools/1.10.2"] = {
          Name = "bcftools",
          Version = "1.10.2",
          canonical = "1.10.2",
          fn = "/opt/ohpc/pub/modulefiles/bcftools/1.10.2",
          help = [[	Adds bcftools to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000010.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/bcftools/1.10.2/bin"] = 1,
          },
          wV = "000000001.000000010.000000002.*zfinal",
          whatis = {
            "Name: bcftools", "Version: 1.10.2",
          },
        },
        ["bcftools/1.15.1"] = {
          Name = "bcftools",
          Version = "1.15.1",
          canonical = "1.15.1",
          fn = "/opt/ohpc/pub/modulefiles/bcftools/1.15.1",
          help = [[	Adds bcftools to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000015.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/bcftools/1.15.1/bin"] = 1,
          },
          wV = "000000001.000000015.000000001.*zfinal",
          whatis = {
            "Name: bcftools", "Version: 1.15.1",
          },
        },
        ["bcftools/1.19"] = {
          Name = "bcftools",
          Version = "1.19",
          canonical = "1.19",
          fn = "/opt/ohpc/pub/modulefiles/bcftools/1.19",
          help = [[	Adds bcftools to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000019.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/bcftools/1.19/bin"] = 1,
          },
          wV = "000000001.000000019.*zfinal",
          whatis = {
            "Name: bcftools", "Version: 1.19",
          },
        },
      },
    },
    bcl2fastq2 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["bcl2fastq2/2.20.0"] = {
          Name = "bcl2fastq2",
          Version = "2.20.0",
          canonical = "2.20.0",
          fn = "/opt/ohpc/pub/modulefiles/bcl2fastq2/2.20.0",
          help = [[	Adds bcl2fastq2 to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/bcl2fastq2/2.20.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000020.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/bcl2fastq2/2.20.0/bin"] = 1,
          },
          wV = "000000002.000000020.*zfinal",
          whatis = {
            "Name: bcl2fastq2", "Version: 2.20.0",
          },
        },
      },
    },
    ["beagle-lib"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["beagle-lib/4.0.1"] = {
          Name = "beagle-lib",
          Version = "4.0.1",
          canonical = "4.0.1",
          fn = "/opt/ohpc/pub/modulefiles/beagle-lib/4.0.1",
          help = [[	Adds beagle-lib to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/beagle-lib/4.0.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000000.000000001.*zfinal",
          wV = "000000004.000000000.000000001.*zfinal",
          whatis = {
            "Name: beagle-lib", "Version: 4.0.1",
          },
        },
      },
    },
    bedops = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["bedops/2.4.41"] = {
          Name = "bedops",
          Version = "2.4.41",
          canonical = "2.4.41",
          fn = "/opt/ohpc/pub/modulefiles/bedops/2.4.41",
          help = [[	Adds bedops to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000004.000000041.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/bedops/2.4.41/bin"] = 1,
          },
          wV = "000000002.000000004.000000041.*zfinal",
          whatis = {
            "Name: bedops", "Version: 2.4.41",
          },
        },
      },
    },
    bedtools = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["bedtools/2.31.1"] = {
          Name = "bedtools",
          Version = "2.31.1",
          canonical = "2.31.1",
          fn = "/opt/ohpc/pub/modulefiles/bedtools/2.31.1",
          help = [[	Adds bedtools to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000031.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/bedtools/2.31.1/bin"] = 1,
          },
          wV = "000000002.000000031.000000001.*zfinal",
          whatis = {
            "Name: bedtools", "Version: 2.31.1",
          },
        },
      },
    },
    bismark = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["bismark/0.15.0"] = {
          Name = "bismark",
          Version = "0.15.0",
          canonical = "0.15.0",
          fn = "/opt/ohpc/pub/modulefiles/bismark/0.15.0",
          help = [[	Adds bismark to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000000.000000015.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/bismark/0.15.0"] = 1,
          },
          wV = "000000000.000000015.*zfinal",
          whatis = {
            "Name: bismark", "Version: 0.15.0",
          },
        },
        ["bismark/0.24.2"] = {
          Name = "bismark",
          Version = "0.24.2",
          canonical = "0.24.2",
          fn = "/opt/ohpc/pub/modulefiles/bismark/0.24.2",
          help = [[	Adds bismark to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000000.000000024.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/bismark/0.24.2"] = 1,
          },
          wV = "000000000.000000024.000000002.*zfinal",
          whatis = {
            "Name: bismark", "Version: 0.24.2",
          },
        },
      },
    },
    bison = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["bison/3.8"] = {
          Name = "bison",
          Version = "3.8",
          canonical = "3.8",
          fn = "/opt/ohpc/pub/modulefiles/bison/3.8",
          help = [[	Adds bison to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/bison/3.8/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000008.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/bison/3.8/bin"] = 1,
          },
          wV = "000000003.000000008.*zfinal",
          whatis = {
            "Name: bison", "Version: 3.8", "A general purpose parser generator",
          },
        },
      },
    },
    blast = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["blast/2.13.0"] = {
          Name = "blast",
          Version = "2.13.0",
          canonical = "2.13.0",
          fn = "/opt/ohpc/pub/modulefiles/blast/2.13.0",
          help = [[	Adds blast to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/blast/2.13.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000013.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/blast/2.13.0/bin"] = 1,
          },
          wV = "000000002.000000013.*zfinal",
          whatis = {
            "Name: blast", "Version: 2.13.0",
          },
        },
        ["blast/2.15.0"] = {
          Name = "blast",
          Version = "2.15.0",
          canonical = "2.15.0",
          fn = "/opt/ohpc/pub/modulefiles/blast/2.15.0",
          help = [[	Adds blast to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/blast/2.15.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000015.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/blast/2.15.0/bin"] = 1,
          },
          wV = "000000002.000000015.*zfinal",
          whatis = {
            "Name: blast", "Version: 2.15.0",
          },
        },
      },
    },
    bowtie = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["bowtie/1.3.1"] = {
          Name = "bowtie",
          Version = "1.3.1",
          canonical = "1.3.1",
          fn = "/opt/ohpc/pub/modulefiles/bowtie/1.3.1",
          help = [[	Adds bowtie to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000003.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/bowtie/1.3.1"] = 1,
          },
          wV = "000000001.000000003.000000001.*zfinal",
          whatis = {
            "Name: bowtie", "Version: 1.3.1",
          },
        },
      },
    },
    bowtie2 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["bowtie2/2.4.1"] = {
          Name = "bowtie2",
          Version = "2.4.1",
          canonical = "2.4.1",
          fn = "/opt/ohpc/pub/modulefiles/bowtie2/2.4.1",
          help = [[	Adds bowtie2 to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000004.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/bowtie2/2.4.1"] = 1,
          },
          wV = "000000002.000000004.000000001.*zfinal",
          whatis = {
            "Name: bowtie2", "Version: 2.4.1",
          },
        },
        ["bowtie2/2.5.3"] = {
          Name = "bowtie2",
          Version = "2.5.3",
          canonical = "2.5.3",
          fn = "/opt/ohpc/pub/modulefiles/bowtie2/2.5.3",
          help = [[	Adds bowtie2 to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000005.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/bowtie2/2.5.3"] = 1,
          },
          wV = "000000002.000000005.000000003.*zfinal",
          whatis = {
            "Name: bowtie2", "Version: 2.5.3",
          },
        },
      },
    },
    bwa = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["bwa/0.7.18"] = {
          Name = "bwa",
          Version = "0.7.18",
          canonical = "0.7.18",
          fn = "/opt/ohpc/pub/modulefiles/bwa/0.7.18",
          help = [[	Adds bwa to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000000.000000007.000000018.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/bwa/0.7.18/bin"] = 1,
          },
          wV = "000000000.000000007.000000018.*zfinal",
          whatis = {
            "Name: bwa", "Version: 0.7.18",
          },
        },
      },
    },
    ["caffe/nvidia"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["caffe/nvidia/0.17.3"] = {
          Description = "Typical usage - 'caffe caffe train ...'",
          Name = "Caffe aka NVCaffe",
          Version = "nvidia-caffe.20.01-py3",
          canonical = "0.17.3",
          fn = "/opt/ohpc/pub/modulefiles/caffe/nvidia/0.17.3",
          help = "",
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000000.000000017.000000003.*zfinal",
          wV = "000000000.000000017.000000003.*zfinal",
          whatis = {
            "Name: Caffe aka NVCaffe", "Version: nvidia-caffe.20.01-py3"
            , "Description: 'caffe' is an alias for 'singularity exec --nv /contrib/singularity/nvidia/nvidia-caffe.20.01-py3.simg python'", "Description: Typical usage - 'caffe caffe train ...'",
          },
        },
      },
    },
    ["caffe2/nvidia"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["caffe2/nvidia/2.18.08"] = {
          Name = "caffe2/nvidia",
          Version = "2.18.08",
          canonical = "2.18.08",
          fn = "/opt/ohpc/pub/modulefiles/caffe2/nvidia/2.18.08",
          help = [[	Adds caffe2/nvidia to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000018.000000008.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/caffe2/nvidia/2.18.08"] = 1,
          },
          wV = "000000002.000000018.000000008.*zfinal",
          whatis = {
            "Name: caffe2/nvidia", "Version: 2.18.08",
          },
        },
      },
    },
    canu = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["canu/2.0"] = {
          Name = "canu",
          Version = "2.0",
          canonical = "2.0",
          fn = "/opt/ohpc/pub/modulefiles/canu/2.0",
          help = [[	Adds canu to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/canu/2.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/canu/2.0/bin"] = 1,
          },
          wV = "000000002.*zfinal",
          whatis = {
            "Name: canu", "Version: 2.0",
          },
        },
      },
    },
    ccp4 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["ccp4/7.1"] = {
          Name = "ccp4",
          Version = "7.1",
          canonical = "7.1",
          fn = "/opt/ohpc/pub/modulefiles/ccp4/7.1",
          help = [[	Adds ccp4 to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/ccp4/7.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000007.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/ccp4/7.1/bin"] = 1,
          },
          wV = "000000007.000000001.*zfinal",
          whatis = {
            "Name: ccp4", "Version: 7.1",
          },
        },
      },
    },
    cellranger = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["cellranger/7.0.0"] = {
          Name = "cellranger",
          Version = "7.0.0",
          canonical = "7.0.0",
          fn = "/opt/ohpc/pub/modulefiles/cellranger/7.0.0",
          help = [[	Adds cellranger to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/cellranger/7.0.0/external/anaconda/lib"] = 1,
            ["/opt/ohpc/pub/apps/cellranger/7.0.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/cellranger/7.0.0/bin"] = 1,
          },
          wV = "000000007.*zfinal",
          whatis = {
            "Name: cellranger", "Version: 7.0.0",
          },
        },
        ["cellranger/9.0.1"] = {
          Name = "cellranger",
          Version = "9.0.1",
          canonical = "9.0.1",
          fn = "/opt/ohpc/pub/modulefiles/cellranger/9.0.1",
          help = [[	Adds cellranger to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/cellranger/9.0.1/external/anaconda/lib"] = 1,
            ["/opt/ohpc/pub/apps/cellranger/9.0.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000009.000000000.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/cellranger/9.0.1/bin"] = 1,
          },
          wV = "000000009.000000000.000000001.*zfinal",
          whatis = {
            "Name: cellranger", "Version: 9.0.1",
          },
        },
      },
    },
    centrifuge = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["centrifuge/1.0.4"] = {
          Name = "centrifuge",
          Version = "1.0.4",
          canonical = "1.0.4",
          fn = "/opt/ohpc/pub/modulefiles/centrifuge/1.0.4",
          help = [[	Adds centrifuge to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000000.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/centrifuge/1.0.4/bin"] = 1,
          },
          wV = "000000001.000000000.000000004.*zfinal",
          whatis = {
            "Name: centrifuge", "Version: 1.0.4",
          },
        },
      },
    },
    cfitsio = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["cfitsio/4.2.0"] = {
          Name = "cfitsio",
          Version = "4.2.0",
          canonical = "4.2.0",
          fn = "/opt/ohpc/pub/modulefiles/cfitsio/4.2.0",
          help = [[	Adds cfitsio to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/cfitsio/4.2.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000002.*zfinal",
          wV = "000000004.000000002.*zfinal",
          whatis = {
            "Name: cfitsio", "Version: 4.2.0",
          },
        },
      },
    },
    chapel = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["chapel/2.1.0"] = {
          Name = "chapel",
          Version = "2.1.0",
          canonical = "2.1.0",
          fn = "/opt/ohpc/pub/modulefiles/chapel/2.1.0",
          help = [[	Adds chapel to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/chapel/2.1.0/lib"] = 1,
            ["/opt/ohpc/pub/apps/chapel/2.1.0/lib/chapel/2.1/third-party/hwloc/install/linux64-x86_64-native-llvm-none-flat/lib"] = 1,
            ["/opt/ohpc/pub/apps/chapel/2.1.0/lib/chapel/2.1/third-party/re2/install/linux64-x86_64-native-llvm-none/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/chapel/2.1.0/bin"] = 1,
          },
          wV = "000000002.000000001.*zfinal",
          whatis = {
            "Name: chapel", "Version: 2.1.0",
          },
        },
      },
    },
    chimera = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["chimera/1.16"] = {
          Name = "chimera",
          Version = "1.16",
          canonical = "1.16",
          fn = "/opt/ohpc/pub/modulefiles/chimera/1.16",
          help = [[	Adds chimera to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/chimera/1.16/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000016.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/chimera/1.16/bin"] = 1,
          },
          wV = "000000001.000000016.*zfinal",
          whatis = {
            "Name: chimera", "Version: 1.16",
          },
        },
      },
    },
    ["clustal-omega"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["clustal-omega/1.2.4"] = {
          Name = "clustal-omega",
          Version = "1.2.4",
          canonical = "1.2.4",
          fn = "/opt/ohpc/pub/modulefiles/clustal-omega/1.2.4",
          help = [[	Adds clustal-omega to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/clustal-omega/1.2.4/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000002.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/clustal-omega/1.2.4/bin"] = 1,
          },
          wV = "000000001.000000002.000000004.*zfinal",
          whatis = {
            "Name: clustal-omega", "Version: 1.2.4",
          },
        },
      },
    },
    cmake = {
      defaultA = {
        {
          barefn = ".version",
          defaultIdx = 4,
          fn = "/opt/ohpc/pub/modulefiles/cmake/.version",
          fullName = "cmake/.version",
          mpath = "/opt/ohpc/pub/modulefiles",
          value = "3.28.3",
        },
      },
      defaultT = {
        barefn = ".version",
        defaultIdx = 4,
        fn = "/opt/ohpc/pub/modulefiles/cmake/.version",
        fullName = "cmake/.version",
        mpath = "/opt/ohpc/pub/modulefiles",
        value = "3.28.3",
      },
      dirT = {},
      fileT = {
        ["cmake/3.28.3"] = {
          Name = "cmake",
          Version = "3.28.3",
          canonical = "3.28.3",
          fn = "/opt/ohpc/pub/modulefiles/cmake/3.28.3",
          help = [[	Adds cmake to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000028.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/cmake/3.28.3/bin"] = 1,
          },
          wV = "^00000003.000000028.000000003.*zfinal",
          whatis = {
            "Name: cmake", "Version: 3.28.3",
          },
        },
        ["cmake/4.0.0"] = {
          Category = "utility, developer support",
          Description = "CMake is an open-source, cross-platform family of tools designed to build, test and package software.",
          Name = "cmake",
          Version = "4.0.0",
          canonical = "4.0.0",
          fn = "/opt/ohpc/pub/modulefiles/cmake/4.0.0",
          help = [[ 
This module loads the cmake utility

Version 4.0.0

]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/utils/cmake/4.0.0/bin"] = 1,
          },
          wV = "000000004.*zfinal",
          whatis = {
            "Name: cmake", "Version: 4.0.0", "Category: utility, developer support"
            , "Keywords: System, Utility"
            , "Description: CMake is an open-source, cross-platform family of tools designed to build, test and package software.", "URL https://cmake.org/",
          },
        },
        ["cmake/4.0.1"] = {
          Name = "cmake",
          Version = "4.0.1",
          canonical = "4.0.1",
          fn = "/opt/ohpc/pub/modulefiles/cmake/4.0.1",
          help = [[	Adds cmake to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000000.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/cmake/4.0.1/bin"] = 1,
          },
          wV = "000000004.000000000.000000001.*zfinal",
          whatis = {
            "Name: cmake", "Version: 4.0.1",
          },
        },
      },
    },
    comsol = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["comsol/5.5"] = {
          Name = "comsol",
          Version = "5.5",
          canonical = "5.5",
          fn = "/opt/ohpc/pub/modulefiles/comsol/5.5",
          help = [[	Adds comsol to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/comsol/5.5/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000005.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/comsol/5.5/bin"] = 1,
          },
          wV = "000000005.000000005.*zfinal",
          whatis = {
            "Name: comsol", "Version: 5.5",
          },
        },
        ["comsol/6.1"] = {
          Name = "comsol",
          Version = "6.1",
          canonical = "6.1",
          fn = "/opt/ohpc/pub/modulefiles/comsol/6.1",
          help = [[	Adds comsol to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/comsol/6.1/comsol61/multiphysics/bin"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000006.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/comsol/6.1/comsol61/multiphysics/bin"] = 1,
          },
          wV = "000000006.000000001.*zfinal",
          whatis = {
            "Name: comsol", "Version: 6.1",
          },
        },
      },
    },
    ["contig-extender"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["contig-extender/0.1"] = {
          Name = "contig-extender",
          Version = "0.1",
          canonical = "0.1",
          fn = "/opt/ohpc/pub/modulefiles/contig-extender/0.1",
          help = [[	Adds contig-extender to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000000.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/contig-extender/0.1/bin"] = 1,
          },
          wV = "000000000.000000001.*zfinal",
          whatis = {
            "Name: contig-extender", "Version: 0.1",
          },
        },
      },
    },
    contrib = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["contrib/1.0"] = {
          Name = "Unsupported",
          Version = "1.0",
          canonical = "1.0",
          changeMPATH = true,
          fn = "/opt/ohpc/pub/modulefiles/contrib/1.0",
          help = [[	Adds user supported software to your module path
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.*zfinal",
          wV = "000000001.*zfinal",
          whatis = {
            "Name: Unsupported",
          },
        },
      },
    },
    coot = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["coot/0.8.9.2"] = {
          Name = "coot",
          Version = "0.8.9.2",
          canonical = "0.8.9.2",
          fn = "/opt/ohpc/pub/modulefiles/coot/0.8.9.2",
          help = [[	Adds coot to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/coot/0.8.9.2/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000000.000000008.000000009.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/coot/0.8.9.2/bin"] = 1,
          },
          wV = "000000000.000000008.000000009.000000002.*zfinal",
          whatis = {
            "Name: coot", "Version: 0.8.9.2",
          },
        },
      },
    },
    cplex = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["cplex/20.10"] = {
          Name = "cplex",
          Version = "20.10",
          canonical = "20.10",
          fn = "/opt/ohpc/pub/modulefiles/cplex/20.10",
          help = [[	Adds cplex to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/cplex/20.10/cplex/bin/x86-64_linux"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/cplex/python/3.7/x86-64_linux/cplex/_internal"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/cplex/python/3.8/x86-64_linux/cplex/_internal"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/cpoptimizer/bin/x86-64_linux"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/doc/html/en-US/refdocplex/docs/cp"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/doc/html/en-US/refdocplex/docs/cp/.doctrees"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/doc/html/en-US/refdocplex/docs/mp"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/doc/html/en-US/refpythoncplex/html"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/bin/x86-64_linux"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/lib/x86-64_linux/static_pic"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/jre/bin/classic"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/jre/bin/j9vm"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/jre/lib/amd64"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/jre/lib/amd64/classic"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/jre/lib/amd64/compressedrefs"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/jre/lib/amd64/default"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/jre/lib/amd64/j9vm"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/jre/lib/amd64/jli"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/jre/lib/icc"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/jre/lib/icc/C/icc/icclib"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/jre/lib/icc/N/icc/icclib"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/plugins/ilog.odms.ide.opllang.gtk.linux.x86_64_20.1.0.202012011542"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/plugins/org.eclipse.equinox.launcher.gtk.linux.x86_64_1.1.551.v20171108-1834"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000020.000000010.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/cplex/20.10/cplex/bin/x86-64_linux"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/cpoptimizer/bin/x86-64_linux"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/bin/x86-64_linux"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/features/org.eclipse.equinox.executable.nls1_3.7.2.v201711161131/bin/gtk/linux/x86"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/features/org.eclipse.equinox.executable.nls1_3.7.2.v201711161131/bin/gtk/linux/x86_64"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/features/org.eclipse.equinox.executable.nls2_3.7.2.v201711161131/bin/gtk/linux/x86"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/features/org.eclipse.equinox.executable.nls2_3.7.2.v201711161131/bin/gtk/linux/x86_64"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/features/org.eclipse.equinox.executable.nls2a_3.7.2.v201711161131/bin/gtk/linux/x86"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/features/org.eclipse.equinox.executable.nls2a_3.7.2.v201711161131/bin/gtk/linux/x86_64"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/features/org.eclipse.equinox.executable_3.7.2.v20171108-1834/bin/gtk/linux/x86"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/features/org.eclipse.equinox.executable_3.7.2.v20171108-1834/bin/gtk/linux/x86_64"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/jre/bin/classic"] = 1,
            ["/opt/ohpc/pub/apps/cplex/20.10/opl/oplide/jre/bin/j9vm"] = 1,
          },
          wV = "000000020.000000010.*zfinal",
          whatis = {
            "Name: cplex", "Version: 20.10",
          },
        },
      },
    },
    ctffind = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["ctffind/4.0.17"] = {
          Name = "ctffind",
          Version = "4.0.17",
          canonical = "4.0.17",
          fn = "/opt/ohpc/pub/modulefiles/ctffind/4.0.17",
          help = [[	Adds ctffind to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000000.000000017.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/ctffind/4.0.17/bin"] = 1,
          },
          wV = "000000004.000000000.000000017.*zfinal",
          whatis = {
            "Name: ctffind", "Version: 4.0.17",
          },
        },
        ["ctffind/4.1.14"] = {
          Name = "ctffind",
          Version = "4.1.14",
          canonical = "4.1.14",
          fn = "/opt/ohpc/pub/modulefiles/ctffind/4.1.14",
          help = [[	Adds ctffind to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000001.000000014.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/ctffind/4.1.14/bin"] = 1,
          },
          wV = "000000004.000000001.000000014.*zfinal",
          whatis = {
            "Name: ctffind", "Version: 4.1.14",
          },
        },
        ["ctffind/4.1.14-alt"] = {
          Name = "ctffind",
          Version = "4.1.14-alt",
          canonical = "4.1.14-alt",
          fn = "/opt/ohpc/pub/modulefiles/ctffind/4.1.14-alt",
          help = [[	Adds ctffind to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000001.000000014.*alt.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/ctffind/4.1.14-alt/bin"] = 1,
          },
          wV = "000000004.000000001.000000014.*alt.*zfinal",
          whatis = {
            "Name: ctffind", "Version: 4.1.14-alt",
          },
        },
      },
    },
    cuda11 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["cuda11/11.8"] = {
          Category = "compiler, runtime support",
          Name = "nVidia CUDA tools",
          URL = "http://www.developer.nvidia.com",
          Version = "11.8",
          canonical = "11.8",
          fn = "/opt/ohpc/pub/modulefiles/cuda11/11.8",
          help = [[ 
This module adds cuda to your environment
 
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/cuda/11.8/host-linux-x64"] = 1,
            ["/opt/ohpc/pub/apps/cuda/11.8/lib64"] = 1,
            ["/opt/ohpc/pub/apps/cuda/11.8/lib64/stubs"] = 1,
            ["/opt/ohpc/pub/apps/cuda/11.8/targets/x86_64-linux/lib/stubs"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000011.000000008.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/cuda/11.8/bin"] = 1,
            ["/opt/ohpc/pub/apps/cuda/11.8/nsight-systems-2020.4.3/bin"] = 1,
          },
          wV = "000000011.000000008.*zfinal",
          whatis = {
            "Name: nVidia CUDA tools", "This includes Nsight and Profiler", "Version: 11.8"
            , "Category: compiler, runtime support", "URL: http://www.developer.nvidia.com",
          },
        },
      },
    },
    ["cuda11-dnn"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["cuda11-dnn/8.9.2"] = {
          Name = "cuda11-dnn",
          Version = "8.9.2",
          canonical = "8.9.2",
          fn = "/opt/ohpc/pub/modulefiles/cuda11-dnn/8.9.2",
          help = [[	Adds cuda11-dnn to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/cuda11-dnn/8.9.2/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000008.000000009.000000002.*zfinal",
          wV = "000000008.000000009.000000002.*zfinal",
          whatis = {
            "Name: cuda11-dnn", "Version: 8.9.2",
          },
        },
      },
    },
    ["cuda11-sdk"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["cuda11-sdk/22.11"] = {
          Category = "compiler, libraries",
          Name = "Nvidia Software Developer Kit",
          URL = "http://www.developer.nvidia.com",
          Version = "22.11",
          canonical = "22.11",
          fn = "/opt/ohpc/pub/modulefiles/cuda11-sdk/22.11",
          help = [[ 
This module adds the Nvidia SDK to your environment
 
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/cuda/11.8/Linux_x86_64/22.11/comm_libs/mpi/lib"] = 1,
            ["/opt/ohpc/pub/apps/cuda/11.8/Linux_x86_64/22.11/comm_libs/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/cuda/11.8/Linux_x86_64/22.11/comm_libs/nvshmem/lib"] = 1,
            ["/opt/ohpc/pub/apps/cuda/11.8/Linux_x86_64/22.11/compilers/lib"] = 1,
            ["/opt/ohpc/pub/apps/cuda/11.8/Linux_x86_64/22.11/cuda/lib64"] = 1,
            ["/opt/ohpc/pub/apps/cuda/11.8/Linux_x86_64/22.11/math_libs/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000022.000000011.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/cuda/11.8/Linux_x86_64/22.11/comm_libs/mpi/bin"] = 1,
            ["/opt/ohpc/pub/apps/cuda/11.8/Linux_x86_64/22.11/comm_libs/nccl/bin"] = 1,
            ["/opt/ohpc/pub/apps/cuda/11.8/Linux_x86_64/22.11/comm_libs/nvshmem/bin"] = 1,
            ["/opt/ohpc/pub/apps/cuda/11.8/Linux_x86_64/22.11/compilers/bin"] = 1,
            ["/opt/ohpc/pub/apps/cuda/11.8/Linux_x86_64/22.11/cuda/bin"] = 1,
            ["/opt/ohpc/pub/apps/cuda/11.8/Linux_x86_64/22.11/profilers/bin"] = 1,
          },
          wV = "000000022.000000011.*zfinal",
          whatis = {
            "Name: Nvidia Software Developer Kit"
            , "A comprehensive suite of compilers, libraries and tools", "Version: 22.11"
            , "Complements Cuda 11.8", "Category: compiler, libraries", "URL: http://www.developer.nvidia.com",
          },
        },
      },
    },
    cuda12 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["cuda12/12.4.1"] = {
          Name = "cuda12",
          Version = "12.4.1",
          canonical = "12.4.1",
          fn = "/opt/ohpc/pub/modulefiles/cuda12/12.4.1",
          help = [[	Adds cuda12 to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/cuda12/12.4.1/host-linux-x64"] = 1,
            ["/opt/ohpc/pub/apps/cuda12/12.4.1/lib64"] = 1,
            ["/opt/ohpc/pub/apps/cuda12/12.4.1/lib64/stubs"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000012.000000004.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/cuda12/12.4.1/bin"] = 1,
          },
          wV = "000000012.000000004.000000001.*zfinal",
          whatis = {
            "Name: cuda12", "Version: 12.4.1",
          },
        },
        ["cuda12/12.5"] = {
          Name = "cuda12",
          Version = "12.5",
          canonical = "12.5",
          fn = "/opt/ohpc/pub/modulefiles/cuda12/12.5",
          help = [[	Adds cuda12 to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/cuda12/12.5/lib64"] = 1,
            ["/opt/ohpc/pub/apps/cuda12/12.5/lib64/stubs"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000012.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/cuda12/12.5/bin"] = 1,
          },
          wV = "000000012.000000005.*zfinal",
          whatis = {
            "Name: cuda12", "Version: 12.5",
          },
        },
      },
    },
    ["cuda12-dnn"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["cuda12-dnn/8.9.2"] = {
          Name = "cuda12-dnn",
          Version = "8.9.2",
          canonical = "8.9.2",
          fn = "/opt/ohpc/pub/modulefiles/cuda12-dnn/8.9.2",
          help = [[	Adds cuda12-dnn to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/cuda12-dnn/8.9.2/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000008.000000009.000000002.*zfinal",
          wV = "000000008.000000009.000000002.*zfinal",
          whatis = {
            "Name: cuda12-dnn", "Version: 8.9.2",
          },
        },
        ["cuda12-dnn/9.2.0"] = {
          Name = "cuda12-dnn",
          Version = "9.2.0",
          canonical = "9.2.0",
          fn = "/opt/ohpc/pub/modulefiles/cuda12-dnn/9.2.0",
          help = [[	Adds cuda12-dnn to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/cuda12-dnn/9.2.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000009.000000002.*zfinal",
          wV = "000000009.000000002.*zfinal",
          whatis = {
            "Name: cuda12-dnn", "Version: 9.2.0",
          },
        },
        ["cuda12-dnn/9.3.0"] = {
          Name = "cuda12-dnn",
          Version = "9.3.0",
          canonical = "9.3.0",
          fn = "/opt/ohpc/pub/modulefiles/cuda12-dnn/9.3.0",
          help = [[	Adds cuda12-dnn to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/cuda12-dnn/9.3.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000009.000000003.*zfinal",
          wV = "000000009.000000003.*zfinal",
          whatis = {
            "Name: cuda12-dnn", "Version: 9.3.0",
          },
        },
      },
    },
    cufflinks = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["cufflinks/2.2.1"] = {
          Name = "cufflinks",
          Version = "2.2.1",
          canonical = "2.2.1",
          fn = "/opt/ohpc/pub/modulefiles/cufflinks/2.2.1",
          help = [[	Adds cufflinks to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000002.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/cufflinks/2.2.1/bin"] = 1,
          },
          wV = "000000002.000000002.000000001.*zfinal",
          whatis = {
            "Name: cufflinks", "Version: 2.2.1",
          },
        },
      },
    },
    cutadapt = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["cutadapt/3.1"] = {
          Name = "cutadapt",
          Version = "3.1",
          canonical = "3.1",
          fn = "/opt/ohpc/pub/modulefiles/cutadapt/3.1",
          help = [[	Adds cutadapt to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/cutadapt/3.1/bin"] = 1,
          },
          wV = "000000003.000000001.*zfinal",
          whatis = {
            "Name: cutadapt", "Version: 3.1",
          },
        },
        ["cutadapt/4.7"] = {
          Name = "cutadapt",
          Version = "4.7",
          canonical = "4.7",
          fn = "/opt/ohpc/pub/modulefiles/cutadapt/4.7",
          help = [[	Adds cutadapt to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/cutadapt/4.7/bin"] = 1,
          },
          wV = "000000004.000000007.*zfinal",
          whatis = {
            "Name: cutadapt", "Version: 4.7",
          },
        },
      },
    },
    diamond = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["diamond/2.0.9"] = {
          Name = "diamond",
          Version = "2.0.9",
          canonical = "2.0.9",
          fn = "/opt/ohpc/pub/modulefiles/diamond/2.0.9",
          help = [[	Adds diamond to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000000.000000009.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/diamond/2.0.9"] = 1,
          },
          wV = "000000002.000000000.000000009.*zfinal",
          whatis = {
            "Name: diamond", "Version: 2.0.9",
          },
        },
      },
    },
    dlang = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["dlang/2.110.0"] = {
          Name = "dlang",
          Version = "2.110.0",
          canonical = "2.110.0",
          fn = "/opt/ohpc/pub/modulefiles/dlang/2.110.0",
          help = [[	Adds dlang to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/dlang/2.110.0/linux/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000110.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/dlang/2.110.0/linux/bin64"] = 1,
          },
          wV = "000000002.000000110.*zfinal",
          whatis = {
            "Name: dlang", "Version: 2.110.0",
          },
        },
      },
    },
    dmtcp = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["dmtcp/2.6.1~rc1"] = {
          Name = "dmtcp",
          Version = "2.6.1~rc1",
          canonical = "2.6.1~rc1",
          fn = "/opt/ohpc/pub/modulefiles/dmtcp/2.6.1~rc1",
          help = [[	Adds dmtcp to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/dmtcp/2.6.1~rc1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000006.000000001.*~.*c.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/dmtcp/2.6.1~rc1/bin"] = 1,
          },
          wV = "000000002.000000006.000000001.*~.*c.000000001.*zfinal",
          whatis = {
            "Name: dmtcp", "Version: 2.6.1~rc1",
          },
        },
      },
    },
    eccodes = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["eccodes/2.32"] = {
          Name = "eccodes",
          Version = "2.32",
          canonical = "2.32",
          fn = "/opt/ohpc/pub/modulefiles/eccodes/2.32",
          help = [[	Adds eccodes to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/eccodes/2.32/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000032.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/eccodes/2.32/bin"] = 1,
          },
          wV = "000000002.000000032.*zfinal",
          whatis = {
            "Name: eccodes", "Version: 2.32",
          },
        },
      },
    },
    ["eggnog-mapper"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["eggnog-mapper/2.1.10"] = {
          Name = "eggnog-mapper",
          Version = "2.1.10",
          canonical = "2.1.10",
          fn = "/opt/ohpc/pub/modulefiles/eggnog-mapper/2.1.10",
          help = [[	Adds eggnog-mapper to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000001.000000010.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/eggnog-mapper/2.1.10"] = 1,
            ["/opt/ohpc/pub/apps/eggnog-mapper/2.1.10/eggnogmapper/bin"] = 1,
          },
          wV = "000000002.000000001.000000010.*zfinal",
          whatis = {
            "Name: eggnog-mapper", "Version: 2.1.10",
          },
        },
      },
    },
    eigen = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["eigen/3.4.0"] = {
          Name = "eigen",
          Version = "3.4.0",
          canonical = "3.4.0",
          fn = "/opt/ohpc/pub/modulefiles/eigen/3.4.0",
          help = [[	Adds eigen to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000004.*zfinal",
          wV = "000000003.000000004.*zfinal",
          whatis = {
            "Name: eigen", "Version: 3.4.0", "eigen is a C++ template library for linear algebra",
          },
        },
      },
    },
    energyplus = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["energyplus/22.1.0"] = {
          Name = "energyplus",
          Version = "22.1.0",
          canonical = "22.1.0",
          fn = "/opt/ohpc/pub/modulefiles/energyplus/22.1.0",
          help = [[	Adds energyplus to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/energyplus/22.1.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000022.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/energyplus/22.1.0"] = 1,
          },
          wV = "000000022.000000001.*zfinal",
          whatis = {
            "Name: energyplus", "Version: 22.1.0",
          },
        },
      },
    },
    fastp = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["fastp/0.23.4"] = {
          Name = "fastp",
          Version = "0.23.4",
          canonical = "0.23.4",
          fn = "/opt/ohpc/pub/modulefiles/fastp/0.23.4",
          help = [[	Adds fastp to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000000.000000023.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/fastp/0.23.4/bin"] = 1,
          },
          wV = "000000000.000000023.000000004.*zfinal",
          whatis = {
            "Name: fastp", "Version: 0.23.4",
          },
        },
      },
    },
    fastqc = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["fastqc/0.11.9"] = {
          Name = "fastqc",
          Version = "0.11.9",
          canonical = "0.11.9",
          fn = "/opt/ohpc/pub/modulefiles/fastqc/0.11.9",
          help = [[	Adds fastqc to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000000.000000011.000000009.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/fastqc/0.11.9"] = 1,
          },
          wV = "000000000.000000011.000000009.*zfinal",
          whatis = {
            "Name: fastqc", "Version: 0.11.9",
          },
        },
      },
    },
    fasttree = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["fasttree/2.1.11"] = {
          Name = "fasttree",
          Version = "2.1.11",
          canonical = "2.1.11",
          fn = "/opt/ohpc/pub/modulefiles/fasttree/2.1.11",
          help = [[	Adds fasttree to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000001.000000011.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/fasttree/2.1.11/bin"] = 1,
          },
          wV = "000000002.000000001.000000011.*zfinal",
          whatis = {
            "Name: fasttree", "Version: 2.1.11",
          },
        },
      },
    },
    fastx = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["fastx/0.0.13"] = {
          Name = "fastx",
          Version = "0.0.13",
          canonical = "0.0.13",
          fn = "/opt/ohpc/pub/modulefiles/fastx/0.0.13",
          help = [[	Adds fastx to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000000.000000000.000000013.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/fastx/0.0.13/bin"] = 1,
          },
          wV = "000000000.000000000.000000013.*zfinal",
          whatis = {
            "Name: fastx", "Version: 0.0.13", "a collection of command line tools for Short-Reads FASTA/FASTQ files preprocessing",
          },
        },
      },
    },
    ffmpeg = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["ffmpeg/4.1.11"] = {
          Name = "ffmpeg",
          Version = "4.1.11",
          canonical = "4.1.11",
          fn = "/opt/ohpc/pub/modulefiles/ffmpeg/4.1.11",
          help = [[	Adds ffmpeg to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/ffmpeg/4.1.11/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000001.000000011.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/ffmpeg/4.1.11/bin"] = 1,
          },
          wV = "000000004.000000001.000000011.*zfinal",
          whatis = {
            "Name: ffmpeg", "Version: 4.1.11",
          },
        },
      },
    },
    fiji = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["fiji/2.1.1"] = {
          Name = "fiji",
          Version = "2.1.1",
          canonical = "2.1.1",
          fn = "/opt/ohpc/pub/modulefiles/fiji/2.1.1",
          help = [[	Adds fiji to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000001.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/fiji/2.1.1/bin"] = 1,
          },
          wV = "000000002.000000001.000000001.*zfinal",
          whatis = {
            "Name: fiji", "Version: 2.1.1",
          },
        },
      },
    },
    flash = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["flash/1.2.11"] = {
          Name = "flash",
          Version = "1.2.11",
          canonical = "1.2.11",
          fn = "/opt/ohpc/pub/modulefiles/flash/1.2.11",
          help = [[	Adds flash to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000002.000000011.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/flash/1.2.11/bin"] = 1,
          },
          wV = "000000001.000000002.000000011.*zfinal",
          whatis = {
            "Name: flash", "Version: 1.2.11",
          },
        },
      },
    },
    flex = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["flex/2.6.4"] = {
          Name = "flex",
          Version = "2.6.4",
          canonical = "2.6.4",
          fn = "/opt/ohpc/pub/modulefiles/flex/2.6.4",
          help = [[	Adds flex to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/flex/2.6.4/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000006.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/flex/2.6.4/bin"] = 1,
          },
          wV = "000000002.000000006.000000004.*zfinal",
          whatis = {
            "Name: flex", "Version: 2.6.4",
          },
        },
      },
    },
    fontconfig = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["fontconfig/2.14.2"] = {
          Name = "fontconfig",
          Version = "2.14.2",
          canonical = "2.14.2",
          fn = "/opt/ohpc/pub/modulefiles/fontconfig/2.14.2",
          help = [[	Adds fontconfig to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/fontconfig/2.14.2/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000014.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/fontconfig/2.14.2/bin"] = 1,
          },
          wV = "000000002.000000014.000000002.*zfinal",
          whatis = {
            "Name: fontconfig", "Version: 2.14.2",
          },
        },
      },
    },
    freebayes = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["freebayes/1.3.2"] = {
          Name = "freebayes",
          Version = "1.3.2",
          canonical = "1.3.2",
          fn = "/opt/ohpc/pub/modulefiles/freebayes/1.3.2",
          help = [[	Adds freebayes to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000003.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/freebayes/1.3.2/bin"] = 1,
          },
          wV = "000000001.000000003.000000002.*zfinal",
          whatis = {
            "Name: freebayes", "Version: 1.3.2", "a Bayesian genetic variant detector designed to find small polymorphisms",
          },
        },
      },
    },
    freec = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["freec/11.6"] = {
          Name = "freec",
          Version = "11.6",
          canonical = "11.6",
          fn = "/opt/ohpc/pub/modulefiles/freec/11.6",
          help = [[	Adds freec to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000011.000000006.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/freec/11.6/bin"] = 1,
          },
          wV = "000000011.000000006.*zfinal",
          whatis = {
            "Name: freec", "Version: 11.6", "A tool using deep-sequencing data",
          },
        },
      },
    },
    freesurfer = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["freesurfer/7.1.1"] = {
          Name = "freesurfer",
          Version = "7.1.1",
          canonical = "7.1.1",
          fn = "/opt/ohpc/pub/modulefiles/freesurfer/7.1.1",
          help = [[	Adds freesurfer to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/freesurfer/7.1.1/lib"] = 1,
            ["/opt/ohpc/pub/apps/freesurfer/7.1.1/python/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000007.000000001.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/freesurfer/7.1.1/bin"] = 1,
          },
          wV = "000000007.000000001.000000001.*zfinal",
          whatis = {
            "Name: freesurfer", "Version: 7.1.1",
          },
        },
      },
    },
    freetype = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["freetype/2.13.3"] = {
          Name = "freetype",
          Version = "2.13.3",
          canonical = "2.13.3",
          fn = "/opt/ohpc/pub/modulefiles/freetype/2.13.3",
          help = [[	Adds freetype to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/freetype/2.13.3/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000013.000000003.*zfinal",
          wV = "000000002.000000013.000000003.*zfinal",
          whatis = {
            "Name: freetype", "Version: 2.13.3",
          },
        },
      },
    },
    fsc28 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["fsc28/2.8.0.0"] = {
          Name = "fsc28",
          Version = "2.8.0.0",
          canonical = "2.8.0.0",
          fn = "/opt/ohpc/pub/modulefiles/fsc28/2.8.0.0",
          help = [[	Adds fsc28 to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000008.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/fsc28/2.8.0.0/bin"] = 1,
          },
          wV = "000000002.000000008.*zfinal",
          whatis = {
            "Name: fsc28", "Version: 2.8.0.0",
          },
        },
      },
    },
    gatk = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["gatk/4.2.5.0"] = {
          Name = "gatk",
          Version = "4.2.5.0",
          canonical = "4.2.5.0",
          fn = "/opt/ohpc/pub/modulefiles/gatk/4.2.5.0",
          help = [[	Adds gatk to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000002.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/gatk/4.2.5.0/bin"] = 1,
          },
          wV = "000000004.000000002.000000005.*zfinal",
          whatis = {
            "Name: gatk", "Version: 4.2.5.0", "Genome Analysis Toolkit",
          },
        },
      },
    },
    gaussian = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["gaussian/g16"] = {
          Category = "application, chemistry",
          Description = "Electronic structure program",
          Name = "Gaussian",
          URL = "http://www.gaussian.com/gaussian16",
          Version = "g16",
          canonical = "g16",
          fn = "/opt/ohpc/pub/modulefiles/gaussian/g16",
          help = [[Modifies system paths required to use g16.

]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "*g.000000016.*zfinal",
          wV = "*g.000000016.*zfinal",
          whatis = {
            "Name: Gaussian", "Version: g16", "Category: application, chemistry"
            , "URL: http://www.gaussian.com/gaussian16", "Description: Electronic structure program",
          },
        },
        ["gaussian/g16C.02"] = {
          Category = "application, chemistry",
          Description = "Electronic structure program",
          Name = "Gaussian",
          URL = "http://www.gaussian.com/gaussian16",
          Version = "g16C.02",
          canonical = "g16C.02",
          fn = "/opt/ohpc/pub/modulefiles/gaussian/g16C.02",
          help = [[Modifies system paths required to use g16C.02.

]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "*g.000000016.*c.000000002.*zfinal",
          wV = "*g.000000016.*c.000000002.*zfinal",
          whatis = {
            "Name: Gaussian", "Version: g16C.02", "Category: application, chemistry"
            , "URL: http://www.gaussian.com/gaussian16", "Description: Electronic structure program",
          },
        },
      },
    },
    gaussview = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["gaussview/g16"] = {
          Name = "gaussian",
          Version = "gv",
          canonical = "g16",
          fn = "/opt/ohpc/pub/modulefiles/gaussview/g16",
          help = [[	Adds gaussian to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/gaussview/g16/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "*g.000000016.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/gaussview/g16"] = 1,
            ["/opt/ohpc/pub/apps/gaussview/g16/bin"] = 1,
          },
          wV = "*g.000000016.*zfinal",
          whatis = {
            "Name: gaussian", "Version: gv",
          },
        },
      },
    },
    gdal = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["gdal/3.3.2"] = {
          Name = "gdal",
          Version = "3.3.2",
          canonical = "3.3.2",
          fn = "/opt/ohpc/pub/modulefiles/gdal/3.3.2",
          help = [[	Adds gdal to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/gdal/3.3.2/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000003.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/gdal/3.3.2/bin"] = 1,
          },
          wV = "000000003.000000003.000000002.*zfinal",
          whatis = {
            "Name: gdal", "Version: 3.3.2",
          },
        },
        ["gdal/3.8.5"] = {
          Name = "gdal",
          Version = "3.8.5",
          canonical = "3.8.5",
          fn = "/opt/ohpc/pub/modulefiles/gdal/3.8.5",
          help = [[	Adds gdal to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/gdal/3.8.5/lib"] = 1,
            ["/opt/ohpc/pub/apps/gdal/3.8.5/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000008.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/gdal/3.8.5/bin"] = 1,
          },
          wV = "000000003.000000008.000000005.*zfinal",
          whatis = {
            "Name: gdal", "Version: 3.8.5",
          },
        },
      },
    },
    generax = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["generax/2.1.3"] = {
          Name = "generax",
          Version = "2.1.3",
          canonical = "2.1.3",
          fn = "/opt/ohpc/pub/modulefiles/generax/2.1.3",
          help = [[	Adds generax to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000001.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/generax/2.1.3/bin"] = 1,
          },
          wV = "000000002.000000001.000000003.*zfinal",
          whatis = {
            "Name: generax", "Version: 2.1.3",
          },
        },
      },
    },
    genometools = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["genometools/1.6.2"] = {
          Name = "genometools",
          Version = "1.6.2",
          canonical = "1.6.2",
          fn = "/opt/ohpc/pub/modulefiles/genometools/1.6.2",
          help = [[	Adds genometools to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/genometools/1.6.2/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000006.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/genometools/1.6.2/bin"] = 1,
          },
          wV = "000000001.000000006.000000002.*zfinal",
          whatis = {
            "Name: genometools", "Version: 1.6.2",
          },
        },
      },
    },
    geos = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["geos/3.9.1"] = {
          Name = "geos",
          Version = "3.9.1",
          canonical = "3.9.1",
          fn = "/opt/ohpc/pub/modulefiles/geos/3.9.1",
          help = [[	Adds geos to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/geos/3.9.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000009.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/geos/3.9.1/bin"] = 1,
          },
          wV = "000000003.000000009.000000001.*zfinal",
          whatis = {
            "Name: geos", "Version: 3.9.1",
          },
        },
        ["geos/3.9.5"] = {
          Name = "geos",
          Version = "3.9.5",
          canonical = "3.9.5",
          fn = "/opt/ohpc/pub/modulefiles/geos/3.9.5",
          help = [[	Adds geos to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/geos/3.9.5/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000009.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/geos/3.9.5/bin"] = 1,
          },
          wV = "000000003.000000009.000000005.*zfinal",
          whatis = {
            "Name: geos", "Version: 3.9.5",
          },
        },
      },
    },
    glpk = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["glpk/5.0"] = {
          Name = "glpk",
          Version = "5.0",
          canonical = "5.0",
          fn = "/opt/ohpc/pub/modulefiles/glpk/5.0",
          help = [[	Adds glpk to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/glpk/5.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/glpk/5.0/bin"] = 1,
          },
          wV = "000000005.*zfinal",
          whatis = {
            "Name: glpk", "Version: 5.0",
          },
        },
      },
    },
    gmsh = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["gmsh/4.11"] = {
          Name = "gmsh",
          Version = "4.11",
          canonical = "4.11",
          fn = "/opt/ohpc/pub/modulefiles/gmsh/4.11",
          help = [[	Adds gmsh to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000011.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/gmsh/4.11/bin"] = 1,
          },
          wV = "000000004.000000011.*zfinal",
          whatis = {
            "Name: gmsh", "Version: 4.11",
          },
        },
      },
    },
    gnu12 = {
      defaultA = {
        {
          barefn = "default",
          defaultIdx = 1,
          fn = "/opt/ohpc/pub/modulefiles/gnu12/default",
          fullName = "gnu12/default",
          mpath = "/opt/ohpc/pub/modulefiles",
          value = "12.2.0",
        },
      },
      defaultT = {
        barefn = "default",
        defaultIdx = 1,
        fn = "/opt/ohpc/pub/modulefiles/gnu12/default",
        fullName = "gnu12/default",
        mpath = "/opt/ohpc/pub/modulefiles",
        value = "12.2.0",
      },
      dirT = {},
      fileT = {
        ["gnu12/12.2.0"] = {
          Category = "compiler, runtime support",
          Description = "GNU Compiler Family (C/C++/Fortran for x86_64)",
          Name = "GNU Compiler Collection",
          URL = "http://gcc.gnu.org/",
          Version = "12.2.0",
          canonical = "12.2.0",
          changeMPATH = true,
          family = "compiler",
          fn = "/opt/ohpc/pub/modulefiles/gnu12/12.2.0.lua",
          help = [[This module loads the GNU compiler collection"

See the man pages for gcc, g++, and gfortran for detailed information
on available compiler options and command-line syntax.

Version 12.2.0
]],
          lpathA = {
            ["/opt/ohpc/pub/compiler/gcc/12.2.0/lib64"] = 1,
          },
          luaExt = 7,
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000012.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/compiler/gcc/12.2.0/bin"] = 1,
          },
          wV = "^00000012.000000002.*zfinal",
          whatis = {
            "Name: GNU Compiler Collection", "Version: 12.2.0"
            , "Category: compiler, runtime support"
            , "Description: GNU Compiler Family (C/C++/Fortran for x86_64)", "URL: http://gcc.gnu.org/",
          },
        },
      },
    },
    gnu13 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["gnu13/13.2.0"] = {
          Category = "compiler, runtime support",
          Description = "GNU Compiler Family (C/C++/Fortran for x86_64)",
          Name = "GNU Compiler Collection",
          URL = "http://gcc.gnu.org/",
          Version = "13.2.0",
          canonical = "13.2.0",
          changeMPATH = true,
          family = "compiler",
          fn = "/opt/ohpc/pub/modulefiles/gnu13/13.2.0.lua",
          help = [[This module loads the GNU compiler collection"

See the man pages for gcc, g++, and gfortran for detailed information
on available compiler options and command-line syntax.

Version 13.2.0
]],
          lpathA = {
            ["/opt/ohpc/pub/compiler/gcc/13.2.0/lib64"] = 1,
          },
          luaExt = 7,
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000013.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/compiler/gcc/13.2.0/bin"] = 1,
          },
          wV = "000000013.000000002.*zfinal",
          whatis = {
            "Name: GNU Compiler Collection", "Version: 13.2.0"
            , "Category: compiler, runtime support"
            , "Description: GNU Compiler Family (C/C++/Fortran for x86_64)", "URL: http://gcc.gnu.org/",
          },
        },
      },
    },
    gnuplot = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["gnuplot/5.4.8"] = {
          Name = "gnuplot",
          Version = "5.4.8",
          canonical = "5.4.8",
          fn = "/opt/ohpc/pub/modulefiles/gnuplot/5.4.8",
          help = [[	Adds gnuplot to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000005.000000004.000000008.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/gnuplot/5.4.8/bin"] = 1,
          },
          wV = "000000005.000000004.000000008.*zfinal",
          whatis = {
            "Name: gnuplot", "Version: 5.4.8",
          },
        },
      },
    },
    go = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["go/1.20.5"] = {
          Name = "go",
          Version = "1.20.5",
          canonical = "1.20.5",
          fn = "/opt/ohpc/pub/modulefiles/go/1.20.5",
          help = [[	Adds go to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/go/1.20.5/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000020.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/go/1.20.5/bin"] = 1,
          },
          wV = "000000001.000000020.000000005.*zfinal",
          whatis = {
            "Name: go", "Version: 1.20.5",
          },
        },
      },
    },
    ["googletest-intel"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["googletest-intel/1.12.1"] = {
          Name = "googletest",
          Version = "1.12.1",
          canonical = "1.12.1",
          fn = "/opt/ohpc/pub/modulefiles/googletest-intel/1.12.1",
          help = [[	Adds googletest to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000012.000000001.*zfinal",
          wV = "000000001.000000012.000000001.*zfinal",
          whatis = {
            "Name: googletest", "Version: 1.12.1",
          },
        },
      },
    },
    grace = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["grace/5.1.25"] = {
          Name = "grace",
          Version = "5.1.25",
          canonical = "5.1.25",
          fn = "/opt/ohpc/pub/modulefiles/grace/5.1.25",
          help = [[	Adds grace to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/grace/5.1.25/grace/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000005.000000001.000000025.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/grace/5.1.25/grace/bin"] = 1,
          },
          wV = "000000005.000000001.000000025.*zfinal",
          whatis = {
            "Name: grace", "Version: 5.1.25",
          },
        },
      },
    },
    gromacs = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["gromacs/2024.2"] = {
          Name = "gromacs",
          Version = "2024.2",
          canonical = "2024.2",
          fn = "/opt/ohpc/pub/modulefiles/gromacs/2024.2",
          help = [[	Adds gromacs to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000002024.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/gromacs/2024.2/bin"] = 1,
          },
          wV = "000002024.000000002.*zfinal",
          whatis = {
            "Name: gromacs", "Version: 2024.2",
          },
        },
      },
    },
    gurobi = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["gurobi/10.0.1"] = {
          Name = "gurobi",
          Version = "10.0.1",
          canonical = "10.0.1",
          fn = "/opt/ohpc/pub/modulefiles/gurobi/10.0.1",
          help = [[	Adds gurobi to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/gurobi/10.0.1/linux64/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000010.000000000.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/gurobi/10.0.1/linux64/bin"] = 1,
          },
          wV = "000000010.000000000.000000001.*zfinal",
          whatis = {
            "Name: gurobi", "Version: 10.0.1", "Mathematical Programming Solver",
          },
        },
        ["gurobi/12.0.2"] = {
          Name = "gurobi",
          Version = "12.0.2",
          canonical = "12.0.2",
          fn = "/opt/ohpc/pub/modulefiles/gurobi/12.0.2",
          help = [[	Adds gurobi to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/gurobi/12.0.2/linux64/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000012.000000000.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/gurobi/12.0.2/linux64/bin"] = 1,
          },
          wV = "000000012.000000000.000000002.*zfinal",
          whatis = {
            "Name: gurobi", "Version: 12.0.2", "Mathematical Programming Solver",
          },
        },
        ["gurobi/9.5.1"] = {
          Name = "gurobi",
          Version = "9.5.1",
          canonical = "9.5.1",
          fn = "/opt/ohpc/pub/modulefiles/gurobi/9.5.1",
          help = [[	Adds gurobi to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/gurobi/9.5.1/linux64/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000009.000000005.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/gurobi/9.5.1/linux64/bin"] = 1,
          },
          wV = "000000009.000000005.000000001.*zfinal",
          whatis = {
            "Name: gurobi", "Version: 9.5.1", "Mathematical Programming Solver",
          },
        },
      },
    },
    hisat2 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hisat2/2.2.1"] = {
          Name = "hisat2",
          Version = "2.2.1",
          canonical = "2.2.1",
          fn = "/opt/ohpc/pub/modulefiles/hisat2/2.2.1",
          help = [[	Adds hisat2 to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000002.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/hisat2/2.2.1"] = 1,
          },
          wV = "000000002.000000002.000000001.*zfinal",
          whatis = {
            "Name: hisat2", "Version: 2.2.1",
          },
        },
      },
    },
    hotpants = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hotpants/5.1.11"] = {
          Name = "hotpants",
          Version = "5.1.11",
          canonical = "5.1.11",
          fn = "/opt/ohpc/pub/modulefiles/hotpants/5.1.11",
          help = [[	Adds hotpants to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000005.000000001.000000011.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/hotpants/5.1.11/bin"] = 1,
          },
          wV = "000000005.000000001.000000011.*zfinal",
          whatis = {
            "Name: hotpants", "Version: 5.1.11",
          },
        },
      },
    },
    htslib = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["htslib/1.15.1"] = {
          Name = "htslib",
          Version = "1.15.1",
          canonical = "1.15.1",
          fn = "/opt/ohpc/pub/modulefiles/htslib/1.15.1",
          help = [[	Adds htslib to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/htslib/1.15.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000015.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/htslib/1.15.1/bin"] = 1,
          },
          wV = "000000001.000000015.000000001.*zfinal",
          whatis = {
            "Name: htslib", "Version: 1.15.1",
          },
        },
        ["htslib/1.19.1"] = {
          Name = "htslib",
          Version = "1.19.1",
          canonical = "1.19.1",
          fn = "/opt/ohpc/pub/modulefiles/htslib/1.19.1",
          help = [[	Adds htslib to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/htslib/1.19.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000019.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/htslib/1.19.1/bin"] = 1,
          },
          wV = "000000001.000000019.000000001.*zfinal",
          whatis = {
            "Name: htslib", "Version: 1.19.1",
          },
        },
      },
    },
    hwloc = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["hwloc/2.12.0"] = {
          Category = "python module",
          Description = "Portable Hardware Locality",
          Name = "hwloc",
          Version = "2.12.0",
          canonical = "2.12.0",
          fn = "/opt/ohpc/pub/modulefiles/hwloc/2.12.0",
          help = [[ 
This module loads the hwloc utility

Version 2.12.0

]],
          lpathA = {
            ["/opt/ohpc/pub/libs/hwloc/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000012.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/libs/hwloc/bin"] = 1,
          },
          wV = "000000002.000000012.*zfinal",
          whatis = {
            "Name: hwloc", "Version: 2.12.0", "Category: python module"
            , "Description: Portable Hardware Locality", "URL http://www.open-mpi.org/projects/hwloc/",
          },
        },
      },
    },
    igraph = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["igraph/0.7.1"] = {
          Name = "igraph",
          Version = "0.7.1",
          canonical = "0.7.1",
          fn = "/opt/ohpc/pub/modulefiles/igraph/0.7.1",
          help = [[	Adds igraph to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/igraph/0.7.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000000.000000007.000000001.*zfinal",
          wV = "000000000.000000007.000000001.*zfinal",
          whatis = {
            "Name: igraph", "Version: 0.7.1",
          },
        },
      },
    },
    intel = {
      defaultA = {
        {
          barefn = ".version",
          defaultIdx = 4,
          fn = "/opt/ohpc/pub/modulefiles/intel/.version",
          fullName = "intel/.version",
          mpath = "/opt/ohpc/pub/modulefiles",
          value = "2024.0.0",
        },
      },
      defaultT = {
        barefn = ".version",
        defaultIdx = 4,
        fn = "/opt/ohpc/pub/modulefiles/intel/.version",
        fullName = "intel/.version",
        mpath = "/opt/ohpc/pub/modulefiles",
        value = "2024.0.0",
      },
      dirT = {},
      fileT = {
        ["intel/2023.2.1"] = {
          Category = "compiler, runtime support",
          Description = "Intel(R) Compiler Family (C/C++/Fortran for x86_64)",
          Name = "Intel(R) Compiler",
          URL = "http://software.intel.com/en-us/articles/intel-compilers/",
          Version = "2023.2.1",
          canonical = "2023.2.1",
          changeMPATH = true,
          family = "compiler",
          fn = "/opt/ohpc/pub/modulefiles/intel/2023.2.1",
          help = [[
This module loads the oneAPI compiler environment.


See the man pages for icc, icpc, and ifort for detailed information
on available compiler options and command-line syntax.

Version 2023.2.1

]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000002023.000000002.000000001.*zfinal",
          wV = "000002023.000000002.000000001.*zfinal",
          whatis = {
            "Name: Intel(R) Compiler", "Version: 2023.2.1"
            , "Category: compiler, runtime support"
            , "Description: Intel(R) Compiler Family (C/C++/Fortran for x86_64)", "URL: http://software.intel.com/en-us/articles/intel-compilers/",
          },
        },
        ["intel/2024.0.0"] = {
          Category = "compiler, runtime support",
          Description = "Intel(R) Compiler Family (C/C++/Fortran for x86_64)",
          Name = "Intel(R) Compiler",
          URL = "http://software.intel.com/en-us/articles/intel-compilers/",
          Version = "2024.0.0",
          canonical = "2024.0.0",
          changeMPATH = true,
          fn = "/opt/ohpc/pub/modulefiles/intel/2024.0.0",
          help = [[
This module loads the oneAPI compiler environment.


See the man pages for icc, icpc, and ifort for detailed information
on available compiler options and command-line syntax.

Version 2024.0.0

]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000002024.*zfinal",
          wV = "^00002024.*zfinal",
          whatis = {
            "Name: Intel(R) Compiler", "Version: 2024.0.0"
            , "Category: compiler, runtime support"
            , "Description: Intel(R) Compiler Family (C/C++/Fortran for x86_64)", "URL: http://software.intel.com/en-us/articles/intel-compilers/",
          },
        },
        ["intel/2024.1.2"] = {
          Category = "compiler, runtime support",
          Description = "Intel(R) Compiler Family (C/C++/Fortran for x86_64)",
          Name = "Intel(R) Compiler",
          URL = "http://software.intel.com/en-us/articles/intel-compilers/",
          Version = "2024.1.2",
          canonical = "2024.1.2",
          changeMPATH = true,
          family = "compiler",
          fn = "/opt/ohpc/pub/modulefiles/intel/2024.1.2",
          help = [[
This module loads the oneAPI compiler environment.


See the man pages for icc, icpc, and ifort for detailed information
on available compiler options and command-line syntax.

Version 2024.1.2

]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000002024.000000001.000000002.*zfinal",
          wV = "000002024.000000001.000000002.*zfinal",
          whatis = {
            "Name: Intel(R) Compiler", "Version: 2024.1.2"
            , "Category: compiler, runtime support"
            , "Description: Intel(R) Compiler Family (C/C++/Fortran for x86_64)", "URL: http://software.intel.com/en-us/articles/intel-compilers/",
          },
        },
      },
    },
    interproscan = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["interproscan/5.66-98.0"] = {
          Description = "'interproscan' is an alias for 'apptainer exec -B /contrib/datasets/interproscan/interproscan-5.66-98.0/data:/opt/interproscan/data /contrib/singularity/ua-hpc/interproscan/interproscan-5.66-98.0.sif /opt/interproscan/interproscan.sh'",
          Name = "interproscan",
          Version = "5.66-98.0",
          canonical = "5.66-98.0",
          fn = "/opt/ohpc/pub/modulefiles/interproscan/5.66-98.0",
          help = [[	Adds interproscan to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000005.000000066.*zfinal-.000000098.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/interproscan/5.66-98.0/bin"] = 1,
          },
          wV = "000000005.000000066.*zfinal-.000000098.*zfinal",
          whatis = {
            "Name: interproscan", "Version: 5.66-98.0", "Description: 'interproscan' is an alias for 'apptainer exec -B /contrib/datasets/interproscan/interproscan-5.66-98.0/data:/opt/interproscan/data /contrib/singularity/ua-hpc/interproscan/interproscan-5.66-98.0.sif /opt/interproscan/interproscan.sh'",
          },
        },
      },
    },
    iqtree = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["iqtree/1.6.12"] = {
          Name = "iqtree",
          Version = "1.6.12",
          canonical = "1.6.12",
          fn = "/opt/ohpc/pub/modulefiles/iqtree/1.6.12",
          help = [[	Adds iqtree to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000006.000000012.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/iqtree/1.6.12/bin"] = 1,
          },
          wV = "000000001.000000006.000000012.*zfinal",
          whatis = {
            "Name: iqtree", "Version: 1.6.12",
          },
        },
        ["iqtree/2.1.3"] = {
          Name = "iqtree",
          Version = "2.1.3",
          canonical = "2.1.3",
          fn = "/opt/ohpc/pub/modulefiles/iqtree/2.1.3",
          help = [[	Adds iqtree to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000001.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/iqtree/2.1.3/bin"] = 1,
          },
          wV = "000000002.000000001.000000003.*zfinal",
          whatis = {
            "Name: iqtree", "Version: 2.1.3",
          },
        },
      },
    },
    iqtree2 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["iqtree2/2.1.2"] = {
          Name = "iqtree",
          Version = "2.1.2",
          canonical = "2.1.2",
          fn = "/opt/ohpc/pub/modulefiles/iqtree2/2.1.2",
          help = [[	Adds iqtree to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000001.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/iqtree/2.1.2/bin"] = 1,
          },
          wV = "000000002.000000001.000000002.*zfinal",
          whatis = {
            "Name: iqtree", "Version: 2.1.2",
          },
        },
      },
    },
    jags = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["jags/4.3.0"] = {
          Name = "jags",
          Version = "4.3.0",
          canonical = "4.3.0",
          fn = "/opt/ohpc/pub/modulefiles/jags/4.3.0",
          help = [[	Adds jags to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/jags/4.3.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/jags/4.3.0/bin"] = 1,
          },
          wV = "000000004.000000003.*zfinal",
          whatis = {
            "Name: jags", "Version: 4.3.0", "statistical analysis of Bayesian hierarchical models by Markov Chain Monte Carlo",
          },
        },
      },
    },
    java = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["java/18.0.2"] = {
          Name = "java",
          Version = "18.0.2",
          canonical = "18.0.2",
          fn = "/opt/ohpc/pub/modulefiles/java/18.0.2",
          help = [[	Adds java to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/java/18.0.2/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000018.000000000.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/java/18.0.2/bin"] = 1,
          },
          wV = "000000018.000000000.000000002.*zfinal",
          whatis = {
            "Name: java", "Version: 18.0.2",
          },
        },
        ["java/19.0.1"] = {
          Name = "java",
          Version = "19.0.1",
          canonical = "19.0.1",
          fn = "/opt/ohpc/pub/modulefiles/java/19.0.1",
          help = [[	Adds java to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/java/19.0.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000019.000000000.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/java/19.0.1/bin"] = 1,
          },
          wV = "000000019.000000000.000000001.*zfinal",
          whatis = {
            "Name: java", "Version: 19.0.1",
          },
        },
        ["java/21.0.1"] = {
          Name = "java",
          Version = "21.0.1",
          canonical = "21.0.1",
          fn = "/opt/ohpc/pub/modulefiles/java/21.0.1",
          help = [[	Adds java to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/java/21.0.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000021.000000000.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/java/21.0.1/bin"] = 1,
          },
          wV = "000000021.000000000.000000001.*zfinal",
          whatis = {
            "Name: java", "Version: 21.0.1",
          },
        },
      },
    },
    jellyfish = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["jellyfish/2.2.10"] = {
          Name = "jellyfish",
          Version = "2.2.10",
          canonical = "2.2.10",
          fn = "/opt/ohpc/pub/modulefiles/jellyfish/2.2.10",
          help = [[	Adds jellyfish to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/jellyfish/2.2.10/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000002.000000010.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/jellyfish/2.2.10/bin"] = 1,
          },
          wV = "000000002.000000002.000000010.*zfinal",
          whatis = {
            "Name: jellyfish", "Version: 2.2.10",
          },
        },
      },
    },
    julia = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["julia/1.10.6"] = {
          Name = "julia",
          Version = "1.10.6",
          canonical = "1.10.6",
          fn = "/opt/ohpc/pub/modulefiles/julia/1.10.6",
          help = [[	Adds julia to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/julia/1.10.6/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000010.000000006.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/julia/1.10.6/bin"] = 1,
          },
          wV = "000000001.000000010.000000006.*zfinal",
          whatis = {
            "Name: julia", "Version: 1.10.6", "High level programming language",
          },
        },
        ["julia/1.11.1"] = {
          Name = "julia",
          Version = "1.11.1",
          canonical = "1.11.1",
          fn = "/opt/ohpc/pub/modulefiles/julia/1.11.1",
          help = [[	Adds julia to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/julia/1.11.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000011.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/julia/1.11.1/bin"] = 1,
          },
          wV = "000000001.000000011.000000001.*zfinal",
          whatis = {
            "Name: julia", "Version: 1.11.1", "High level programming language",
          },
        },
        ["julia/1.8.5"] = {
          Name = "julia",
          Version = "1.8.5",
          canonical = "1.8.5",
          fn = "/opt/ohpc/pub/modulefiles/julia/1.8.5",
          help = [[	Adds julia to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/julia/1.8.5/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000008.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/julia/1.8.5/bin"] = 1,
          },
          wV = "000000001.000000008.000000005.*zfinal",
          whatis = {
            "Name: julia", "Version: 1.8.5", "High level programming language",
          },
        },
        ["julia/1.9.0"] = {
          Name = "julia",
          Version = "1.9.0",
          canonical = "1.9.0",
          fn = "/opt/ohpc/pub/modulefiles/julia/1.9.0",
          help = [[	Adds julia to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/julia/1.9.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000009.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/julia/1.9.0/bin"] = 1,
          },
          wV = "000000001.000000009.*zfinal",
          whatis = {
            "Name: julia", "Version: 1.9.0", "High level programming language",
          },
        },
        ["julia/1.9.3"] = {
          Name = "julia",
          Version = "1.9.3",
          canonical = "1.9.3",
          fn = "/opt/ohpc/pub/modulefiles/julia/1.9.3",
          help = [[	Adds julia to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/julia/1.9.3/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000009.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/julia/1.9.3/bin"] = 1,
          },
          wV = "000000001.000000009.000000003.*zfinal",
          whatis = {
            "Name: julia", "Version: 1.9.3", "High level programming language",
          },
        },
      },
    },
    kallisto = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["kallisto/0.46.1"] = {
          Name = "kallisto",
          Version = "0.46.1",
          canonical = "0.46.1",
          fn = "/opt/ohpc/pub/modulefiles/kallisto/0.46.1",
          help = [[	Adds kallisto to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000000.000000046.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/kallisto/0.46.1"] = 1,
          },
          wV = "000000000.000000046.000000001.*zfinal",
          whatis = {
            "Name: kallisto", "Version: 0.46.1"
            , "a program for quantifying abundances of transcripts", " from bulk and single-cell RNA-Seq data",
          },
        },
      },
    },
    kokkos = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["kokkos/4.3.1"] = {
          Name = "kokkos",
          Version = "4.3.1",
          canonical = "4.3.1",
          fn = "/opt/ohpc/pub/modulefiles/kokkos/4.3.1",
          help = [[	Adds kokkos to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/kokkos/4.3.1/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000003.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/kokkos/4.3.1/bin"] = 1,
          },
          wV = "000000004.000000003.000000001.*zfinal",
          whatis = {
            "Name: kokkos", "Version: 4.3.1",
          },
        },
      },
    },
    libaec = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["libaec/.1.1.2"] = {
          Name = "libaec",
          Version = "1.1.2",
          canonical = ".1.1.2",
          fn = "/opt/ohpc/pub/modulefiles/libaec/.1.1.2",
          help = [[	Adds libaec to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/libaec/1.1.2/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000000.000000001.000000001.000000002.*zfinal",
          wV = "000000000.000000001.000000001.000000002.*zfinal",
          whatis = {
            "Name: libaec", "Version: 1.1.2",
          },
        },
      },
    },
    libcerf = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["libcerf/2.3"] = {
          Name = "libcerf",
          Version = "2.3",
          canonical = "2.3",
          fn = "/opt/ohpc/pub/modulefiles/libcerf/2.3",
          help = [[	Adds libcerf to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/libcerf/2.3/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000003.*zfinal",
          wV = "000000002.000000003.*zfinal",
          whatis = {
            "Name: libcerf", "Version: 2.3",
          },
        },
      },
    },
    libfabric = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["libfabric/1.18.0"] = {
          Category = "runtime library",
          Description = "Development files for the libfabric library",
          Name = "libfabric",
          URL = "http://www.github.com/ofiwg/libfabric",
          Version = "1.18.0",
          canonical = "1.18.0",
          fn = "/opt/ohpc/pub/modulefiles/libfabric/1.18.0",
          help = [[ 
This module loads the LIBFABRIC library.

Version 1.18.0

]],
          lpathA = {
            ["/opt/ohpc/pub/mpi/libfabric/1.18.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000018.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/mpi/libfabric/1.18.0/bin"] = 1,
          },
          wV = "000000001.000000018.*zfinal",
          whatis = {
            "Name: libfabric", "Version: 1.18.0", "Category: runtime library"
            , "Description: Development files for the libfabric library", "URL: http://www.github.com/ofiwg/libfabric",
          },
        },
      },
    },
    libgd = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["libgd/2.3.3"] = {
          Name = "libgd",
          Version = "2.3.3",
          canonical = "2.3.3",
          fn = "/opt/ohpc/pub/modulefiles/libgd/2.3.3",
          help = [[	Adds libgd to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/libgd/2.3.3/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000003.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/libgd/2.3.3/bin"] = 1,
          },
          wV = "000000002.000000003.000000003.*zfinal",
          whatis = {
            "Name: libgd", "Version: 2.3.3",
          },
        },
      },
    },
    libxml2 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["libxml2/2.13.5"] = {
          Name = "libxml2",
          Version = "2.13.5",
          canonical = "2.13.5",
          fn = "/opt/ohpc/pub/modulefiles/libxml2/2.13.5",
          help = [[	Adds libxml2 to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/libxml2/2.13.5/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000013.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/libxml2/2.13.5/bin"] = 1,
          },
          wV = "000000002.000000013.000000005.*zfinal",
          whatis = {
            "Name: libxml2", "Version: 2.13.5",
          },
        },
      },
    },
    link3d = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["link3d/1.4"] = {
          Name = "link3d",
          Version = "1.4",
          canonical = "1.4",
          fn = "/opt/ohpc/pub/modulefiles/link3d/1.4",
          help = [[	Adds link3d to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/link3d/1.4/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/link3d/1.4/bin"] = 1,
          },
          wV = "000000001.000000004.*zfinal",
          whatis = {
            "Name: link3d", "Version: 1.4",
          },
        },
      },
    },
    mafft = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["mafft/7.471"] = {
          Name = "mafft",
          Version = "7.471",
          canonical = "7.471",
          fn = "/opt/ohpc/pub/modulefiles/mafft/7.471",
          help = [[	Adds mafft to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000007.000000471.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/mafft/7.471/bin"] = 1,
          },
          wV = "000000007.000000471.*zfinal",
          whatis = {
            "Name: mafft", "Version: 7.471", "A multiple sequence alignment program",
          },
        },
      },
    },
    masurca = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["masurca/4.1.4"] = {
          Name = "masurca",
          Version = "4.1.4",
          canonical = "4.1.4",
          fn = "/opt/ohpc/pub/modulefiles/masurca/4.1.4",
          help = [[	Adds masurca to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/masurca/4.1.4/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000001.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/masurca/4.1.4/bin"] = 1,
          },
          wV = "000000004.000000001.000000004.*zfinal",
          whatis = {
            "Name: masurca", "Version: 4.1.4",
          },
        },
      },
    },
    mathematica = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["mathematica/12.3.0"] = {
          Name = "mathematica",
          Version = "12.3.0",
          canonical = "12.3.0",
          fn = "/opt/ohpc/pub/modulefiles/mathematica/12.3.0",
          help = [[	Adds mathematica to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000012.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/mathematica/12.3.0/bin"] = 1,
          },
          wV = "000000012.000000003.*zfinal",
          whatis = {
            "Name: mathematica", "Version: 12.3.0",
          },
        },
      },
    },
    matlab = {
      defaultA = {
        {
          barefn = ".version",
          defaultIdx = 4,
          fn = "/opt/ohpc/pub/modulefiles/matlab/.version",
          fullName = "matlab/.version",
          mpath = "/opt/ohpc/pub/modulefiles",
          value = "r2023a",
        },
      },
      defaultT = {
        barefn = ".version",
        defaultIdx = 4,
        fn = "/opt/ohpc/pub/modulefiles/matlab/.version",
        fullName = "matlab/.version",
        mpath = "/opt/ohpc/pub/modulefiles",
        value = "r2023a",
      },
      dirT = {},
      fileT = {
        ["matlab/.r2020a"] = {
          Name = "matlab",
          Version = "r2020a",
          canonical = ".r2020a",
          fn = "/opt/ohpc/pub/modulefiles/matlab/.r2020a",
          help = [[	Adds matlab to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/matlab/r2020a/sys/ros2/glnxa64/ros2/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2020a/sys/ros2/glnxa64/ros2/opt/libcurl_vendor/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2020a/sys/ros2/glnxa64/ros2/opt/yaml_cpp_vendor/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "*r.000002020.*a.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/matlab/r2020a/bin"] = 1,
          },
          wV = "*r.000002020.*a.*zfinal",
          whatis = {
            "Name: matlab", "Version: r2020a",
          },
        },
        ["matlab/.r2024b"] = {
          Name = "matlab",
          Version = "r2024b",
          canonical = ".r2024b",
          fn = "/opt/ohpc/pub/modulefiles/matlab/.r2024b",
          help = [[	Adds matlab to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/matlab/r2024b/bin/glnxa64/mosquitto/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2024b/sys/FastDDS/glnxa64/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2024b/sys/postgresql/glnxa64/PostgreSQL/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2024b/sys/ros1/glnxa64/ros1/console_bridge/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2024b/sys/ros1/glnxa64/ros1/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2024b/sys/ros1/glnxa64/ros1/lz4/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2024b/sys/ros1/glnxa64/ros1/tinyxml2/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2024b/sys/ros2/glnxa64/ros2/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "*r.000002024.*b.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/matlab/r2024b/bin"] = 1,
          },
          wV = "*r.000002024.*b.*zfinal",
          whatis = {
            "Name: matlab", "Version: r2024b",
          },
        },
        ["matlab/r2020b"] = {
          Name = "matlab",
          Version = "r2020b",
          canonical = "r2020b",
          fn = "/opt/ohpc/pub/modulefiles/matlab/r2020b",
          help = [[	Adds matlab to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/matlab/r2020b/sys/postgresql/glnxa64/PostgreSQL/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2020b/sys/ros1/glnxa64/ros1/console_bridge/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2020b/sys/ros1/glnxa64/ros1/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2020b/sys/ros1/glnxa64/ros1/lz4/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2020b/sys/ros1/glnxa64/ros1/tinyxml2/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2020b/sys/ros2/glnxa64/ros2/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2020b/sys/ros2/glnxa64/ros2/opt/libcurl_vendor/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2020b/sys/ros2/glnxa64/ros2/opt/yaml_cpp_vendor/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "*r.000002020.*b.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/matlab/r2020b/bin"] = 1,
          },
          wV = "*r.000002020.*b.*zfinal",
          whatis = {
            "Name: matlab", "Version: r2020b",
          },
        },
        ["matlab/r2022a"] = {
          Name = "matlab",
          Version = "r2022a",
          canonical = "r2022a",
          fn = "/opt/ohpc/pub/modulefiles/matlab/r2022a",
          help = [[	Adds matlab to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/matlab/r2022a/bin/glnxa64/dlt-daemon/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2022a/sys/FastDDS/glnxa64/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2022a/sys/postgresql/glnxa64/PostgreSQL/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2022a/sys/ros1/glnxa64/ros1/console_bridge/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2022a/sys/ros1/glnxa64/ros1/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2022a/sys/ros1/glnxa64/ros1/lz4/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2022a/sys/ros1/glnxa64/ros1/tinyxml2/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2022a/sys/ros2/glnxa64/ros2/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2022a/sys/ros2/glnxa64/ros2/opt/yaml_cpp_vendor/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "*r.000002022.*a.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/matlab/r2022a/bin"] = 1,
          },
          wV = "*r.000002022.*a.*zfinal",
          whatis = {
            "Name: matlab", "Version: r2022a",
          },
        },
        ["matlab/r2023a"] = {
          Name = "matlab",
          Version = "r2023a",
          canonical = "r2023a",
          fn = "/opt/ohpc/pub/modulefiles/matlab/r2023a",
          help = [[	Adds matlab to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/matlab/r2023a/sys/FastDDS/glnxa64/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2023a/sys/postgresql/glnxa64/PostgreSQL/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2023a/sys/ros1/glnxa64/ros1/console_bridge/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2023a/sys/ros1/glnxa64/ros1/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2023a/sys/ros1/glnxa64/ros1/lz4/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2023a/sys/ros1/glnxa64/ros1/tinyxml2/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2023a/sys/ros2/glnxa64/ros2/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2023a/sys/ros2/glnxa64/ros2/opt/yaml_cpp_vendor/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "*r.000002023.*a.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/matlab/r2023a/bin"] = 1,
          },
          wV = "^r.000002023.*a.*zfinal",
          whatis = {
            "Name: matlab", "Version: r2023a",
          },
        },
        ["matlab/r2023b"] = {
          Name = "matlab",
          Version = "r2023b",
          canonical = "r2023b",
          fn = "/opt/ohpc/pub/modulefiles/matlab/r2023b",
          help = [[	Adds matlab to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/matlab/r2023b/sys/FastDDS/glnxa64/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2023b/sys/postgresql/glnxa64/PostgreSQL/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2023b/sys/ros1/glnxa64/ros1/console_bridge/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2023b/sys/ros1/glnxa64/ros1/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2023b/sys/ros1/glnxa64/ros1/lz4/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2023b/sys/ros1/glnxa64/ros1/tinyxml2/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2023b/sys/ros2/glnxa64/ros2/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "*r.000002023.*b.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/matlab/r2023b/bin"] = 1,
          },
          wV = "*r.000002023.*b.*zfinal",
          whatis = {
            "Name: matlab", "Version: r2023b",
          },
        },
        ["matlab/r2024b"] = {
          Name = "matlab",
          Version = "r2024b",
          canonical = "r2024b",
          fn = "/opt/ohpc/pub/modulefiles/matlab/r2024b",
          help = [[	Adds matlab to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/matlab/r2024b/bin/glnxa64/mosquitto/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2024b/sys/FastDDS/glnxa64/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2024b/sys/postgresql/glnxa64/PostgreSQL/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2024b/sys/ros1/glnxa64/ros1/console_bridge/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2024b/sys/ros1/glnxa64/ros1/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2024b/sys/ros1/glnxa64/ros1/lz4/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2024b/sys/ros1/glnxa64/ros1/tinyxml2/lib"] = 1,
            ["/opt/ohpc/pub/apps/matlab/r2024b/sys/ros2/glnxa64/ros2/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "*r.000002024.*b.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/matlab/r2024b/bin"] = 1,
          },
          wV = "*r.000002024.*b.*zfinal",
          whatis = {
            "Name: matlab", "Version: r2024b",
          },
        },
      },
    },
    maven = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["maven/3.6.3"] = {
          Name = "maven",
          Version = "3.6.3",
          canonical = "3.6.3",
          fn = "/opt/ohpc/pub/modulefiles/maven/3.6.3",
          help = [[	Adds maven to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/maven/3.6.3/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000006.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/maven/3.6.3/bin"] = 1,
          },
          wV = "000000003.000000006.000000003.*zfinal",
          whatis = {
            "Name: maven", "Version: 3.6.3", "Apache Maven is a software project management and comprehension tool",
          },
        },
      },
    },
    mcfost = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["mcfost/4.1.03"] = {
          Name = "mcfost",
          Version = "4.1.03",
          canonical = "4.1.03",
          fn = "/opt/ohpc/pub/modulefiles/mcfost/4.1.03",
          help = [[	Adds mcfost to your environment.  Internally mcfost is called in a container.
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000001.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/mcfost/4.1.03/bin"] = 1,
          },
          wV = "000000004.000000001.000000003.*zfinal",
          whatis = {
            "Name: mcfost", "Version: 4.1.03",
          },
        },
      },
    },
    mcl = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["mcl/14-137"] = {
          Name = "mcl",
          Version = "14-137",
          canonical = "14-137",
          fn = "/opt/ohpc/pub/modulefiles/mcl/14-137",
          help = [[	Adds mcl to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000014.*zfinal-.000000137.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/mcl/14-137/bin"] = 1,
          },
          wV = "000000014.*zfinal-.000000137.*zfinal",
          whatis = {
            "Name: mcl", "Version: 14-137", "Markov clustering algorithm",
          },
        },
      },
    },
    meep = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["meep/1.27"] = {
          Name = "meep",
          Version = "1.27",
          canonical = "1.27",
          fn = "/opt/ohpc/pub/modulefiles/meep/1.27",
          help = [[	Adds meep to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/meep/1.27/lib"] = 1,
            ["/opt/ohpc/pub/apps/meep/1.27/lib/python3.11/site-packages/numpy/_core/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000027.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/meep/1.27/bin"] = 1,
          },
          wV = "000000001.000000027.*zfinal",
          whatis = {
            "Name: meep", "Version: 1.27",
          },
        },
      },
    },
    meme = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["meme/5.4.1"] = {
          Name = "meme",
          Version = "5.4.1",
          canonical = "5.4.1",
          fn = "/opt/ohpc/pub/modulefiles/meme/5.4.1",
          help = [[	Adds meme to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/meme/5.4.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000005.000000004.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/meme/5.4.1/bin"] = 1,
          },
          wV = "000000005.000000004.000000001.*zfinal",
          whatis = {
            "Name: meme", "Version: 5.4.1", "Motif based sequence analysis tools",
          },
        },
      },
    },
    metahipmer = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["metahipmer/2.2.0.0"] = {
          Name = "metahipmer",
          Version = "2.2.0.0",
          canonical = "2.2.0.0",
          fn = "/opt/ohpc/pub/modulefiles/metahipmer/2.2.0.0",
          help = [[	Adds metahipmer to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/metahipmer/2.2.0.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/metahipmer/2.2.0.0/bin"] = 1,
          },
          wV = "000000002.000000002.*zfinal",
          whatis = {
            "Name: metahipmer", "Version: 2.2.0.0",
          },
        },
      },
    },
    metaphlan2 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["metaphlan2/2.0"] = {
          Name = "metaphlan2",
          Version = "2.0",
          canonical = "2.0",
          fn = "/opt/ohpc/pub/modulefiles/metaphlan2/2.0",
          help = [[	Adds metaphlan2 to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/metaphlan2/2.0"] = 1,
          },
          wV = "000000002.*zfinal",
          whatis = {
            "Name: metaphlan2", "Version: 2.0",
          },
        },
      },
    },
    micromamba = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["micromamba/2.0.2-2"] = {
          Name = "micromamba",
          Version = "2.0.2-2",
          canonical = "2.0.2-2",
          fn = "/opt/ohpc/pub/modulefiles/micromamba/2.0.2-2",
          help = [[	Adds micromamba to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000000.000000002.*zfinal-.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/micromamba/2.0.2-2/bin"] = 1,
          },
          wV = "000000002.000000000.000000002.*zfinal-.000000002.*zfinal",
          whatis = {
            "Name: micromamba", "Version: 2.0.2-2",
          },
        },
      },
    },
    midnightcommander = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["midnightcommander/4.8.27"] = {
          Name = "midnightcommander",
          Version = "4.8.27",
          canonical = "4.8.27",
          fn = "/opt/ohpc/pub/modulefiles/midnightcommander/4.8.27",
          help = [[	Adds midnightcommander to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000008.000000027.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/midnightcommander/4.8.27/bin"] = 1,
          },
          wV = "000000004.000000008.000000027.*zfinal",
          whatis = {
            "Name: midnightcommander", "Version: 4.8.27",
          },
        },
      },
    },
    minimap2 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["minimap2/2.24"] = {
          Name = "minimap2",
          Version = "2.24",
          canonical = "2.24",
          fn = "/opt/ohpc/pub/modulefiles/minimap2/2.24",
          help = [[	Adds minimap2 to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000024.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/minimap2/2.24/bin"] = 1,
          },
          wV = "000000002.000000024.*zfinal",
          whatis = {
            "Name: minimap2", "Version: 2.24", "A versatile sequence alignment program",
          },
        },
      },
    },
    minpack = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["minpack/2.0.0"] = {
          Name = "minpack",
          Version = "2.0.0",
          canonical = "2.0.0",
          fn = "/opt/ohpc/pub/modulefiles/minpack/2.0.0",
          help = [[	Adds minpack to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/minpack/2.0.0/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.*zfinal",
          wV = "000000002.*zfinal",
          whatis = {
            "Name: minpack", "Version: 2.0.0",
          },
        },
      },
    },
    mixcr = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["mixcr/4.1.2"] = {
          Name = "mixcr",
          Version = "4.1.2",
          canonical = "4.1.2",
          fn = "/opt/ohpc/pub/modulefiles/mixcr/4.1.2",
          help = [[	Adds mixcr to your environment
This software requires a license. To get a license, go to
https://licensing.milaboratories.com. Once you have the license,
save it under ~/mi.license.
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000001.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/mixcr/4.1.2"] = 1,
          },
          wV = "000000004.000000001.000000002.*zfinal",
          whatis = {
            "Name: mixcr", "Version: 4.1.2",
          },
        },
      },
    },
    molden = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["molden/6.8"] = {
          Name = "molden",
          Version = "6.8",
          canonical = "6.8",
          fn = "/opt/ohpc/pub/modulefiles/molden/6.8",
          help = [[	Adds molden to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000006.000000008.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/molden/6.8/bin"] = 1,
          },
          wV = "000000006.000000008.*zfinal",
          whatis = {
            "Name: molden", "Version: 6.8",
          },
        },
      },
    },
    momap = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["momap/2022a"] = {
          Name = "momap",
          Version = "2022a",
          canonical = "2022a",
          fn = "/opt/ohpc/pub/modulefiles/momap/2022a",
          help = [[	Adds momap to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/momap/2022a/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000002022.*a.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/momap/2022a/bin"] = 1,
          },
          wV = "000002022.*a.*zfinal",
          whatis = {
            "Name: momap", "Version: 2022a",
          },
        },
      },
    },
    mothur = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["mothur/1.44.3"] = {
          Name = "mothur",
          Version = "1.44.3",
          canonical = "1.44.3",
          fn = "/opt/ohpc/pub/modulefiles/mothur/1.44.3",
          help = [[	Adds mothur to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000044.000000003.*zfinal",
          wV = "000000001.000000044.000000003.*zfinal",
          whatis = {
            "Name: mothur", "Version: 1.44.3",
          },
        },
      },
    },
    mpfr = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["mpfr/4.2.1"] = {
          Name = "mpfr",
          Version = "4.2.1",
          canonical = "4.2.1",
          fn = "/opt/ohpc/pub/modulefiles/mpfr/4.2.1",
          help = [[	Adds mpfr to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/mpfr/4.2.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000002.000000001.*zfinal",
          wV = "000000004.000000002.000000001.*zfinal",
          whatis = {
            "Name: mpfr", "Version: 4.2.1",
          },
        },
      },
    },
    mrbayes = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["mrbayes/3.2.7"] = {
          Name = "mrbayes",
          Version = "3.2.7",
          canonical = "3.2.7",
          fn = "/opt/ohpc/pub/modulefiles/mrbayes/3.2.7",
          help = [[	Adds mrbayes to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000002.000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/mrbayes/3.2.7/bin"] = 1,
          },
          wV = "000000003.000000002.000000007.*zfinal",
          whatis = {
            "Name: mrbayes", "Version: 3.2.7",
          },
        },
      },
    },
    msmc = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["msmc/1.1.1"] = {
          Name = "msmc",
          Version = "1.1.1",
          canonical = "1.1.1",
          fn = "/opt/ohpc/pub/modulefiles/msmc/1.1.1",
          help = [[	Adds msmc to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000001.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/msmc/1.1.1/bin"] = 1,
          },
          wV = "000000001.000000001.000000001.*zfinal",
          whatis = {
            "Name: msmc", "Version: 1.1.1",
          },
        },
      },
    },
    msmc2 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["msmc2/2.1.4"] = {
          Name = "msmc2",
          Version = "2.1.4",
          canonical = "2.1.4",
          fn = "/opt/ohpc/pub/modulefiles/msmc2/2.1.4",
          help = [[	Adds msmc2 to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000001.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/msmc2/2.1.4/bin"] = 1,
          },
          wV = "000000002.000000001.000000004.*zfinal",
          whatis = {
            "Name: msmc2", "Version: 2.1.4",
          },
        },
      },
    },
    multinest = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["multinest/3.10b"] = {
          Name = "multinest",
          Version = "3.10b",
          canonical = "3.10b",
          fn = "/opt/ohpc/pub/modulefiles/multinest/3.10b",
          help = [[	Adds multinest to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/multinest/3.10b/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000010.*b.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/multinest/3.10b/bin"] = 1,
          },
          wV = "000000003.000000010.*b.*zfinal",
          whatis = {
            "Name: multinest", "Version: 3.10b",
          },
        },
      },
    },
    mummer = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["mummer/4.0.0rc1"] = {
          Name = "mummer",
          Version = "4.0.0rc1",
          canonical = "4.0.0rc1",
          fn = "/opt/ohpc/pub/modulefiles/mummer/4.0.0rc1",
          help = [[	Adds mummer to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/mummer/4.0.0rc1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.*c.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/mummer/4.0.0rc1/bin"] = 1,
          },
          wV = "000000004.*c.000000001.*zfinal",
          whatis = {
            "Name: mummer", "Version: 4.0.0rc1",
          },
        },
      },
    },
    muscle = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["muscle/5.1.0"] = {
          Name = "muscle",
          Version = "5.1.0",
          canonical = "5.1.0",
          fn = "/opt/ohpc/pub/modulefiles/muscle/5.1.0",
          help = [[	Adds muscle to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000005.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/muscle/5.1.0/bin"] = 1,
          },
          wV = "000000005.000000001.*zfinal",
          whatis = {
            "Name: muscle", "Version: 5.1.0",
          },
        },
      },
    },
    namd = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["namd/3.0.1"] = {
          Name = "namd",
          Version = "3.0.1",
          canonical = "3.0.1",
          fn = "/opt/ohpc/pub/modulefiles/namd/3.0.1",
          help = [[	Adds namd to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/namd/3.0.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000000.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/namd/3.0.1"] = 1,
          },
          wV = "000000003.000000000.000000001.*zfinal",
          whatis = {
            "Name: namd", "Version: 3.0.1", "Multicore with Cuda single node version",
          },
        },
        ["namd/3.0a"] = {
          Name = "namd",
          Version = "3.0a",
          canonical = "3.0a",
          fn = "/opt/ohpc/pub/modulefiles/namd/3.0a",
          help = [[	Adds namd to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/namd/3.0a/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.*a.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/namd/3.0a"] = 1,
          },
          wV = "000000003.*a.*zfinal",
          whatis = {
            "Name: namd", "Version: 3.0a", "Multicore with Cuda single node version",
          },
        },
      },
    },
    nanopolish = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nanopolish/0.14.0"] = {
          Name = "nanopolish",
          Version = "0.14.0",
          canonical = "0.14.0",
          fn = "/opt/ohpc/pub/modulefiles/nanopolish/0.14.0",
          help = [[	Adds nanopolish to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000000.000000014.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nanopolish/0.14.0/bin"] = 1,
          },
          wV = "000000000.000000014.*zfinal",
          whatis = {
            "Name: nanopolish", "Version: 0.14.0",
          },
        },
      },
    },
    ["ncbi-vdb"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["ncbi-vdb/2.10.8"] = {
          Name = "ncbi-vdb",
          Version = "2.10.8",
          canonical = "2.10.8",
          fn = "/opt/ohpc/pub/modulefiles/ncbi-vdb/2.10.8",
          help = [[	Adds ncbi-vdb to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/ncbi-vdb/2.10.8/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000010.000000008.*zfinal",
          wV = "000000002.000000010.000000008.*zfinal",
          whatis = {
            "Name: ncbi-vdb", "Version: 2.10.8",
          },
        },
      },
    },
    ncdu = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["ncdu/2.4"] = {
          Name = "ncdu",
          Version = "2.4",
          canonical = "2.4",
          fn = "/opt/ohpc/pub/modulefiles/ncdu/2.4",
          help = [[	Adds ncdu to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/ncdu/2.4"] = 1,
          },
          wV = "000000002.000000004.*zfinal",
          whatis = {
            "Name: ncdu", "Version: 2.4", "Disk space usage",
          },
        },
      },
    },
    ncl_ncarg = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["ncl_ncarg/6.6.2"] = {
          Name = "ncl_ncarg",
          Version = "6.6.2",
          canonical = "6.6.2",
          fn = "/opt/ohpc/pub/modulefiles/ncl_ncarg/6.6.2",
          help = [[	Adds ncl_ncarg to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/ncl_ncarg/6.6.2/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000006.000000006.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/ncl_ncarg/6.6.2/bin"] = 1,
          },
          wV = "000000006.000000006.000000002.*zfinal",
          whatis = {
            "Name: ncl_ncarg", "Version: 6.6.2",
          },
        },
      },
    },
    nco = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nco/4.9.3"] = {
          Name = "nco",
          Version = "4.9.3",
          canonical = "4.9.3",
          fn = "/opt/ohpc/pub/modulefiles/nco/4.9.3",
          help = [[	Adds nco to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/nco/4.9.3/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000009.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nco/4.9.3/bin"] = 1,
          },
          wV = "000000004.000000009.000000003.*zfinal",
          whatis = {
            "Name: nco", "Version: 4.9.3",
          },
        },
        ["nco/5.0.7"] = {
          Name = "nco",
          Version = "5.0.7",
          canonical = "5.0.7",
          fn = "/opt/ohpc/pub/modulefiles/nco/5.0.7",
          help = [[	Adds nco to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/nco/5.0.7/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000005.000000000.000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nco/5.0.7/bin"] = 1,
          },
          wV = "000000005.000000000.000000007.*zfinal",
          whatis = {
            "Name: nco", "Version: 5.0.7",
          },
        },
      },
    },
    netlogo = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["netlogo/6.2.2"] = {
          Name = "netlogo",
          Version = "6.2.2",
          canonical = "6.2.2",
          fn = "/opt/ohpc/pub/modulefiles/netlogo/6.2.2",
          help = [[	Adds netlogo to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000006.000000002.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/netlogo/6.2.2"] = 1,
          },
          wV = "000000006.000000002.000000002.*zfinal",
          whatis = {
            "Name: netlogo", "Version: 6.2.2",
          },
        },
        ["netlogo/6.3.0"] = {
          Name = "netlogo",
          Version = "6.3.0",
          canonical = "6.3.0",
          fn = "/opt/ohpc/pub/modulefiles/netlogo/6.3.0",
          help = [[	Adds netlogo to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/netlogo/6.3.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000006.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/netlogo/6.3.0"] = 1,
            ["/opt/ohpc/pub/apps/netlogo/6.3.0/bin"] = 1,
          },
          wV = "000000006.000000003.*zfinal",
          whatis = {
            "Name: netlogo", "Version: 6.3.0",
          },
        },
      },
    },
    nextflow = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nextflow/22.10.7.5853"] = {
          Name = "nextflow",
          Version = "22.10.7.5853",
          canonical = "22.10.7.5853",
          fn = "/opt/ohpc/pub/modulefiles/nextflow/22.10.7.5853",
          help = [[	Adds nextflow to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000022.000000010.000000007.000005853.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nextflow/22.10.7.5853/bin"] = 1,
          },
          wV = "000000022.000000010.000000007.000005853.*zfinal",
          whatis = {
            "Name: nextflow", "Version: 22.10.7.5853",
          },
        },
        ["nextflow/25.04.3.5949"] = {
          Name = "nextflow",
          Version = "25.04.3.5949",
          canonical = "25.04.3.5949",
          fn = "/opt/ohpc/pub/modulefiles/nextflow/25.04.3.5949",
          help = [[	Adds nextflow to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000025.000000004.000000003.000005949.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nextflow/25.04.3.5949/bin"] = 1,
          },
          wV = "000000025.000000004.000000003.000005949.*zfinal",
          whatis = {
            "Name: nextflow", "Version: 25.04.3.5949",
          },
        },
      },
    },
    ["ngs-sdk"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["ngs-sdk/2.10.8"] = {
          Name = "ngs-sdk",
          Version = "2.10.8",
          canonical = "2.10.8",
          fn = "/opt/ohpc/pub/modulefiles/ngs-sdk/2.10.8",
          help = [[	Adds ngs-sdk to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/ngs-sdk/2.10.8/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000010.000000008.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/ngs-sdk/2.10.8/bin64"] = 1,
          },
          wV = "000000002.000000010.000000008.*zfinal",
          whatis = {
            "Name: ngs-sdk", "Version: 2.10.8",
          },
        },
      },
    },
    ["nvidia-hpc-sdk"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nvidia-hpc-sdk/23.7"] = {
          Name = "nvidia-hpc-sdk",
          Version = "23.7",
          canonical = "23.7",
          changeMPATH = true,
          fn = "/opt/ohpc/pub/modulefiles/nvidia-hpc-sdk/23.7",
          help = [[	Adds nvidia-hpc-sdk to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/11.0/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/11.8/hpcx/hpcx-2.14/hcoll/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/11.8/hpcx/hpcx-2.14/hcoll/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/11.8/hpcx/hpcx-2.14/ompi/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/11.8/hpcx/hpcx-2.14/sharp/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/11.8/hpcx/hpcx-2.14/sharp/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/11.8/hpcx/hpcx-2.14/ucx/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/11.8/hpcx/hpcx-2.14/ucx/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/11.8/hpcx/hpcx-2.14/ucx/mt/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/11.8/hpcx/hpcx-2.14/ucx/prof/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/11.8/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/11.8/openmpi4/openmpi-4.1.5/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/12.2/hpcx/hpcx-2.15/hcoll/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/12.2/hpcx/hpcx-2.15/hcoll/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/12.2/hpcx/hpcx-2.15/ompi/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/12.2/hpcx/hpcx-2.15/sharp/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/12.2/hpcx/hpcx-2.15/sharp/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/12.2/hpcx/hpcx-2.15/ucx/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/12.2/hpcx/hpcx-2.15/ucx/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/12.2/hpcx/hpcx-2.15/ucx/mt/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/12.2/hpcx/hpcx-2.15/ucx/prof/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/12.2/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/12.2/openmpi4/openmpi-4.1.5/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/Linux_x86_64/23.7/comm_libs/openmpi/openmpi-3.1.5/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000023.000000007.*zfinal",
          wV = "000000023.000000007.*zfinal",
          whatis = {
            "Name: nvidia-hpc-sdk", "Version: 23.7",
          },
        },
        ["nvidia-hpc-sdk/23.9"] = {
          Name = "nvidia-hpc-sdk",
          Version = "23.9",
          canonical = "23.9",
          fn = "/opt/ohpc/pub/modulefiles/nvidia-hpc-sdk/23.9",
          help = [[	Adds nvidia-hpc-sdk to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/11.0/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/11.8/hpcx/hpcx-2.14/hcoll/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/11.8/hpcx/hpcx-2.14/hcoll/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/11.8/hpcx/hpcx-2.14/ompi/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/11.8/hpcx/hpcx-2.14/sharp/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/11.8/hpcx/hpcx-2.14/sharp/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/11.8/hpcx/hpcx-2.14/ucx/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/11.8/hpcx/hpcx-2.14/ucx/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/11.8/hpcx/hpcx-2.14/ucx/mt/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/11.8/hpcx/hpcx-2.14/ucx/prof/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/11.8/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/11.8/openmpi4/openmpi-4.1.5/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/12.2/hpcx/hpcx-2.16/hcoll/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/12.2/hpcx/hpcx-2.16/hcoll/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/12.2/hpcx/hpcx-2.16/ompi/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/12.2/hpcx/hpcx-2.16/sharp/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/12.2/hpcx/hpcx-2.16/sharp/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/12.2/hpcx/hpcx-2.16/ucx/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/12.2/hpcx/hpcx-2.16/ucx/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/12.2/hpcx/hpcx-2.16/ucx/mt/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/12.2/hpcx/hpcx-2.16/ucx/prof/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/12.2/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/12.2/openmpi4/openmpi-4.1.5/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.9/Linux_x86_64/23.9/comm_libs/openmpi/openmpi-3.1.5/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000023.000000009.*zfinal",
          wV = "000000023.000000009.*zfinal",
          whatis = {
            "Name: nvidia-hpc-sdk", "Version: 23.9",
          },
        },
        ["nvidia-hpc-sdk/24.5"] = {
          Name = "nvidia-hpc-sdk",
          Version = "24.5",
          canonical = "24.5",
          changeMPATH = true,
          fn = "/opt/ohpc/pub/modulefiles/nvidia-hpc-sdk/24.5",
          help = [[	Adds nvidia-hpc-sdk to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/11.8/hpcx/hpcx-2.14/hcoll/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/11.8/hpcx/hpcx-2.14/hcoll/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/11.8/hpcx/hpcx-2.14/ompi/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/11.8/hpcx/hpcx-2.14/sharp/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/11.8/hpcx/hpcx-2.14/sharp/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/11.8/hpcx/hpcx-2.14/ucx/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/11.8/hpcx/hpcx-2.14/ucx/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/11.8/hpcx/hpcx-2.14/ucx/mt/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/11.8/hpcx/hpcx-2.14/ucx/prof/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/11.8/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/11.8/openmpi4/openmpi-4.1.5/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/12.4/hpcx/hpcx-2.19/hcoll/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/12.4/hpcx/hpcx-2.19/hcoll/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/12.4/hpcx/hpcx-2.19/ompi/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/12.4/hpcx/hpcx-2.19/sharp/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/12.4/hpcx/hpcx-2.19/sharp/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/12.4/hpcx/hpcx-2.19/ucx/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/12.4/hpcx/hpcx-2.19/ucx/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/12.4/hpcx/hpcx-2.19/ucx/mt/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/12.4/hpcx/hpcx-2.19/ucx/prof/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/12.4/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/12.4/openmpi4/openmpi-4.1.5/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/Linux_x86_64/24.5/comm_libs/openmpi/openmpi-3.1.5/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000024.000000005.*zfinal",
          wV = "000000024.000000005.*zfinal",
          whatis = {
            "Name: nvidia-hpc-sdk", "Version: 24.5",
          },
        },
        ["nvidia-hpc-sdk/24.7"] = {
          Name = "nvidia-hpc-sdk",
          Version = "24.7",
          canonical = "24.7",
          changeMPATH = true,
          fn = "/opt/ohpc/pub/modulefiles/nvidia-hpc-sdk/24.7",
          help = [[	Adds nvidia-hpc-sdk to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/12.5/hpcx/hpcx-2.19/hcoll/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/12.5/hpcx/hpcx-2.19/hcoll/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/12.5/hpcx/hpcx-2.19/ompi/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/12.5/hpcx/hpcx-2.19/sharp/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/12.5/hpcx/hpcx-2.19/sharp/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/12.5/hpcx/hpcx-2.19/ucx/debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/12.5/hpcx/hpcx-2.19/ucx/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/12.5/hpcx/hpcx-2.19/ucx/mt/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/12.5/hpcx/hpcx-2.19/ucx/prof/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/12.5/nccl/lib"] = 1,
            ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/Linux_x86_64/24.7/comm_libs/12.5/openmpi4/openmpi-4.1.5/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000024.000000007.*zfinal",
          wV = "000000024.000000007.*zfinal",
          whatis = {
            "Name: nvidia-hpc-sdk", "Version: 24.7",
          },
        },
      },
    },
    nwchem = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["nwchem/7.2.2"] = {
          Name = "nwchem",
          Version = "7.2.2",
          canonical = "7.2.2",
          fn = "/opt/ohpc/pub/modulefiles/nwchem/7.2.2",
          help = [[	Adds nwchem to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000007.000000002.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/nwchem/7.2.2/bin"] = 1,
          },
          wV = "000000007.000000002.000000002.*zfinal",
          whatis = {
            "Name: nwchem", "Version: 7.2.2",
          },
        },
      },
    },
    obitools = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["obitools/4.4.0"] = {
          Name = "obitools",
          Version = "4.4.0",
          canonical = "4.4.0",
          fn = "/opt/ohpc/pub/modulefiles/obitools/4.4.0",
          help = [[	Adds obitools to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/obitools/4.4.0/bin"] = 1,
          },
          wV = "000000004.000000004.*zfinal",
          whatis = {
            "Name: obitools", "Version: 4.4.0",
          },
        },
      },
    },
    ohpc = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ohpc = {
          Version = false,
          canonical = "",
          fn = "/opt/ohpc/pub/modulefiles/ohpc",
          help = [[Setup default login environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "M.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/bin"] = 1,
          },
          wV = "M.*zfinal",
        },
      },
    },
    openfoam = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["openfoam/2406"] = {
          Name = "openfoam",
          Version = "2406",
          canonical = "2406",
          fn = "/opt/ohpc/pub/modulefiles/openfoam/2406",
          help = [[	Adds openfoam to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/openfoam/2406/OpenFOAM-v2406/platforms/linux64GccDPInt32Opt/lib"] = 1,
            ["/opt/ohpc/pub/apps/openfoam/2406/ThirdParty-v2406/platforms/linux64Gcc/fftw-3.3.10/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000002406.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/openfoam/2406/OpenFOAM-v2406/bin"] = 1,
            ["/opt/ohpc/pub/apps/openfoam/2406/OpenFOAM-v2406/platforms/linux64GccDPInt32Opt/bin"] = 1,
          },
          wV = "000002406.*zfinal",
          whatis = {
            "Name: openfoam", "Version: 2406", "Open source Computational Fluid Dynamics software",
          },
        },
        ["openfoam/2412"] = {
          Name = "openfoam",
          Version = "2412",
          canonical = "2412",
          fn = "/opt/ohpc/pub/modulefiles/openfoam/2412",
          help = [[	Adds openfoam to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/openfoam/2412/ThirdParty-v2412/platforms/linux64Gcc/fftw-3.3.10/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000002412.*zfinal",
          wV = "000002412.*zfinal",
          whatis = {
            "Name: openfoam", "Version: 2412",
          },
        },
      },
    },
    openmolcas = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["openmolcas/23.10"] = {
          Name = "openmolcas",
          Version = "23.10",
          canonical = "23.10",
          fn = "/opt/ohpc/pub/modulefiles/openmolcas/23.10",
          help = [[	Adds openmolcas to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/openmolcas/23.10/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000023.000000010.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/openmolcas/23.10/bin"] = 1,
          },
          wV = "000000023.000000010.*zfinal",
          whatis = {
            "Name: openmolcas", "Version: 23.10",
          },
        },
      },
    },
    orthofinder = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["orthofinder/2.4.0"] = {
          Name = "orthofinder",
          Version = "2.4.0",
          canonical = "2.4.0",
          fn = "/opt/ohpc/pub/modulefiles/orthofinder/2.4.0",
          help = [[	Adds orthofinder to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/orthofinder/2.4.0"] = 1,
            ["/opt/ohpc/pub/apps/orthofinder/2.4.0/bin"] = 1,
          },
          wV = "000000002.000000004.*zfinal",
          whatis = {
            "Name: orthofinder", "Version: 2.4.0", "Comparative genomics",
          },
        },
        ["orthofinder/2.5.4"] = {
          Name = "orthofinder",
          Version = "2.5.4",
          canonical = "2.5.4",
          fn = "/opt/ohpc/pub/modulefiles/orthofinder/2.5.4",
          help = [[	Adds orthofinder to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000005.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/orthofinder/2.5.4"] = 1,
            ["/opt/ohpc/pub/apps/orthofinder/2.5.4/bin"] = 1,
          },
          wV = "000000002.000000005.000000004.*zfinal",
          whatis = {
            "Name: orthofinder", "Version: 2.5.4",
          },
        },
        ["orthofinder/2.5.5"] = {
          Name = "orthofinder",
          Version = "2.5.5",
          canonical = "2.5.5",
          fn = "/opt/ohpc/pub/modulefiles/orthofinder/2.5.5",
          help = [[	Adds orthofinder to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000005.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/orthofinder/2.5.5/bin"] = 1,
          },
          wV = "000000002.000000005.000000005.*zfinal",
          whatis = {
            "Name: orthofinder", "Version: 2.5.5",
          },
        },
      },
    },
    os = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        os = {
          Name = "Operating System provided modules",
          Version = false,
          canonical = "",
          changeMPATH = true,
          fn = "/opt/ohpc/pub/modulefiles/os",
          help = [[Enable operating system provided modules
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "M.*zfinal",
          wV = "M.*zfinal",
          whatis = {
            "Name: Operating System provided modules",
          },
        },
      },
    },
    parallel = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["parallel/20200422"] = {
          Name = "parallel",
          Version = "20200422",
          canonical = "20200422",
          fn = "/opt/ohpc/pub/modulefiles/parallel/20200422",
          help = [[	Adds parallel to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "020200422.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/parallel/20200422/bin"] = 1,
          },
          wV = "020200422.*zfinal",
          whatis = {
            "Name: parallel", "Version: 20200422",
          },
        },
        ["parallel/20241122"] = {
          Name = "parallel",
          Version = "20241122",
          canonical = "20241122",
          fn = "/opt/ohpc/pub/modulefiles/parallel/20241122",
          help = [[	Adds parallel to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "020241122.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/parallel/20241122/bin"] = 1,
          },
          wV = "020241122.*zfinal",
          whatis = {
            "Name: parallel", "Version: 20241122",
          },
        },
      },
    },
    paraview = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["paraview/5.8.1"] = {
          Name = "paraview",
          Version = "5.8.1",
          canonical = "5.8.1",
          fn = "/opt/ohpc/pub/modulefiles/paraview/5.8.1",
          help = [[	Adds paraview to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/paraview/5.8.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000005.000000008.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/paraview/5.8.1/bin"] = 1,
          },
          wV = "000000005.000000008.000000001.*zfinal",
          whatis = {
            "Name: paraview", "Version: 5.8.1"
            , "Data analysis and visualization application"
            , "Suite of server side applications for rendering without", " an X server",
          },
        },
      },
    },
    paup = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["paup/4.0a169"] = {
          Name = "paup",
          Version = "4.0a169",
          canonical = "4.0a169",
          fn = "/opt/ohpc/pub/modulefiles/paup/4.0a169",
          help = [[	Adds paup to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.*a.000000169.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/paup/4.0a169/bin"] = 1,
          },
          wV = "000000004.*a.000000169.*zfinal",
          whatis = {
            "Name: paup", "Version: 4.0a169",
          },
        },
      },
    },
    perl = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["perl/5.36.0"] = {
          Name = "perl",
          Version = "5.36.0",
          canonical = "5.36.0",
          fn = "/opt/ohpc/pub/modulefiles/perl/5.36.0",
          help = [[	Adds perl to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/perl/5.36.0/lib"] = 1,
            ["/opt/ohpc/pub/apps/perl/5.36.0/lib/site_perl/5.36.0"] = 1,
            ["/opt/ohpc/pub/apps/perl/5.36.0/lib/site_perl/5.36.0/x86_64-linux-thread-multi"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000005.000000036.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/perl/5.36.0/bin"] = 1,
          },
          wV = "000000005.000000036.*zfinal",
          whatis = {
            "Name: perl", "Version: 5.36.0",
          },
        },
      },
    },
    petsc = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["petsc/3.21.5"] = {
          Name = "petsc",
          Version = "3.21.5",
          canonical = "3.21.5",
          fn = "/opt/ohpc/pub/modulefiles/petsc/3.21.5",
          help = [[	Adds petsc to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/petsc/3.21.5/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000021.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/petsc/3.21.5/bin"] = 1,
          },
          wV = "000000003.000000021.000000005.*zfinal",
          whatis = {
            "Name: petsc", "Version: 3.21.5",
          },
        },
      },
    },
    pflotran = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["pflotran/5.0"] = {
          Name = "pflotran",
          Version = "5.0",
          canonical = "5.0",
          fn = "/opt/ohpc/pub/modulefiles/pflotran/5.0",
          help = [[	Adds pflotran to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/pflotran/5.0/lib"] = 1,
            ["/opt/ohpc/pub/apps/pflotran/5.0/petsc/arch-linux-c-opt/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/pflotran/5.0/bin"] = 1,
          },
          wV = "000000005.*zfinal",
          whatis = {
            "Name: pflotran", "Version: 5.0",
          },
        },
        ["pflotran/6.0"] = {
          Name = "pflotran",
          Version = "6.0",
          canonical = "6.0",
          fn = "/opt/ohpc/pub/modulefiles/pflotran/6.0",
          help = [[	Adds pflotran to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/pflotran/6.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000006.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/pflotran/6.0/bin"] = 1,
          },
          wV = "000000006.*zfinal",
          whatis = {
            "Name: pflotran", "Version: 6.0",
          },
        },
      },
    },
    picard = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["picard/2.23.4"] = {
          Name = "picard",
          Version = "2.23.4",
          canonical = "2.23.4",
          fn = "/opt/ohpc/pub/modulefiles/picard/2.23.4",
          help = [[	Adds picard to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000023.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/picard/2.23.4"] = 1,
            ["/opt/ohpc/pub/apps/picard/2.23.4/bin"] = 1,
          },
          wV = "000000002.000000023.000000004.*zfinal",
          whatis = {
            "Name: picard", "Version: 2.23.4"
            , "A set of tools for manipulating high-throughput sequencing data", "The Broad Institute",
          },
        },
      },
    },
    picrust2 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["picrust2/2.5.2"] = {
          Description = "picrust2_pipeline is an alias for 'apptainer exec /contrib/singularity/ua-hpc/picrust2/picrust2-2.5.2.sif picrust2_pipeline.py'",
          Name = "picrust2",
          Version = "2.5.2",
          canonical = "2.5.2",
          fn = "/opt/ohpc/pub/modulefiles/picrust2/2.5.2",
          help = [[	Adds picrust2 to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000005.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/picrust2/2.5.2/bin"] = 1,
          },
          wV = "000000002.000000005.000000002.*zfinal",
          whatis = {
            "Name: picrust2", "Version: 2.5.2", "Description: picrust2_pipeline is an alias for 'apptainer exec /contrib/singularity/ua-hpc/picrust2/picrust2-2.5.2.sif picrust2_pipeline.py'",
          },
        },
      },
    },
    pigz = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["pigz/2.7"] = {
          Name = "pigz",
          Version = "2.7",
          canonical = "2.7",
          fn = "/opt/ohpc/pub/modulefiles/pigz/2.7",
          help = [[	Adds pigz to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/pigz/2.7/bin"] = 1,
          },
          wV = "000000002.000000007.*zfinal",
          whatis = {
            "Name: pigz", "Version: 2.7",
          },
        },
      },
    },
    plink = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["plink/1.9"] = {
          Name = "plink",
          Version = "1.9",
          canonical = "1.9",
          fn = "/opt/ohpc/pub/modulefiles/plink/1.9",
          help = [[	Adds plink to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000009.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/plink/1.9"] = 1,
          },
          wV = "000000001.000000009.*zfinal",
          whatis = {
            "Name: plink", "Version: 1.9", "Whole genome analysis toolset",
          },
        },
        ["plink/2.0"] = {
          Name = "plink",
          Version = "2.0",
          canonical = "2.0",
          fn = "/opt/ohpc/pub/modulefiles/plink/2.0",
          help = [[	Adds plink to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/plink/2.0/bin"] = 1,
          },
          wV = "000000002.*zfinal",
          whatis = {
            "Name: plink", "Version: 2.0",
          },
        },
      },
    },
    pmix = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["pmix/4.2.9"] = {
          Name = "pmix",
          Version = "4.2.9",
          canonical = "4.2.9",
          fn = "/opt/ohpc/pub/modulefiles/pmix/4.2.9",
          help = [[This module loads the pmix library.
]],
          lpathA = {
            ["/opt/ohpc/admin/pmix/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000002.000000009.*zfinal",
          wV = "000000004.000000002.000000009.*zfinal",
          whatis = {
            "Name: pmix", "Version: 4.2.9",
          },
        },
      },
    },
    prodigal = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["prodigal/2.6.3"] = {
          Name = "prodigal",
          Version = "2.6.3",
          canonical = "2.6.3",
          fn = "/opt/ohpc/pub/modulefiles/prodigal/2.6.3",
          help = [[	Adds prodigal to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000006.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/prodigal/2.6.3"] = 1,
          },
          wV = "000000002.000000006.000000003.*zfinal",
          whatis = {
            "Name: prodigal", "Version: 2.6.3",
          },
        },
      },
    },
    prun = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["prun/2.2"] = {
          Category = "resource manager tools",
          Description = "job launch utility for multiple MPI families",
          Name = "prun job launch utility",
          Version = "2.2",
          canonical = "2.2",
          fn = "/opt/ohpc/pub/modulefiles/prun/2.2",
          help = [[ 
This module loads the prun job launch utility
 
Version 2.2
 
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/utils/prun/2.2"] = 1,
          },
          wV = "000000002.000000002.*zfinal",
          whatis = {
            "Name: prun job launch utility", "Version: 2.2"
            , "Category: resource manager tools", "Description: job launch utility for multiple MPI families",
          },
        },
      },
    },
    pymol = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["pymol/2.3.0"] = {
          Description = "'pymol' is an alias for 'apptainer run /contrib/singularity/pymol/pymol.sif'",
          Name = "pymol",
          Version = "2.3.0",
          canonical = "2.3.0",
          fn = "/opt/ohpc/pub/modulefiles/pymol/2.3.0",
          help = [[	Adds Tensorflow to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/pymol/2.3.0"] = 1,
          },
          wV = "000000002.000000003.*zfinal",
          whatis = {
            "Name: pymol", "Version: 2.3.0", "Description: 'pymol' is an alias for 'apptainer run /contrib/singularity/pymol/pymol.sif'",
          },
        },
      },
    },
    python = {
      defaultA = {
        {
          barefn = ".version",
          defaultIdx = 4,
          fn = "/opt/ohpc/pub/modulefiles/python/.version",
          fullName = "python/.version",
          mpath = "/opt/ohpc/pub/modulefiles",
          value = "3.11/3.11.4",
        },
      },
      defaultT = {
        barefn = ".version",
        defaultIdx = 4,
        fn = "/opt/ohpc/pub/modulefiles/python/.version",
        fullName = "python/.version",
        mpath = "/opt/ohpc/pub/modulefiles",
        value = "3.11/3.11.4",
      },
      dirT = {
        ["python/3.11"] = {
          defaultA = {},
          defaultT = {},
          dirT = {},
          fileT = {
            ["python/3.11/3.11.4"] = {
              Name = "python",
              Version = "3.11.4",
              canonical = "3.11.4",
              fn = "/opt/ohpc/pub/modulefiles/python/3.11/3.11.4",
              help = [[	Adds python to your environment
]],
              lpathA = {
                ["/opt/ohpc/pub/apps/python/3.11.4/lib"] = 1,
              },
              mpath = "/opt/ohpc/pub/modulefiles",
              pV = "000000003.000000011/000000003.000000011.000000004.*zfinal",
              pathA = {
                ["/opt/ohpc/pub/apps/python/3.11.4/bin"] = 1,
              },
              wV = "000000003.000000011/000000003.000000011.000000004.*zfinal",
              whatis = {
                "Name: python", "Version: 3.11.4",
              },
            },
          },
        },
        ["python/3.8"] = {
          defaultA = {},
          defaultT = {},
          dirT = {},
          fileT = {
            ["python/3.8/3.8.12"] = {
              Name = "python",
              Version = "3.8.12",
              canonical = "3.8.12",
              fn = "/opt/ohpc/pub/modulefiles/python/3.8/3.8.12",
              help = [[	Adds python to your environment
]],
              lpathA = {
                ["/opt/ohpc/pub/apps/python/3.8.12/lib"] = 1,
              },
              mpath = "/opt/ohpc/pub/modulefiles",
              pV = "000000003.000000008/000000003.000000008.000000012.*zfinal",
              pathA = {
                ["/opt/ohpc/pub/apps/python/3.8.12/bin"] = 1,
              },
              wV = "000000003.000000008/000000003.000000008.000000012.*zfinal",
              whatis = {
                "Name: python", "Version: 3.8.12",
              },
            },
          },
        },
        ["python/3.9"] = {
          defaultA = {},
          defaultT = {},
          dirT = {},
          fileT = {
            ["python/3.9/3.9.10"] = {
              Name = "python",
              Version = "3.9.10",
              canonical = "3.9.10",
              fn = "/opt/ohpc/pub/modulefiles/python/3.9/3.9.10",
              help = [[	Adds python to your environment
]],
              lpathA = {
                ["/opt/ohpc/pub/apps/python/3.9.10/lib"] = 1,
              },
              mpath = "/opt/ohpc/pub/modulefiles",
              pV = "000000003.000000009/000000003.000000009.000000010.*zfinal",
              pathA = {
                ["/opt/ohpc/pub/apps/python/3.9.10/bin"] = 1,
              },
              wV = "000000003.000000009/000000003.000000009.000000010.*zfinal",
              whatis = {
                "Name: python", "Version: 3.9.10",
              },
            },
          },
        },
      },
      fileT = {},
    },
    ["pytorch/nvidia"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["pytorch/nvidia/20.01"] = {
          Description = "'pytorch' is an alias for 'singularity exec --nv /contrib/singularity/nvidia/nvidia-pytorch.20.01-py3.simg python'",
          Name = "PyTorch",
          Version = "nvidia-pytorch.20.01-py3",
          canonical = "20.01",
          fn = "/opt/ohpc/pub/modulefiles/pytorch/nvidia/20.01",
          help = [[	Adds PyTorch to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000020.000000001.*zfinal",
          wV = "000000020.000000001.*zfinal",
          whatis = {
            "Name: PyTorch", "Version: nvidia-pytorch.20.01-py3"
            , "Description: 'pytorch' is an alias for 'singularity exec --nv /contrib/singularity/nvidia/nvidia-pytorch.20.01-py3.simg python'", "Readme is at /contrib/singularity/nvidia/nvidia-pytorch.README",
          },
        },
        ["pytorch/nvidia/22.12"] = {
          Description = "'pytorch' is an alias for 'singularity exec --nv /contrib/singularity/nvidia/nvidia-pytorch-22.07.sif  python3'",
          Name = "pytorch/nvidia",
          Version = "22.07",
          canonical = "22.12",
          fn = "/opt/ohpc/pub/modulefiles/pytorch/nvidia/22.12",
          help = [[	Adds pytorch/nvidia to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000022.000000012.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/pytorch/nvidia/22.12"] = 1,
          },
          wV = "000000022.000000012.*zfinal",
          whatis = {
            "Name: pytorch/nvidia", "Version: 22.07"
            , "Description: 'pytorch' is an alias for 'singularity exec --nv /contrib/singularity/nvidia/nvidia-pytorch-22.07.sif  python3'", "ReadMe is at /contrib/singularity/nvidia/nvidia-pytorch.README",
          },
        },
      },
    },
    qchem = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["qchem/5.4"] = {
          Name = "qchem",
          Version = "5.4",
          canonical = "5.4",
          fn = "/opt/ohpc/pub/modulefiles/qchem/5.4",
          help = [[	Adds qchem to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000005.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/qchem/5.4/bin"] = 1,
          },
          wV = "000000005.000000004.*zfinal",
          whatis = {
            "Name: qchem", "Version: 5.4", "Ab initio quantum chemistry",
          },
        },
      },
    },
    qhull = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["qhull/2020.2"] = {
          Name = "qhull",
          Version = "2020.2",
          canonical = "2020.2",
          fn = "/opt/ohpc/pub/modulefiles/qhull/2020.2",
          help = [[	Adds qhull to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/qhull/2020.2/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000002020.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/qhull/2020.2/bin"] = 1,
          },
          wV = "000002020.000000002.*zfinal",
          whatis = {
            "Name: qhull", "Version: 2020.2",
          },
        },
      },
    },
    ["rapids/nvidia"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["rapids/nvidia/21.10"] = {
          Description = "'rapidsai' is an alias for 'singularity shell --nv /contrib/singularity/nvidia/nvidia-rapidsai.21.10.sif'",
          Name = "RapidsAI",
          Version = "nvidia-rapids-21.10",
          canonical = "21.10",
          fn = "/opt/ohpc/pub/modulefiles/rapids/nvidia/21.10",
          help = [[	Adds Nvidia Rapids to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000021.000000010.*zfinal",
          wV = "000000021.000000010.*zfinal",
          whatis = {
            "Name: RapidsAI", "Version: nvidia-rapids-21.10"
            , "Description: 'rapidsai' is an alias for 'singularity shell --nv /contrib/singularity/nvidia/nvidia-rapidsai.21.10.sif'", "Readme is at /contrib/singularity/nvidia/nvidia-rapidsai.README",
          },
        },
        ["rapids/nvidia/22.04"] = {
          Description = "'rapidsai' is an alias for 'singularity shell --nv /contrib/singularity/nvidia/nvidia-rapidsai.22.04.sif'",
          Name = "RapidsAI",
          Version = "nvidia-rapids-22.04",
          canonical = "22.04",
          fn = "/opt/ohpc/pub/modulefiles/rapids/nvidia/22.04",
          help = [[	Adds Nvidia Rapids to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000022.000000004.*zfinal",
          wV = "000000022.000000004.*zfinal",
          whatis = {
            "Name: RapidsAI", "Version: nvidia-rapids-22.04"
            , "Description: 'rapidsai' is an alias for 'singularity shell --nv /contrib/singularity/nvidia/nvidia-rapidsai.22.04.sif'", "Readme is at /contrib/singularity/nvidia/nvidia-rapidsai.README",
          },
        },
      },
    },
    ["raxml-ng"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["raxml-ng/1.2.2"] = {
          Name = "raxml-ng",
          Version = "1.2.2",
          canonical = "1.2.2",
          fn = "/opt/ohpc/pub/modulefiles/raxml-ng/1.2.2",
          help = [[	Adds raxml-ng to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000002.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/raxml-ng/1.2.2/bin"] = 1,
          },
          wV = "000000001.000000002.000000002.*zfinal",
          whatis = {
            "Name: raxml-ng", "Version: 1.2.2",
          },
        },
      },
    },
    relion = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["relion/4.0.0"] = {
          Name = "relion",
          Version = "4.0.0",
          canonical = "4.0.0",
          fn = "/opt/ohpc/pub/modulefiles/relion/4.0.0",
          help = [[	Adds relion to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/relion/4.0.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/relion/4.0.0/bin"] = 1,
          },
          wV = "000000004.*zfinal",
          whatis = {
            "Name: relion", "Version: 4.0.0",
          },
        },
        ["relion/4.0.0-cuda11"] = {
          Name = "relion",
          Version = "4.0.0-cuda11",
          canonical = "4.0.0-cuda11",
          fn = "/opt/ohpc/pub/modulefiles/relion/4.0.0-cuda11",
          help = [[	Adds relion to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/relion/4.0.0-cuda11/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.*cuda.000000011.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/relion/4.0.0-cuda11/bin"] = 1,
          },
          wV = "000000004.*cuda.000000011.*zfinal",
          whatis = {
            "Name: relion", "Version: 4.0.0-cuda11",
          },
        },
      },
    },
    repeatmasker = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["repeatmasker/4.1.3"] = {
          Name = "repeatmasker",
          Version = "4.1.3",
          canonical = "4.1.3",
          fn = "/opt/ohpc/pub/modulefiles/repeatmasker/4.1.3",
          help = [[	Adds repeatmasker to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000001.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/repeatmasker/4.1.3/RepeatMasker"] = 1,
          },
          wV = "000000004.000000001.000000003.*zfinal",
          whatis = {
            "Name: repeatmasker", "Version: 4.1.3",
          },
        },
      },
    },
    revbayes = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["revbayes/1.2.1"] = {
          Name = "revbayes",
          Version = "1.2.1",
          canonical = "1.2.1",
          fn = "/opt/ohpc/pub/modulefiles/revbayes/1.2.1",
          help = [[	Adds revbayes to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000002.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/revbayes/1.2.1/bin"] = 1,
          },
          wV = "000000001.000000002.000000001.*zfinal",
          whatis = {
            "Name: revbayes", "Version: 1.2.1",
          },
        },
      },
    },
    ["rosettafold-all-atom"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["rosettafold-all-atom/2024"] = {
          Description = "Adds the 'rf2aa_run_inference' script, which loads the rosettafold-all-atom.sif container and the required datasets, to PATH.",
          Name = "rosettafold-all-atom",
          Version = "2024",
          canonical = "2024",
          fn = "/opt/ohpc/pub/modulefiles/rosettafold-all-atom/2024",
          help = [[	Adds rosettafold-all-atom to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000002024.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/rosettafold-all-atom/2024/bin"] = 1,
          },
          wV = "000002024.*zfinal",
          whatis = {
            "Name: rosettafold-all-atom", "Version: 2024", "Description: Adds the 'rf2aa_run_inference' script, which loads the rosettafold-all-atom.sif container and the required datasets, to PATH.",
          },
        },
      },
    },
    rsem = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["rsem/1.3.3"] = {
          Name = "rsem",
          Version = "1.3.3",
          canonical = "1.3.3",
          fn = "/opt/ohpc/pub/modulefiles/rsem/1.3.3",
          help = [[	Adds rsem to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000003.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/rsem/1.3.3/bin"] = 1,
            ["/opt/ohpc/pub/apps/rsem/1.3.3/bin/samtools-1.3"] = 1,
          },
          wV = "000000001.000000003.000000003.*zfinal",
          whatis = {
            "Name: rsem", "Version: 1.3.3", "RSEM is a software package for estimating", " gene and isoform expression levels from RNA-Seq data",
          },
        },
      },
    },
    ["rstudio-server"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["rstudio-server/2024.09.0-375"] = {
          Name = "rstudio-server",
          Version = "2024.09.0-375",
          canonical = "2024.09.0-375",
          fn = "/opt/ohpc/pub/modulefiles/rstudio-server/2024.09.0-375",
          help = [[	Adds rstudio-server to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000002024.000000009.*zfinal-.000000375.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/rstudio-server/2024.09.0-375/bin"] = 1,
          },
          wV = "000002024.000000009.*zfinal-.000000375.*zfinal",
          whatis = {
            "Name: rstudio-server", "Version: 2024.09.0-375",
          },
        },
      },
    },
    salmon = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["salmon/1.10.0"] = {
          Name = "salmon",
          Version = "1.10.0",
          canonical = "1.10.0",
          fn = "/opt/ohpc/pub/modulefiles/salmon/1.10.0",
          help = [[	Adds salmon to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/salmon/1.10.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000010.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/salmon/1.10.0/bin"] = 1,
          },
          wV = "000000001.000000010.*zfinal",
          whatis = {
            "Name: salmon", "Version: 1.10.0", "A wicked-fast program to produce a highly-accurate, transcript-level quantification estimates from RNA-seq data",
          },
        },
        ["salmon/1.8.0"] = {
          Name = "salmon",
          Version = "1.8.0",
          canonical = "1.8.0",
          fn = "/opt/ohpc/pub/modulefiles/salmon/1.8.0",
          help = [[	Adds salmon to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/salmon/1.8.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000008.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/salmon/1.8.0/bin"] = 1,
          },
          wV = "000000001.000000008.*zfinal",
          whatis = {
            "Name: salmon", "Version: 1.8.0", "A wicked-fast program to produce a highly-accurate, transcript-level quantification estimates from RNA-seq data",
          },
        },
      },
    },
    sambamba = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["sambamba/0.8.1"] = {
          Name = "sambamba",
          Version = "0.8.1",
          canonical = "0.8.1",
          fn = "/opt/ohpc/pub/modulefiles/sambamba/0.8.1",
          help = [[	Adds sambamba to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000000.000000008.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/sambamba/0.8.1/bin"] = 1,
          },
          wV = "000000000.000000008.000000001.*zfinal",
          whatis = {
            "Name: sambamba", "Version: 0.8.1",
          },
        },
      },
    },
    samtools = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["samtools/1.10"] = {
          Name = "samtools",
          Version = "1.10",
          canonical = "1.10",
          fn = "/opt/ohpc/pub/modulefiles/samtools/1.10",
          help = [[	Adds samtools to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/samtools/1.10/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000010.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/samtools/1.10/bin"] = 1,
          },
          wV = "000000001.000000010.*zfinal",
          whatis = {
            "Name: samtools", "Version: 1.10",
          },
        },
        ["samtools/1.19.2"] = {
          Name = "samtools",
          Version = "1.19.2",
          canonical = "1.19.2",
          fn = "/opt/ohpc/pub/modulefiles/samtools/1.19.2",
          help = [[	Adds samtools to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000019.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/samtools/1.19.2/bin"] = 1,
          },
          wV = "000000001.000000019.000000002.*zfinal",
          whatis = {
            "Name: samtools", "Version: 1.19.2",
          },
        },
      },
    },
    sas = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["sas/9.4"] = {
          Name = "sas",
          Version = "9.4",
          canonical = "9.4",
          fn = "/opt/ohpc/pub/modulefiles/sas/9.4",
          help = [[	Adds sas to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000009.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/sas/9.4/SASFoundation/9.4"] = 1,
            ["/opt/ohpc/pub/apps/sas/9.4/SASFoundation/9.4/utilities/bin"] = 1,
          },
          wV = "000000009.000000004.*zfinal",
          whatis = {
            "Name: sas", "Version: 9.4",
          },
        },
      },
    },
    shapeit = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["shapeit/2.904"] = {
          Name = "shapeit",
          Version = "2.904",
          canonical = "2.904",
          fn = "/opt/ohpc/pub/modulefiles/shapeit/2.904",
          help = [[	Adds shapeit to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000904.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/shapeit/2.904/bin"] = 1,
          },
          wV = "000000002.000000904.*zfinal",
          whatis = {
            "Name: shapeit", "Version: 2.904",
          },
        },
        ["shapeit/4.2.2"] = {
          Name = "shapeit",
          Version = "4.2.2",
          canonical = "4.2.2",
          fn = "/opt/ohpc/pub/modulefiles/shapeit/4.2.2",
          help = [[	Adds shapeit to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000002.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/shapeit/4.2.2/bin"] = 1,
          },
          wV = "000000004.000000002.000000002.*zfinal",
          whatis = {
            "Name: shapeit", "Version: 4.2.2",
          },
        },
      },
    },
    silo = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["silo/4.10.2"] = {
          Name = "silo",
          Version = "4.10.2",
          canonical = "4.10.2",
          fn = "/opt/ohpc/pub/modulefiles/silo/4.10.2",
          help = [[	Adds silo to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/silo/4.10.2/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000010.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/silo/4.10.2/bin"] = 1,
          },
          wV = "000000004.000000010.000000002.*zfinal",
          whatis = {
            "Name: silo", "Version: 4.10.2",
          },
        },
        ["silo/4.11.1"] = {
          Name = "silo",
          Version = "4.11.1",
          canonical = "4.11.1",
          fn = "/opt/ohpc/pub/modulefiles/silo/4.11.1",
          help = [[	Adds silo to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/silo/4.11.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000011.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/silo/4.11.1/bin"] = 1,
          },
          wV = "000000004.000000011.000000001.*zfinal",
          whatis = {
            "Name: silo", "Version: 4.11.1",
          },
        },
      },
    },
    sleap = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["sleap/1.3.3"] = {
          Description = "'module exposes scripts in /opt/ohpc/pub/apps/sleap/1.3.3/bin/ that call the corresponding sleap functions using the container /contrib/singularity/shared/ua-hpc/sleap-1.3.3.sif'",
          Name = "sleap",
          Version = "1.3.3",
          canonical = "1.3.3",
          fn = "/opt/ohpc/pub/modulefiles/sleap/1.3.3",
          help = [[	Adds SLEAP  to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000003.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/sleap/1.3.3/bin"] = 1,
          },
          wV = "000000001.000000003.000000003.*zfinal",
          whatis = {
            "Name: sleap", "Version: 1.3.3", "Description: 'module exposes scripts in /opt/ohpc/pub/apps/sleap/1.3.3/bin/ that call the corresponding sleap functions using the container /contrib/singularity/shared/ua-hpc/sleap-1.3.3.sif'",
          },
        },
      },
    },
    slim = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["slim/4.3.0"] = {
          Name = "slim",
          Version = "4.3.0",
          canonical = "4.3.0",
          fn = "/opt/ohpc/pub/modulefiles/slim/4.3.0",
          help = [[	Adds slim to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/slim/4.3.0/bin"] = 1,
          },
          wV = "000000004.000000003.*zfinal",
          whatis = {
            "Name: slim", "Version: 4.3.0",
          },
        },
      },
    },
    sox = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["sox/14.4.2"] = {
          Name = "sox",
          Version = "14.4.2",
          canonical = "14.4.2",
          fn = "/opt/ohpc/pub/modulefiles/sox/14.4.2",
          help = [[	Adds sox to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/sox/14.4.2/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000014.000000004.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/sox/14.4.2/bin"] = 1,
          },
          wV = "000000014.000000004.000000002.*zfinal",
          whatis = {
            "Name: sox", "Version: 14.4.2",
          },
        },
      },
    },
    spaceranger = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["spaceranger/1.3.1"] = {
          Name = "spaceranger",
          Version = "1.3.1",
          canonical = "1.3.1",
          fn = "/opt/ohpc/pub/modulefiles/spaceranger/1.3.1",
          help = [[	Adds spaceranger to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/spaceranger/1.3.1/external/anaconda/lib"] = 1,
            ["/opt/ohpc/pub/apps/spaceranger/1.3.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000003.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/spaceranger/1.3.1/bin"] = 1,
          },
          wV = "000000001.000000003.000000001.*zfinal",
          whatis = {
            "Name: spaceranger", "Version: 1.3.1",
          },
        },
      },
    },
    spades = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["spades/3.14.1"] = {
          Name = "spades",
          Version = "3.14.1",
          canonical = "3.14.1",
          fn = "/opt/ohpc/pub/modulefiles/spades/3.14.1",
          help = [[	Adds spades to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000014.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/spades/3.14.1/bin"] = 1,
          },
          wV = "000000003.000000014.000000001.*zfinal",
          whatis = {
            "Name: spades", "Version: 3.14.1", "An assembly toolkit containing various assembly pipelines",
          },
        },
        ["spades/3.15.5"] = {
          Name = "spades",
          Version = "3.15.5",
          canonical = "3.15.5",
          fn = "/opt/ohpc/pub/modulefiles/spades/3.15.5",
          help = [[	Adds spades to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000015.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/spades/3.15.5/bin"] = 1,
          },
          wV = "000000003.000000015.000000005.*zfinal",
          whatis = {
            "Name: spades", "Version: 3.15.5",
          },
        },
        ["spades/4.0.0"] = {
          Name = "spades",
          Version = "4.0.0",
          canonical = "4.0.0",
          fn = "/opt/ohpc/pub/modulefiles/spades/4.0.0",
          help = [[	Adds spades to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/spades/4.0.0/bin"] = 1,
          },
          wV = "000000004.*zfinal",
          whatis = {
            "Name: spades", "Version: 4.0.0",
          },
        },
      },
    },
    sparsehash = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["sparsehash/2.0.3"] = {
          Name = "sparsehash",
          Version = "2.0.3",
          canonical = "2.0.3",
          fn = "/opt/ohpc/pub/modulefiles/sparsehash/2.0.3",
          help = [[	Adds sparsehash to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/sparsehash/2.0.3/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000000.000000003.*zfinal",
          wV = "000000002.000000000.000000003.*zfinal",
          whatis = {
            "Name: sparsehash", "Version: 2.0.3",
          },
        },
      },
    },
    sqlite = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["sqlite/3.38"] = {
          Name = "sqlite",
          Version = "3.38",
          canonical = "3.38",
          fn = "/opt/ohpc/pub/modulefiles/sqlite/3.38",
          help = [[	Adds sqlite to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/sqlite/3.38/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000038.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/sqlite/3.38/bin"] = 1,
          },
          wV = "000000003.000000038.*zfinal",
          whatis = {
            "Name: sqlite", "Version: 3.38",
          },
        },
        ["sqlite/3.45"] = {
          Name = "sqlite",
          Version = "3.45",
          canonical = "3.45",
          fn = "/opt/ohpc/pub/modulefiles/sqlite/3.45",
          help = [[	Adds sqlite to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/sqlite/3.45/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000045.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/sqlite/3.45/bin"] = 1,
          },
          wV = "000000003.000000045.*zfinal",
          whatis = {
            "Name: sqlite", "Version: 3.45",
          },
        },
      },
    },
    sratoolkit = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["sratoolkit/3.0.0"] = {
          Name = "sratoolkit",
          Version = "3.0.0",
          canonical = "3.0.0",
          fn = "/opt/ohpc/pub/modulefiles/sratoolkit/3.0.0",
          help = [[	Adds sratoolkit to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/sratoolkit/3.0.0/bin"] = 1,
          },
          wV = "000000003.*zfinal",
          whatis = {
            "Name: sratoolkit", "Version: 3.0.0",
          },
        },
        ["sratoolkit/3.1.1"] = {
          Name = "sratoolkit",
          Version = "3.1.1",
          canonical = "3.1.1",
          fn = "/opt/ohpc/pub/modulefiles/sratoolkit/3.1.1",
          help = [[	Adds sratoolkit to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000001.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/sratoolkit/3.1.1/bin"] = 1,
          },
          wV = "000000003.000000001.000000001.*zfinal",
          whatis = {
            "Name: sratoolkit", "Version: 3.1.1",
          },
        },
      },
    },
    stacks = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["stacks/2.60"] = {
          Name = "stacks",
          Version = "2.60",
          canonical = "2.60",
          fn = "/opt/ohpc/pub/modulefiles/stacks/2.60",
          help = [[	Adds stacks to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000060.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/stacks/2.60/bin"] = 1,
          },
          wV = "000000002.000000060.*zfinal",
          whatis = {
            "Name: stacks", "Version: 2.60",
          },
        },
      },
    },
    star = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["star/2.7.11b"] = {
          Name = "star",
          Version = "2.7.11b",
          canonical = "2.7.11b",
          fn = "/opt/ohpc/pub/modulefiles/star/2.7.11b",
          help = [[	Adds star to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000007.000000011.*b.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/star/2.7.11b/bin"] = 1,
          },
          wV = "000000002.000000007.000000011.*b.*zfinal",
          whatis = {
            "Name: star", "Version: 2.7.11b",
          },
        },
        ["star/2.7.3a"] = {
          Name = "star",
          Version = "2.7.3a",
          canonical = "2.7.3a",
          fn = "/opt/ohpc/pub/modulefiles/star/2.7.3a",
          help = [[	Adds star to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000007.000000003.*a.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/star/2.7.3a/bin"] = 1,
          },
          wV = "000000002.000000007.000000003.*a.*zfinal",
          whatis = {
            "Name: star", "Version: 2.7.3a",
          },
        },
      },
    },
    stata = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["stata/18"] = {
          Name = "stata",
          Version = "18",
          canonical = "18",
          fn = "/opt/ohpc/pub/modulefiles/stata/18",
          help = [[	Adds Stata to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000018.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/stata/18"] = 1,
          },
          wV = "000000018.*zfinal",
          whatis = {
            "Name: stata", "Version: 18",
          },
        },
        ["stata/19"] = {
          Name = "stata",
          Version = "19",
          canonical = "19",
          fn = "/opt/ohpc/pub/modulefiles/stata/19",
          help = [[	Adds stata to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000019.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/stata/19"] = 1,
          },
          wV = "000000019.*zfinal",
          whatis = {
            "Name: stata", "Version: 19",
          },
        },
      },
    },
    su2p = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["su2p/7.5.1"] = {
          Name = "su2p",
          Version = "7.5.1",
          canonical = "7.5.1",
          fn = "/opt/ohpc/pub/modulefiles/su2p/7.5.1",
          help = [[	Adds su2p to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000007.000000005.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/su2p/7.5.1/bin"] = 1,
          },
          wV = "000000007.000000005.000000001.*zfinal",
          whatis = {
            "Name: su2p", "Version: 7.5.1",
          },
        },
      },
    },
    ["su2p-mpp"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["su2p-mpp/7.5.1"] = {
          Name = "su2p-mpp",
          Version = "7.5.1",
          canonical = "7.5.1",
          fn = "/opt/ohpc/pub/modulefiles/su2p-mpp/7.5.1",
          help = [[	Adds su2p-mpp to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/su2p-mpp/7.5.1/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000007.000000005.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/su2p-mpp/7.5.1/bin"] = 1,
          },
          wV = "000000007.000000005.000000001.*zfinal",
          whatis = {
            "Name: su2p-mpp", "Version: 7.5.1",
          },
        },
        ["su2p-mpp/8.0.0"] = {
          Name = "su2p-mpp",
          Version = "8.0.0",
          canonical = "8.0.0",
          fn = "/opt/ohpc/pub/modulefiles/su2p-mpp/8.0.0",
          help = [[	Adds su2p-mpp to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/su2p-mpp/8.0.0/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000008.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/su2p-mpp/8.0.0/bin"] = 1,
          },
          wV = "000000008.*zfinal",
          whatis = {
            "Name: su2p-mpp", "Version: 8.0.0",
          },
        },
      },
    },
    sublime_text = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["sublime_text/3.3.2"] = {
          Name = "sublime_text",
          Version = "3.3.2",
          canonical = "3.3.2",
          fn = "/opt/ohpc/pub/modulefiles/sublime_text/3.3.2",
          help = [[	Adds sublime_text to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000003.000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/sublime_text/3.3.2/bin"] = 1,
          },
          wV = "000000003.000000003.000000002.*zfinal",
          whatis = {
            "Name: sublime_text", "Version: 3.3.2",
          },
        },
      },
    },
    subread = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["subread/2.0.3"] = {
          Name = "subread",
          Version = "2.0.3",
          canonical = "2.0.3",
          fn = "/opt/ohpc/pub/modulefiles/subread/2.0.3",
          help = [[	Adds subread to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000000.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/subread/2.0.3/bin"] = 1,
          },
          wV = "000000002.000000000.000000003.*zfinal",
          whatis = {
            "Name: subread", "Version: 2.0.3",
          },
        },
      },
    },
    swig = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["swig/4.2.1"] = {
          Name = "swig",
          Version = "4.2.1",
          canonical = "4.2.1",
          fn = "/opt/ohpc/pub/modulefiles/swig/4.2.1",
          help = [[	Adds swig to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000002.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/swig/4.2.1/bin"] = 1,
          },
          wV = "000000004.000000002.000000001.*zfinal",
          whatis = {
            "Name: swig", "Version: 4.2.1",
          },
        },
      },
    },
    tassel = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["tassel/5.2.96"] = {
          Name = "tassel",
          Version = "5.2.96",
          canonical = "5.2.96",
          fn = "/opt/ohpc/pub/modulefiles/tassel/5.2.96",
          help = [[	Adds tassel to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000005.000000002.000000096.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/tassel/5.2.96/bin"] = 1,
          },
          wV = "000000005.000000002.000000096.*zfinal",
          whatis = {
            "Name: tassel", "Version: 5.2.96",
          },
        },
      },
    },
    tecplot = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["tecplot/2020r1"] = {
          Name = "tecplot",
          Version = "2020r1",
          canonical = "2020r1",
          fn = "/opt/ohpc/pub/modulefiles/tecplot/2020r1",
          help = [[	Adds tecplot to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/tecplot/2020r1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000002020.*r.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/tecplot/2020r1/bin"] = 1,
          },
          wV = "000002020.*r.000000001.*zfinal",
          whatis = {
            "Name: tecplot", "Version: 2020r1",
          },
        },
      },
    },
    ["tensorflow/nvidia"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["tensorflow/nvidia/2.0.0"] = {
          Description = "So typically 'tensorflow xxx.py'",
          Name = "Tensorflow",
          Version = "nvidia-tensorflow_2.0.0-py3",
          canonical = "2.0.0",
          fn = "/opt/ohpc/pub/modulefiles/tensorflow/nvidia/2.0.0",
          help = [[	Adds Tensorflow to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/tensorflow/nvidia/2.0.0"] = 1,
          },
          wV = "000000002.*zfinal",
          whatis = {
            "Name: Tensorflow", "Version: nvidia-tensorflow_2.0.0-py3"
            , "Description: 'tensorflow' is an alias for 'singularity exec --nv /contrib/singularity/nvidia/nvidia-tensorflow_2.0.0-py3.sif python3'"
            , "Description: So typically 'tensorflow xxx.py'", "Readme is at /contrib/singularity/nvidia/nvidia-pytorch.README",
          },
        },
        ["tensorflow/nvidia/2.9.1"] = {
          Description = "So typically 'tensorflow xxx.py'",
          Name = "tensorflow/nvidia",
          Version = "2.9.1",
          canonical = "2.9.1",
          fn = "/opt/ohpc/pub/modulefiles/tensorflow/nvidia/2.9.1",
          help = [[	Adds tensorflow/nvidia to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000009.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/tensorflow/nvidia/2.9.1"] = 1,
          },
          wV = "000000002.000000009.000000001.*zfinal",
          whatis = {
            "Name: tensorflow/nvidia", "Version: 2.9.1"
            , "Description: 'tensorflow' is an alias for 'singularity exec --nv /contrib/singularity/nvidia/nvidia-tensorflow-22.07.sif python3'", "Description: So typically 'tensorflow xxx.py'",
          },
        },
      },
    },
    ["theano/nvidia"] = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["theano/nvidia/1.0.2"] = {
          Description = "So typically 'theano xxx.py'",
          Name = "Theano",
          Version = "nvidia-theano_1.0.2-py3",
          canonical = "1.0.2",
          fn = "/opt/ohpc/pub/modulefiles/theano/nvidia/1.0.2",
          help = [[	Adds Theano to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000000.000000002.*zfinal",
          wV = "000000001.000000000.000000002.*zfinal",
          whatis = {
            "Name: Theano", "Version: nvidia-theano_1.0.2-py3"
            , "Description: 'theano' is an alias for 'singularity exec --nv /contrib/singularity/nvidia/nvidia-theano.18.08.simg python'"
            , "Description: So typically 'theano xxx.py'", "Readme is at /contrib/singularity/nvidia/nvidia-theano.README",
          },
        },
      },
    },
    tinker = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["tinker/8.10.6"] = {
          Name = "tinker",
          Version = "8.10.6",
          canonical = "8.10.6",
          fn = "/opt/ohpc/pub/modulefiles/tinker/8.10.6",
          help = [[	Adds tinker to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000008.000000010.000000006.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/tinker/8.10.6/bin"] = 1,
          },
          wV = "000000008.000000010.000000006.*zfinal",
          whatis = {
            "Name: tinker", "Version: 8.10.6",
          },
        },
      },
    },
    tmhmm = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["tmhmm/2.0c"] = {
          Name = "tmhmm",
          Version = "2.0c",
          canonical = "2.0c",
          fn = "/opt/ohpc/pub/modulefiles/tmhmm/2.0c",
          help = [[	Adds tmhmm to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/tmhmm/2.0c/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.*c.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/tmhmm/2.0c/bin"] = 1,
          },
          wV = "000000002.*c.*zfinal",
          whatis = {
            "Name: tmhmm", "Version: 2.0c", "Prediction of transmembrane helices in proteins",
          },
        },
      },
    },
    trf = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["trf/4.0.9"] = {
          Name = "trf",
          Version = "4.0.9",
          canonical = "4.0.9",
          fn = "/opt/ohpc/pub/modulefiles/trf/4.0.9",
          help = [[	Adds trf to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000004.000000000.000000009.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/trf/4.0.9/bin"] = 1,
          },
          wV = "000000004.000000000.000000009.*zfinal",
          whatis = {
            "Name: trf", "Version: 4.0.9",
          },
        },
      },
    },
    trimgalore = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["trimgalore/0.6.10"] = {
          Name = "trimgalore",
          Version = "0.6.10",
          canonical = "0.6.10",
          fn = "/opt/ohpc/pub/modulefiles/trimgalore/0.6.10",
          help = [[	Adds trimgalore to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000000.000000006.000000010.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/trimgalore/0.6.10"] = 1,
          },
          wV = "000000000.000000006.000000010.*zfinal",
          whatis = {
            "Name: trimgalore", "Version: 0.6.10",
          },
        },
      },
    },
    trimmomatic = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["trimmomatic/0.33"] = {
          Name = "trimmomatic",
          Version = "0.33",
          canonical = "0.33",
          fn = "/opt/ohpc/pub/modulefiles/trimmomatic/0.33",
          help = [[	Adds trimmomatic to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000000.000000033.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/trimmomatic/0.33/bin"] = 1,
          },
          wV = "000000000.000000033.*zfinal",
          whatis = {
            "Name: trimmomatic", "Version: 0.33",
          },
        },
        ["trimmomatic/0.39"] = {
          Name = "trimmomatic",
          Version = "0.39",
          canonical = "0.39",
          fn = "/opt/ohpc/pub/modulefiles/trimmomatic/0.39",
          help = [[	Adds trimmomatic to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000000.000000039.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/trimmomatic/0.39/bin"] = 1,
          },
          wV = "000000000.000000039.*zfinal",
          whatis = {
            "Name: trimmomatic", "Version: 0.39",
          },
        },
      },
    },
    trinity = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["trinity/2.15.1"] = {
          Name = "trinity",
          Version = "2.15.1",
          canonical = "2.15.1",
          fn = "/opt/ohpc/pub/modulefiles/trinity/2.15.1",
          help = [[	Adds trinity to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/trinity/2.15.1/trinity-plugins/bamsifter/htslib/build/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000015.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/trinity/2.15.1"] = 1,
          },
          wV = "000000002.000000015.000000001.*zfinal",
          whatis = {
            "Name: trinity", "Version: 2.15.1", "Software to assemble transcript sequences from illumina RNA-Seq data",
          },
        },
      },
    },
    ucx = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["ucx/1.18.0"] = {
          Category = "runtime library",
          Description = "UCX is a communication library implementing high-performance messaging",
          Name = "ucx",
          URL = "http://www.openucx.org",
          Version = "1.18.0",
          canonical = "1.18.0",
          fn = "/opt/ohpc/pub/modulefiles/ucx/1.18.0",
          help = [[ 
This module loads the UCX library.

Version 1.18.0

]],
          lpathA = {
            ["/opt/ohpc/pub/mpi/ucx-ohpc/1.18.0/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000018.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/mpi/ucx-ohpc/1.18.0/bin"] = 1,
          },
          wV = "000000001.000000018.*zfinal",
          whatis = {
            "Name: ucx", "Version: 1.18.0", "Category: runtime library"
            , "Description: UCX is a communication library implementing high-performance messaging", "URL: http://www.openucx.org",
          },
        },
      },
    },
    upcxx = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["upcxx/2023.9.0"] = {
          Name = "upcxx",
          Version = "2023.9.0",
          canonical = "2023.9.0",
          fn = "/opt/ohpc/pub/modulefiles/upcxx/2023.9.0",
          help = [[	Adds upcxx to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/upcxx/2023.9.0/gasnet.debug/lib"] = 1,
            ["/opt/ohpc/pub/apps/upcxx/2023.9.0/gasnet.opt/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000002023.000000009.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/upcxx/2023.9.0/bin"] = 1,
          },
          wV = "000002023.000000009.*zfinal",
          whatis = {
            "Name: upcxx", "Version: 2023.9.0",
          },
        },
      },
    },
    vcftools = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["vcftools/0.1.16"] = {
          Name = "vcftools",
          Version = "0.1.16",
          canonical = "0.1.16",
          fn = "/opt/ohpc/pub/modulefiles/vcftools/0.1.16",
          help = [[	Adds vcftools to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000000.000000001.000000016.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/vcftools/0.1.16/bin"] = 1,
          },
          wV = "000000000.000000001.000000016.*zfinal",
          whatis = {
            "Name: vcftools", "Version: 0.1.16",
          },
        },
      },
    },
    vg = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["vg/1.46.0"] = {
          Name = "vg",
          Version = "1.46.0",
          canonical = "1.46.0",
          fn = "/opt/ohpc/pub/modulefiles/vg/1.46.0",
          help = [[	Adds vg to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000046.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/vg/1.46.0/bin"] = 1,
          },
          wV = "000000001.000000046.*zfinal",
          whatis = {
            "Name: vg", "Version: 1.46.0",
          },
        },
        ["vg/1.47.0"] = {
          Name = "vg",
          Version = "1.47.0",
          canonical = "1.47.0",
          fn = "/opt/ohpc/pub/modulefiles/vg/1.47.0",
          help = [[	Adds vg to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000047.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/vg/1.47.0/bin"] = 1,
          },
          wV = "000000001.000000047.*zfinal",
          whatis = {
            "Name: vg", "Version: 1.47.0",
          },
        },
      },
    },
    vmd = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["vmd/1.9.3"] = {
          Name = "vmd",
          Version = "1.9.3",
          canonical = "1.9.3",
          fn = "/opt/ohpc/pub/modulefiles/vmd/1.9.3",
          help = [[	Adds vmd to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/vmd/1.9.3/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000009.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/vmd/1.9.3/bin"] = 1,
          },
          wV = "000000001.000000009.000000003.*zfinal",
          whatis = {
            "Name: vmd", "Version: 1.9.3"
            , "VMD is a molecular visualization program for displaying, animating,", "  and analyzing large biomolecular systems using 3-D graphics and built-in scripting.",
          },
        },
        ["vmd/1.9.4"] = {
          Name = "vmd",
          Version = "1.9.4",
          canonical = "1.9.4",
          fn = "/opt/ohpc/pub/modulefiles/vmd/1.9.4",
          help = [[	Adds vmd to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/vmd/1.9.4/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000009.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/vmd/1.9.4/bin"] = 1,
          },
          wV = "000000001.000000009.000000004.*zfinal",
          whatis = {
            "Name: vmd", "Version: 1.9.4",
          },
        },
      },
    },
    vscode = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["vscode/1.69"] = {
          Name = "vscode",
          Version = "1.69",
          canonical = "1.69",
          fn = "/opt/ohpc/pub/modulefiles/vscode/1.69",
          help = [[	Adds vscode to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000069.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/vscode/1.69/bin"] = 1,
          },
          wV = "000000001.000000069.*zfinal",
          whatis = {
            "Name: vscode", "Version: 1.69",
          },
        },
        ["vscode/1.90"] = {
          Name = "vscode",
          Version = "1.90",
          canonical = "1.90",
          fn = "/opt/ohpc/pub/modulefiles/vscode/1.90",
          help = [[	Adds vscode to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000090.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/vscode/1.90/bin"] = 1,
          },
          wV = "000000001.000000090.*zfinal",
          whatis = {
            "Name: vscode", "Version: 1.90",
          },
        },
        ["vscode/1.96"] = {
          Name = "vscode",
          Version = "1.96",
          canonical = "1.96",
          fn = "/opt/ohpc/pub/modulefiles/vscode/1.96",
          help = [[	Adds vscode to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000096.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/vscode/1.96/bin"] = 1,
          },
          wV = "000000001.000000096.*zfinal",
          whatis = {
            "Name: vscode", "Version: 1.96",
          },
        },
      },
    },
    vsearch = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["vsearch/2.30.0"] = {
          Name = "vsearch",
          Version = "2.30.0",
          canonical = "2.30.0",
          fn = "/opt/ohpc/pub/modulefiles/vsearch/2.30.0",
          help = [[	Adds vsearch to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000002.000000030.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/vsearch/2.30.0/bin"] = 1,
          },
          wV = "000000002.000000030.*zfinal",
          whatis = {
            "Name: vsearch", "Version: 2.30.0",
          },
        },
      },
    },
    vtk = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["vtk/9.4.1"] = {
          Name = "vtk",
          Version = "9.4.1",
          canonical = "9.4.1",
          fn = "/opt/ohpc/pub/modulefiles/vtk/9.4.1",
          help = [[	Adds vtk to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000009.000000004.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/vtk/9.4.1/bin"] = 1,
          },
          wV = "000000009.000000004.000000001.*zfinal",
          whatis = {
            "Name: vtk", "Version: 9.4.1",
          },
        },
      },
    },
    wannier90 = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["wannier90/3.1.0"] = {
          Name = "wannier90",
          Version = "3.1.0",
          canonical = "3.1.0",
          fn = "/opt/ohpc/pub/modulefiles/wannier90/3.1.0",
          help = [[	Adds wannier90 to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/wannier90/3.1.0/usr/bin"] = 1,
          },
          wV = "000000003.000000001.*zfinal",
          whatis = {
            "Name: wannier90", "Version: 3.1.0",
          },
        },
      },
    },
    warpx = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["warpx/25.03"] = {
          Name = "warpx",
          Version = "25.03",
          canonical = "25.03",
          fn = "/opt/ohpc/pub/modulefiles/warpx/25.03",
          help = [[	Adds warpx to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/warpx/25.03/lib64"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000025.000000003.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/warpx/25.03/bin"] = 1,
          },
          wV = "000000025.000000003.*zfinal",
          whatis = {
            "Name: warpx", "Version: 25.03",
          },
        },
      },
    },
    wxwidgets = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["wxwidgets/3.2.4"] = {
          Name = "wxwidgets",
          Version = "3.2.4",
          canonical = "3.2.4",
          fn = "/opt/ohpc/pub/modulefiles/wxwidgets/3.2.4",
          help = [[	Adds wxwidgets to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/wxwidgets/3.2.4/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000002.000000004.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/wxwidgets/3.2.4/bin"] = 1,
          },
          wV = "000000003.000000002.000000004.*zfinal",
          whatis = {
            "Name: wxwidgets", "Version: 3.2.4",
          },
        },
        ["wxwidgets/3.2.7"] = {
          Name = "wxwidgets",
          Version = "3.2.7",
          canonical = "3.2.7",
          fn = "/opt/ohpc/pub/modulefiles/wxwidgets/3.2.7",
          help = [[	Adds wxwidgets to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/wxwidgets/3.2.7/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000003.000000002.000000007.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/wxwidgets/3.2.7/bin"] = 1,
          },
          wV = "000000003.000000002.000000007.*zfinal",
          whatis = {
            "Name: wxwidgets", "Version: 3.2.7",
          },
        },
      },
    },
    xcrysden = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["xcrysden/1.5.60"] = {
          Name = "xcrysden",
          Version = "1.5.60",
          canonical = "1.5.60",
          fn = "/opt/ohpc/pub/modulefiles/xcrysden/1.5.60",
          help = [[	Adds xcrysden to your environment
]],
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000005.000000060.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/xcrysden/1.5.60"] = 1,
            ["/opt/ohpc/pub/apps/xcrysden/1.5.60/bin"] = 1,
          },
          wV = "000000001.000000005.000000060.*zfinal",
          whatis = {
            "Name: xcrysden", "Version: 1.5.60", "A crystalline and molecular structure visualisation program",
          },
        },
      },
    },
    xtb = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["xtb/6.4.1"] = {
          Name = "xtb",
          Version = "6.4.1",
          canonical = "6.4.1",
          fn = "/opt/ohpc/pub/modulefiles/xtb/6.4.1",
          help = [[	Adds xtb to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/xtb/6.4.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000006.000000004.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/xtb/6.4.1/bin"] = 1,
          },
          wV = "000000006.000000004.000000001.*zfinal",
          whatis = {
            "Name: xtb", "Version: 6.4.1", "Semiempirical Extended Tight-Binding Program Package",
          },
        },
        ["xtb/6.6.1"] = {
          Name = "xtb",
          Version = "6.6.1",
          canonical = "6.6.1",
          fn = "/opt/ohpc/pub/modulefiles/xtb/6.6.1",
          help = [[	Adds xtb to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/xtb/6.6.1/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000006.000000006.000000001.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/xtb/6.6.1/bin"] = 1,
          },
          wV = "000000006.000000006.000000001.*zfinal",
          whatis = {
            "Name: xtb", "Version: 6.6.1",
          },
        },
      },
    },
    zstd = {
      defaultA = {},
      defaultT = {},
      dirT = {},
      fileT = {
        ["zstd/1.5.5"] = {
          Name = "zstd",
          Version = "1.5.5",
          canonical = "1.5.5",
          fn = "/opt/ohpc/pub/modulefiles/zstd/1.5.5",
          help = [[	Adds zstd to your environment
]],
          lpathA = {
            ["/opt/ohpc/pub/apps/zstd/1.5.5/lib"] = 1,
          },
          mpath = "/opt/ohpc/pub/modulefiles",
          pV = "000000001.000000005.000000005.*zfinal",
          pathA = {
            ["/opt/ohpc/pub/apps/zstd/1.5.5/bin"] = 1,
          },
          wV = "000000001.000000005.000000005.*zfinal",
          whatis = {
            "Name: zstd", "Version: 1.5.5",
          },
        },
      },
    },
  },
  version = 5,
}
mpathMapT = {
  ["/contrib/modulefiles"] = {
    ["contrib/1.0"] = "/opt/ohpc/pub/modulefiles",
  },
  ["/etc/modulefiles:/usr/share/modulefiles"] = {
    os = "/opt/ohpc/pub/modulefiles",
  },
  ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/23.7/modulefiles"] = {
    ["nvidia-hpc-sdk/23.7"] = "/opt/ohpc/pub/modulefiles",
  },
  ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.5/modulefiles"] = {
    ["nvidia-hpc-sdk/24.5"] = "/opt/ohpc/pub/modulefiles",
  },
  ["/opt/ohpc/pub/apps/nvidia-hpc-sdk/24.7/modulefiles"] = {
    ["nvidia-hpc-sdk/24.7"] = "/opt/ohpc/pub/modulefiles",
  },
  ["/opt/ohpc/pub/moduledeps/gnu12"] = {
    ["gnu12/12.2.0"] = "/opt/ohpc/pub/modulefiles",
  },
  ["/opt/ohpc/pub/moduledeps/gnu13"] = {
    ["gnu13/13.2.0"] = "/opt/ohpc/pub/modulefiles",
  },
  ["/opt/ohpc/pub/moduledeps/gnu13-impi"] = {
    ["impi/2021.11"] = "/opt/ohpc/pub/moduledeps/gnu13",
  },
  ["/opt/ohpc/pub/moduledeps/gnu13-openmpi5"] = {
    ["hpcteam/openmpi5/5.0.5"] = "/contrib/modulefiles",
    ["hpcteam/openmpi5/5.0.5-OHPCmodules"] = "/contrib/modulefiles",
    ["openmpi5/5.0.5"] = "/opt/ohpc/pub/moduledeps/gnu13",
  },
  ["/opt/ohpc/pub/moduledeps/intel"] = {
    ["intel/2023.2.1"] = "/opt/ohpc/pub/modulefiles",
    ["intel/2024.0.0"] = "/opt/ohpc/pub/modulefiles",
    ["intel/2024.1.2"] = "/opt/ohpc/pub/modulefiles",
  },
  ["/opt/ohpc/pub/moduledeps/intel-impi"] = {
    ["impi/2021.11"] = "/opt/ohpc/pub/moduledeps/intel",
    ["impi/2021.15"] = "/opt/ohpc/pub/moduledeps/intel",
  },
  ["/opt/ohpc/pub/moduledeps/oneapi"] = {
    ["impi/2021.11"] = "/opt/ohpc/pub/moduledeps/intel",
    ["impi/2021.15"] = "/opt/ohpc/pub/moduledeps/intel",
    ["intel/2023.2.1"] = "/opt/ohpc/pub/modulefiles",
    ["intel/2024.0.0"] = "/opt/ohpc/pub/modulefiles",
    ["intel/2024.1.2"] = "/opt/ohpc/pub/modulefiles",
  },
}
