package hello

import "core:os"
import "core:strings"
import "core:mem"

ParsingError :: union {
	InvalidSyntax,
	InvalidValue,
}

InvalidSyntax :: struct {
	line:   int,
	column: int,
	data:   []byte,
}
InvalidValue :: struct {
	line:   int,
	column: int,
	data:   []byte,
	value:  string,
}
ConfigurationError :: union {
	ParsingError,
	FileReadFailed,
    mem.Allocator_Error
}

FileReadFailed :: struct {
	filename: string,
}


parse_configuration :: proc(data: []byte) -> (config: Configuration, err: ParsingError) {

	return config, nil
}

reading_configuration :: proc(
	filename: string,
    url:string,
) -> (
	config: Configuration,
	err: ConfigurationError,
) {
	config.filename =  filename
	file_data, read_was_ok := os.read_entire_file_from_filename(filename)
	if !read_was_ok {
		return Configuration{}, FileReadFailed{filename = filename}
	}
	parse_config := parse_configuration(file_data) or_return

    parse_config.url = strings.concatenate({"prefix://" ,parse_config.url}) or_return

	return parse_config, nil
}
