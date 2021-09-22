module google.protobuf.textformat.parser;

import std.sumtype;

// import google.protobuf.common;
import google.protobuf.field_mask : toCamelCase, toSnakeCase;
// import google.protobuf.descriptor;

bool parseFromString(M)(string input, ref M message) {
  return true;
}

struct Ast {
  alias Value = SumType!(
      long,
      double,
      string,
      Ast*);

  const(char)[] key;
  Value value;
}

struct Lexer {
  const(char)* ptr;

  string front() {
    return "";
  }

  void popFront() {
  }

  bool empty() {
    return ptr !is null || *ptr == 0;
  }
}

struct Parser {
  Lexer lexer;

  void consumeComment() {
  }
}


version (unittest) {
  import generated_code : TestAllTypes;

  enum protoDebugString = `
optional_int32: 101
optional_int64: 102
optional_uint32: 103
optional_uint64: 104
optional_sint32: 105
optional_sint64: 106
optional_fixed32: 107
optional_fixed64: 108
optional_sfixed32: 109
optional_sfixed64: 110
optional_float: 111
optional_double: 112
optional_bool: true
optional_string: "115"
optional_bytes: "116"
`;
}

version (textformat_test) unittest {

}
