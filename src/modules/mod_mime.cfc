component mod_mime extends="base"
{
	// http://httpd.apache.org/docs/current/mod/mod_mime.html

	function AddCharset()                 { return _rename('charset':arguments[1],'extensions':ArraySlice(arguments,2)); }          // charset extension [extension] ...
	function AddEncoding()                { return _rename('encoding':arguments[1],'extensions':ArraySlice(arguments,2)); }         // encoding extension [extension] ...
	function AddHandler()                 { return _rename('handlerName':arguments[1],'extensions':ArraySlice(arguments,2)); }      // handler-name extension [extension] ...
	function AddInputFilter()             { return _rename('filters',arguments[1].split(';'),extensions:ArraySlice(arguments,2)); } // filter[;filter...] extension [extension] ...
	function AddLanguage()                { return _rename('languageTag':arguments[1],'extensions':ArraySlice(arguments,2)); }      // language-tag extension [extension] ...
	function AddOutputFilter()            { return _rename('filters',arguments[1].split(';'),extensions:ArraySlice(arguments,2)); } // filter[;filter...] extension [extension] ...
	function AddType()                    { return _rename('mediaType':arguments[1],'extensions':ArraySlice(arguments,2)); }        // media-type extension [extension] ...
	function DefaultLanguage(languageTag) { return arguments; } // language-tag
	function ModMimeUsePathInfo(value)    { return arguments; } // On|Off
	function MultiviewsMatch()            { return arguments; } // Any|NegotiatedOnly|Filters|Handlers [Handlers|Filters]
	function RemoveCharset()              { return _rename('extensions':arguments); } // extension [extension] ...
	function RemoveEncoding()             { return _rename('extensions':arguments); } // extension [extension] ...
	function RemoveHandler()              { return _rename('extensions':arguments); } // extension [extension] ...
	function RemoveInputFilter()          { return _rename('extensions':arguments); } // extension [extension] ...
	function RemoveLanguage()             { return _rename('extensions':arguments); } // extension [extension] ...
	function RemoveOutputFilter()         { return _rename('extensions':arguments); } // extension [extension] ...
	function RemoveType()                 { return _rename('extensions':arguments); } // extension [extension] ...
	function TypesConfig(filePath)        { return arguments; } // file-path

}