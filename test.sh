#!/bin/sh

set -e

ini_read='./ini_read'

ini_file='./test.ini'

test_read_target_value() {
	# export DEBUG=true
	assertEquals 'target_value' "$($ini_read $ini_file test_section target_key)"
}

test_read_target_value_with_quotation_field() {
	# export DEBUG=true
	assertEquals '"target_value_with_quotation_field"' "$($ini_read $ini_file test_section target_key_with_quotation_field)"
}

test_read_target_value_with_multiple_value() {
	# export DEBUG=true
	assertEquals 'target  value  with  multiple  value' "$($ini_read $ini_file test_section target_key_with_multiple_value)"
}

test_read_target_value_with_quotation_field_with_multiple_value() {
	# export DEBUG=true
	assertEquals '"target  value  with  quotation  field  multiple  value"' "$($ini_read $ini_file test_section target_key_with_quotation_field_with_multiple_value)"
}

test_read_target_value_with_connective_assign() {
	# export DEBUG=true
	assertEquals 'target_value_with_connective_assign' "$($ini_read $ini_file test_section target_key_with_connective_assign)"
}

test_read_target_value_with_connective_assign_with_quotation_field() {
	# export DEBUG=true
	assertEquals '"target_value_with_connective_assign_with_quotation_field"' "$($ini_read $ini_file test_section target_key_with_connective_assign_with_quotation_field)"
}

test_read_target_value_with_connective_assign_with_multiple_value() {
	# export DEBUG=true
	assertEquals 'target  value  with  connective  assign  with  multiple  value' "$($ini_read $ini_file test_section target_key_with_connective_assign_with_multiple_value)"
}

test_read_target_value_with_connective_assign_with_quotation_field_with_multiple_value() {
	# export DEBUG=true
	assertEquals '"target  value  with  connective  assign  with  quotation  field  with  multiple  value"' "$($ini_read $ini_file test_section target_key_with_connective_assign_with_quotation_field_with_multiple_value)"
}

test_read_target_value_with_hash_comment() {
	# export DEBUG=true
	assertEquals 'target_value_with_hash_comment' "$($ini_read $ini_file test_section target_key_with_hash_comment)"
}

test_read_target_value_with_semicolon_comment() {
	# export DEBUG=true
	assertEquals 'target_value_with_semicolon_comment' "$($ini_read $ini_file test_section target_key_with_semicolon_comment)"
}

test_read_target_value_with_connective_hash_comment() {
	# export DEBUG=true
	assertEquals 'target_value_with_connective_hash_comment' "$($ini_read $ini_file test_section target_key_with_connective_hash_comment)"
}

test_read_target_value_with_connective_semicolon_comment() {
	# export DEBUG=true
	assertEquals 'target_value_with_connective_semicolon_comment' "$($ini_read $ini_file test_section target_key_with_connective_semicolon_comment)"
}

test_read_target_value_with_quotation_field_with_hash_comment() {
	# export DEBUG=true
	assertEquals '"target_value_with_quotation_field_with_hash_comment"' "$($ini_read $ini_file test_section target_key_with_quotation_field_with_hash_comment)"
}

test_read_target_value_with_quotation_field_with_semicolon_comment() {
	# export DEBUG=true
	assertEquals '"target_value_with_quotation_field_with_semicolon_comment"' "$($ini_read $ini_file test_section target_key_with_quotation_field_with_semicolon_comment)"
}

test_read_target_value_with_quotation_field_with_connective_hash_comment() {
	# export DEBUG=true
	assertEquals '"target_value_with_quotation_field_with_connective_hash_comment"' "$($ini_read $ini_file test_section target_key_with_quotation_field_with_connective_hash_comment)"
}

test_read_target_value_with_quotation_field_with_connective_semicolon_comment() {
	# export DEBUG=true
	assertEquals '"target_value_with_quotation_field_with_connective_semicolon_comment"' "$($ini_read $ini_file test_section target_key_with_quotation_field_with_connective_semicolon_comment)"
}

test_read_target_value_with_multiple_value_with_hash_comment() {
	# export DEBUG=true
	assertEquals 'target  value  with  multiple  value  with  hash  comment' "$($ini_read $ini_file test_section target_key_with_multiple_value_with_hash_comment)"
}

test_read_target_value_with_multiple_value_with_semicolon_comment() {
	# export DEBUG=true
	assertEquals 'target  value  with  multiple  value  with  semicolon  comment' "$($ini_read $ini_file test_section target_key_with_multiple_value_with_semicolon_comment)"
}

test_read_target_value_with_multiple_value_with_connective_hash_comment() {
	# export DEBUG=true
	assertEquals 'target  value  with  multiple  value  with  connective  hash  comment' "$($ini_read $ini_file test_section target_key_with_multiple_value_with_connective_hash_comment)"
}

test_read_target_value_with_multiple_value_with_connective_semicolon_comment() {
	# export DEBUG=true
	assertEquals 'target  value  with  multiple  value  with  connective  semicolon  comment' "$($ini_read $ini_file test_section target_key_with_multiple_value_with_connective_semicolon_comment)"
}

test_read_target_value_with_quotation_field_with_multiple_value_with_hash_comment() {
	# export DEBUG=true
	assertEquals '"target  value  with  quotation  field  with  multiple value  with  hash  comment"' "$($ini_read $ini_file test_section target_key_with_quotation_field_with_multiple_value_with_hash_comment)"
}

test_read_target_value_with_quotation_field_with_multiple_value_with_semicolon_comment() {
	# export DEBUG=true
	assertEquals '"target  value  with  quotation  field  with  multiple  value  with  semicolon  comment"' "$($ini_read $ini_file test_section target_key_with_quotation_field_with_multiple_value_with_semicolon_comment)"
}

test_read_target_value_with_quotation_field_with_multiple_value_with_connective_hash_comment() {
	# export DEBUG=true
	assertEquals '"target  value  with  quotation  field  with  multiple  value  with  connective  hash  comment"' "$($ini_read $ini_file test_section target_key_with_quotation_field_with_multiple_value_with_connective_hash_comment)"
}

test_read_target_value_with_quotation_field_with_multiple_value_with_connective_semicolon_comment() {
	# export DEBUG=true
	assertEquals '"target  value  with  quotation  field  with  multiple  value  with  connective  semicolon  comment"' "$($ini_read $ini_file test_section target_key_with_quotation_field_with_multiple_value_with_connective_semicolon_comment)"
}

test_read_target_value_with_connective_assign_with_space_tab_ahead() {
	# export DEBUG=true
	assertEquals 'target_value_with_connective_assign_with_space_tab_ahead' "$($ini_read $ini_file test_section target_key_with_connective_assign_with_space_tab_ahead)"
}

test_read_target_value_with_connective_assign_with_quotation_field_with_space_tab_ahead() {
	# export DEBUG=true
	assertEquals '"target_value_with_connective_assign_with_quotation_field_with_space_tab_ahead"' "$($ini_read $ini_file test_section target_key_with_connective_assign_with_quotation_field_with_space_tab_ahead)"
}

test_read_target_value_with_connective_assign_with_multiple_value_with_space_tab_ahead() {
	# export DEBUG=true
	assertEquals 'target  value  with  connective  assign  with  multiple  value  with  space  tab  ahead' "$($ini_read $ini_file test_section target_key_with_connective_assign_with_multiple_value_with_space_tab_ahead)"
}

test_read_target_value_with_connective_assign_with_quotation_field_with_multiple_value_with_space_tab_ahead() {
	# export DEBUG=true
	assertEquals '"target  value  with  connective  assign  with  quotation  field  with  multiple  value  with  space  tab  ahead"' "$($ini_read $ini_file test_section target_key_with_connective_assign_with_quotation_field_with_multiple_value_with_space_tab_ahead)"
}

test_read_target_value_with_hash_comment_with_space_tab_ahead() {
	# export DEBUG=true
	assertEquals 'target_value_with_hash_comment_with_space_tab_ahead' "$($ini_read $ini_file test_section target_key_with_hash_comment_with_space_tab_ahead)"
}

test_read_target_value_with_semicolon_comment_with_space_tab_ahead() {
	# export DEBUG=true
	assertEquals 'target_value_with_semicolon_comment_with_space_tab_ahead' "$($ini_read $ini_file test_section target_key_with_semicolon_comment_with_space_tab_ahead)"
}

test_read_target_value_with_connective_hash_comment_with_space_tab_ahead() {
	# export DEBUG=true
	assertEquals 'target_value_with_connective_hash_comment_with_space_tab_ahead' "$($ini_read $ini_file test_section target_key_with_connective_hash_comment_with_space_tab_ahead)"
}

test_read_target_value_with_connective_semicolon_comment_with_space_tab_ahead() {
	# export DEBUG=true
	assertEquals 'target_value_with_connective_semicolon_comment_with_space_tab_ahead' "$($ini_read $ini_file test_section target_key_with_connective_semicolon_comment_with_space_tab_ahead)"
}

test_read_target_value_with_quotation_field_with_hash_comment_with_space_tab_ahead() {
	# export DEBUG=true
	assertEquals '"target_value_with_quotation_field_with_hash_comment_with_space_tab_ahead"' "$($ini_read $ini_file test_section target_key_with_quotation_field_with_hash_comment_with_space_tab_ahead)"
}

test_read_target_value_with_quotation_field_with_semicolon_comment_with_space_tab_ahead() {
	# export DEBUG=true
	assertEquals '"target_value_with_quotation_field_with_semicolon_comment_with_space_tab_ahead"' "$($ini_read $ini_file test_section target_key_with_quotation_field_with_semicolon_comment_with_space_tab_ahead)"
}

test_read_target_value_with_quotation_field_with_connective_hash_comment_with_space_tab_ahead() {
	# export DEBUG=true
	assertEquals '"target_value_with_quotation_field_with_connective_hash_comment_with_space_tab_ahead"' "$($ini_read $ini_file test_section target_key_with_quotation_field_with_connective_hash_comment_with_space_tab_ahead)"
}

test_read_target_value_with_quotation_field_with_connective_semicolon_comment_with_space_tab_ahead() {
	# export DEBUG=true
	assertEquals '"target_value_with_quotation_field_with_connective_semicolon_comment_with_space_tab_ahead"' "$($ini_read $ini_file test_section target_key_with_quotation_field_with_connective_semicolon_comment_with_space_tab_ahead)"
}

test_read_target_value_with_multiple_value_with_hash_comment_with_space_tab_ahead() {
	# export DEBUG=true
	assertEquals 'target  value  with  multiple  value  with  hash  comment  with  space  tab  ahead' "$($ini_read $ini_file test_section target_key_with_multiple_value_with_hash_comment_with_space_tab_ahead)"
}

test_read_target_value_with_multiple_value_with_semicolon_comment_with_space_tab_ahead() {
	# export DEBUG=true
	assertEquals 'target  value  with  multiple  value  with  semicolon  comment  with  space  tab  ahead' "$($ini_read $ini_file test_section target_key_with_multiple_value_with_semicolon_comment_with_space_tab_ahead)"
}

test_read_target_value_with_multiple_value_with_connective_hash_comment_with_space_tab_ahead() {
	# export DEBUG=true
	assertEquals 'target  value  with  multiple  value  with  connective  hash  comment  with  space  tab  ahead' "$($ini_read $ini_file test_section target_key_with_multiple_value_with_connective_hash_comment_with_space_tab_ahead)"
}

test_read_target_value_with_multiple_value_with_connective_semicolon_comment_with_space_tab_ahead() {
	# export DEBUG=true
	assertEquals 'target  value  with  multiple  value  with  connective  semicolon  comment  with  space  tab  ahead' "$($ini_read $ini_file test_section target_key_with_multiple_value_with_connective_semicolon_comment_with_space_tab_ahead)"
}

test_read_target_value_with_quotation_field_with_multiple_value_with_hash_comment_with_space_tab_ahead() {
	# export DEBUG=true
	assertEquals '"target  value  with  quotation  field  with  multiple value  with  hash  comment  with  space  tab  ahead"' "$($ini_read $ini_file test_section target_key_with_quotation_field_with_multiple_value_with_hash_comment_with_space_tab_ahead)"
}

test_read_target_value_with_quotation_field_with_multiple_value_with_semicolon_comment_with_space_tab_ahead() {
	# export DEBUG=true
	assertEquals '"target  value  with  quotation  field  with  multiple  value  with  semicolon  comment  with  space  tab  ahead"' "$($ini_read $ini_file test_section target_key_with_quotation_field_with_multiple_value_with_semicolon_comment_with_space_tab_ahead)"
}

test_read_target_value_with_quotation_field_with_multiple_value_with_connective_hash_comment_with_space_tab_ahead() {
	# export DEBUG=true
	assertEquals '"target  value  with  quotation  field  with  multiple  value  with  connective  hash  comment  with  space  tab  ahead"' "$($ini_read $ini_file test_section target_key_with_quotation_field_with_multiple_value_with_connective_hash_comment_with_space_tab_ahead)"
}

test_read_target_value_with_quotation_field_with_multiple_value_with_connective_semicolon_comment_with_space_tab_ahead() {
	# export DEBUG=true
	assertEquals '"target  value  with  quotation  field  with  multiple  value  with  connective  semicolon  comment  with  space  tab  ahead"' "$($ini_read $ini_file test_section target_key_with_quotation_field_with_multiple_value_with_connective_semicolon_comment_with_space_tab_ahead)"
}

test_read_target_value_with_quotation_field_with_comment_characters() {
	# export DEBUG=true
	assertEquals '"#;"' "$($ini_read $ini_file test_section target_key_with_quotation_field_with_comment_characters)"
}


setUp() {
	export DEBUG=false
}

oneTimeTearDown() {
  rm -f "$ini_file"
	true
}

oneTimeSetUp() {
	cat << EOINI > $ini_file
target_key_out_of_section = target_value_out_of_section

[dummy_section_1]
dummy_key_1 = dummy_value_1

[dummy_section_2]
target_key = same key in wrong section value

[test_section]
dummy_key_1 = dummy_value_1 # dummy hash comment
dummy_key_2 = dummy_value_2 ; dummy semicolon comment

target_key = target_value
target_key_with_quotation_field = "target_value_with_quotation_field"
target_key_with_multiple_value = target  value  with  multiple  value
target_key_with_quotation_field_with_multiple_value = "target  value  with  quotation  field  multiple  value"

target_key_with_connective_assign=target_value_with_connective_assign
target_key_with_connective_assign_with_quotation_field="target_value_with_connective_assign_with_quotation_field"
target_key_with_connective_assign_with_multiple_value=target  value  with  connective  assign  with  multiple  value
target_key_with_connective_assign_with_quotation_field_with_multiple_value="target  value  with  connective  assign  with  quotation  field  with  multiple  value"

target_key_with_hash_comment = target_value_with_hash_comment # hash comment of target_value_with_hash_comment
target_key_with_semicolon_comment = target_value_with_semicolon_comment ; semicolon comment of target_value_with_semicolon_comment
target_key_with_connective_hash_comment = target_value_with_connective_hash_comment# hash comment of target_value_with_connective_hash_comment
target_key_with_connective_semicolon_comment = target_value_with_connective_semicolon_comment; semicolon comment of target_value_with_connective_semicolon_comment

target_key_with_quotation_field_with_hash_comment = "target_value_with_quotation_field_with_hash_comment" # hash comment of target_value_with_hash_comment
target_key_with_quotation_field_with_semicolon_comment = "target_value_with_quotation_field_with_semicolon_comment" ; semicolon comment of target_value_with_semicolon_comment
target_key_with_quotation_field_with_connective_hash_comment = "target_value_with_quotation_field_with_connective_hash_comment"# hash comment of target_value_with_connective_hash_comment
target_key_with_quotation_field_with_connective_semicolon_comment = "target_value_with_quotation_field_with_connective_semicolon_comment"; semicolon comment of target_value_with_connective_semicolon_comment

target_key_with_multiple_value_with_hash_comment = target  value  with  multiple  value  with  hash  comment # hash comment of target_value_with_hash_comment
target_key_with_multiple_value_with_semicolon_comment = target  value  with  multiple  value  with  semicolon  comment ; semicolon comment of target_value_with_semicolon_comment
target_key_with_multiple_value_with_connective_hash_comment = target  value  with  multiple  value  with  connective  hash  comment# hash comment of target_value_with_connective_hash_comment
target_key_with_multiple_value_with_connective_semicolon_comment = target  value  with  multiple  value  with  connective  semicolon  comment; semicolon comment of target_value_with_connective_semicolon_comment

target_key_with_quotation_field_with_multiple_value_with_hash_comment = "target  value  with  quotation  field  with  multiple value  with  hash  comment" # hash comment of target value with quotation field with multiple value with hash comment
target_key_with_quotation_field_with_multiple_value_with_semicolon_comment = "target  value  with  quotation  field  with  multiple  value  with  semicolon  comment" ; semicolon comment of target value with quotation field with multiple value with semicolon comment
target_key_with_quotation_field_with_multiple_value_with_connective_hash_comment = "target  value  with  quotation  field  with  multiple  value  with  connective  hash  comment"# hash comment of target value with quotation field with multiple value with connective hash comment
target_key_with_quotation_field_with_multiple_value_with_connective_semicolon_comment = "target  value  with  quotation  field  with  multiple  value  with  connective  semicolon  comment"; semicolon comment of target value with quotation field with multiple value with connective semicolon comment

 	target_key_with_connective_assign_with_space_tab_ahead=target_value_with_connective_assign_with_space_tab_ahead
 	target_key_with_connective_assign_with_quotation_field_with_space_tab_ahead="target_value_with_connective_assign_with_quotation_field_with_space_tab_ahead"
 	target_key_with_connective_assign_with_multiple_value_with_space_tab_ahead=target  value  with  connective  assign  with  multiple  value  with  space  tab  ahead
 	target_key_with_connective_assign_with_quotation_field_with_multiple_value_with_space_tab_ahead="target  value  with  connective  assign  with  quotation  field  with  multiple  value  with  space  tab  ahead"

 	target_key_with_hash_comment_with_space_tab_ahead = target_value_with_hash_comment_with_space_tab_ahead # hash comment of target_value_with_hash_comment_with_space_tab_ahead
 	target_key_with_semicolon_comment_with_space_tab_ahead = target_value_with_semicolon_comment_with_space_tab_ahead ; semicolon comment of target_value_with_semicolon_comment_with_space_tab_ahead
 	target_key_with_connective_hash_comment_with_space_tab_ahead = target_value_with_connective_hash_comment_with_space_tab_ahead# hash comment of target_value_with_connective_hash_comment_with_space_tab_ahead
 	target_key_with_connective_semicolon_comment_with_space_tab_ahead = target_value_with_connective_semicolon_comment_with_space_tab_ahead; semicolon comment of target_value_with_connective_semicolon_comment_with_space_tab_ahead

 	target_key_with_quotation_field_with_hash_comment_with_space_tab_ahead = "target_value_with_quotation_field_with_hash_comment_with_space_tab_ahead" # hash comment of target_value_with_hash_comment_with_space_tab_ahead
 	target_key_with_quotation_field_with_semicolon_comment_with_space_tab_ahead = "target_value_with_quotation_field_with_semicolon_comment_with_space_tab_ahead" ; semicolon comment of target_value_with_semicolon_comment_with_space_tab_ahead
 	target_key_with_quotation_field_with_connective_hash_comment_with_space_tab_ahead = "target_value_with_quotation_field_with_connective_hash_comment_with_space_tab_ahead"# hash comment of target_value_with_connective_hash_comment_with_space_tab_ahead
 	target_key_with_quotation_field_with_connective_semicolon_comment_with_space_tab_ahead = "target_value_with_quotation_field_with_connective_semicolon_comment_with_space_tab_ahead"; semicolon comment of target_value_with_connective_semicolon_comment_with_space_tab_ahead

 	target_key_with_multiple_value_with_hash_comment_with_space_tab_ahead = target  value  with  multiple  value  with  hash  comment  with  space  tab  ahead # hash comment of target_value_with_hash_comment_with_space_tab_ahead
 	target_key_with_multiple_value_with_semicolon_comment_with_space_tab_ahead = target  value  with  multiple  value  with  semicolon  comment  with  space  tab  ahead ; semicolon comment of target_value_with_semicolon_comment_with_space_tab_ahead
 	target_key_with_multiple_value_with_connective_hash_comment_with_space_tab_ahead = target  value  with  multiple  value  with  connective  hash  comment  with  space  tab  ahead# hash comment of target_value_with_connective_hash_comment_with_space_tab_ahead
 	target_key_with_multiple_value_with_connective_semicolon_comment_with_space_tab_ahead = target  value  with  multiple  value  with  connective  semicolon  comment  with  space  tab  ahead; semicolon comment of target_value_with_connective_semicolon_comment_with_space_tab_ahead

 	target_key_with_quotation_field_with_multiple_value_with_hash_comment_with_space_tab_ahead = "target  value  with  quotation  field  with  multiple value  with  hash  comment  with  space  tab  ahead" # hash comment of target value with quotation field with multiple value with hash comment with space tab ahead
 	target_key_with_quotation_field_with_multiple_value_with_semicolon_comment_with_space_tab_ahead = "target  value  with  quotation  field  with  multiple  value  with  semicolon  comment  with  space  tab  ahead" ; semicolon comment of target value with quotation field with multiple value with semicolon comment with space tab ahead
 	target_key_with_quotation_field_with_multiple_value_with_connective_hash_comment_with_space_tab_ahead = "target  value  with  quotation  field  with  multiple  value  with  connective  hash  comment  with  space  tab  ahead"# hash comment of target value with quotation field with multiple value with connective hash comment with space tab ahead
 	target_key_with_quotation_field_with_multiple_value_with_connective_semicolon_comment_with_space_tab_ahead = "target  value  with  quotation  field  with  multiple  value  with  connective  semicolon  comment  with  space  tab  ahead"; semicolon comment of target value with quotation field with multiple value with connective semicolon comment with space tab ahead

 	target_key_with_quotation_field_with_comment_characters = "#;" #;

[dummy_section_3]
dummy_key_1 = dummy_value_1
EOINI
}

if ! [ -e 'shunit2' ]; then
  git clone https://github.com/kward/shunit2.git
fi

. ./shunit2/shunit2