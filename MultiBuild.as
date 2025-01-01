void main(MultiBuild::Workspace& workspace) {	
	auto project = workspace.create_project(".");
	auto properties = project.properties();

	project.name("Clipper2");
	properties.binary_object_kind(MultiBuild::BinaryObjectKind::eStaticLib);
	project.license("./LICENSE");

	project.include_own_required_includes(true);
	project.add_required_project_include({
		"./CPP/Clipper2Lib/include"
	});

	properties.files({
		"./CPP/Clipper2Lib/**.h",
		"./CPP/Clipper2Lib/**.cpp"
	});
}