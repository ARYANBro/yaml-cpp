project "yaml-cpp"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"
	staticruntime "on"

	targetdir ("%{wks.location}/Binaries/%{cfg.buildcfg}/Vendor/%{prj.name}")
	objdir ("%{wks.location}/Binaries/%{cfg.buildcfg}/Vendor/%{prj.name}/Objects")

	files
	{
		"src/**.cpp",
		"src/**.h",
	}

	includedirs
	{
		"include"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
	
	filter "configurations:Release"
		runtime "Release"
		optimize "on"