from distutils.core import setup
from distutils.extension import Extension
#from Cython.Distutils import build_ext
from Cython.Build import cythonize 


setup (
    ext_modules = cythonize([Extension("pytest",["pytest.pyx"])])
)

#setup (
#    cmdclass = {'build_ext': build_ext},
#    ext_modules = cythonize("pytest.pyx")
#)

