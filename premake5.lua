project "box2d"
	kind "StaticLib"
	language "C++"
	cppdialect "C++11"
	staticruntime "off"

	targetdir (ProjectTargetDir)
	objdir (ProjectObjDir)

	files
	{
		"src/**.h",
		"src/**.cpp",
		"include/**.h"
	}

	includedirs
	{
		"include",
		"src"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Shipping"
		runtime "Release"
		optimize "speed"