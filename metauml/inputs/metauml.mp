% Copyright 2005 2015 Ovidiu Gheorghies
% Licensed under the Apache License, Version 2.0.

if known _metauml_mp:
  expandafter endinput
fi;
_metauml_mp:=1;

% Sadly, this copy of the macro is needed to prevent multiple file loads being shown by MetaPost.
% The guard values (such as _metauml_mp) do ensure that the file isn't loaded multiple times, 
% but this macro makes sure that MetaPost won't try to load the file and display a message for that.
def inputonce text libraryFile=
	if not known scantokens ("_" & str libraryFile & "_mp"):
		%includeonce% show "Loading " & str libraryFile;
		scantokens ("input " & str libraryFile);
	else:
		%includeonce% show str libraryFile & " already loaded.";
	fi;
enddef;

inputonce util_infrastructure;
inputonce util_object;
inputonce util_commons;
inputonce util_margins;
inputonce util_picture;
inputonce util_group;
inputonce util_picture_stack;
inputonce util_positioning;
inputonce util_shade;

inputonce metauml_base;

inputonce metauml_links;
inputonce metauml_paths;

inputonce metauml_note;

inputonce metauml_stereotype;

inputonce metauml_class;
inputonce metauml_instance;
inputonce metauml_class_relations;
inputonce metauml_class_assoc;

inputonce metauml_package;
inputonce metauml_package_relations;

inputonce metauml_behavioral_common;
inputonce metauml_activity;
inputonce metauml_state;

inputonce metauml_usecase_clipart;
inputonce metauml_usecase;

input metauml_behavioral_common;
input metauml_activity;
input metauml_state;

input metauml_usecase_clipart;
input metauml_usecase;

input metauml_component;
input metauml_component_relations;

input metauml_templates;

