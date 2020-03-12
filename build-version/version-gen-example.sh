# detail information format : SVN_V01.00.00.2554-24-geda375fb
version_detail=SVN_V01.00.00.2554-24-geda375fb
#version_detail=$(git describe)

#calculate number version information
version_info=$(echo ${version_detail##*V} | sed 's/-/ /g')
version_number=$(echo $version_info | awk '{printf "%s",$1}')
version_change=$(echo $version_info | awk '{printf "%d",$2}')
version_start=$(echo $version_number | sed 's/\./ /g' | awk '{printf "%d",$4}')
((version_current = (version_start + version_change)))

version_01=$(echo $version_number | sed 's/\./ /g' | awk '{printf "%02d",$1}')
version_02=$(echo $version_number | sed 's/\./ /g' | awk '{printf "%02d",$2}')
version_03=$(echo $version_number | sed 's/\./ /g' | awk '{printf "%02d",$3}')
version_number=$version_01.$version_02.$version_03.$version_current

echo "#ifndef _SVN_VERSION_H"
echo "#define _SVN_VERSION_H"

echo "#define LOCAL_VERSION_DETAIL "\"$version_detail\"
echo "#define LOCAL_VERSION_NUMBER "\"$version_number\"

echo "const char * GetVersionNumber() {"
echo "return LOCAL_VERSION_NUMBER;"
echo "}"

echo "const char * GetVersionDetail() {"
echo "return LOCAL_VERSION_DETAIL;"
echo "}"

echo "#endif"
