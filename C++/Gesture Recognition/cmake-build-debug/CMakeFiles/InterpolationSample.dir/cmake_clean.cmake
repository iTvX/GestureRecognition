file(REMOVE_RECURSE
  "InterpolationSample.exe"
  "InterpolationSample.exe.manifest"
  "InterpolationSample.pdb"
  "libInterpolationSample.dll.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/InterpolationSample.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
