/* This file was generated by Ragel. Your edits will be lost.
 *
 * This is a state machine implementation of Array#pack.
 *
 * vim: filetype=cpp
 */

#include "vm.hpp"
#include "object_utils.hpp"

#include "builtin/array.hpp"
#include "builtin/exception.hpp"
#include "builtin/string.hpp"

namespace rubinius {
  String* Array::pack(STATE, String* directives) {
    // Ragel-specific variables
    std::string d(directives->c_str(), directives->size());
    const char *p  = d.c_str();
    const char *pe = p + d.size();
    const char *eof = pe;
    int cs;

    // pack-specific variables
    size_t index = 0;
    size_t count = 0;
    size_t stop = 0;
    bool rest = false;
    std::string str("");

%%{

  machine pack;

  include "pack.rl";

}%%

    if(pack_first_final && pack_error && pack_en_main) {
      // do nothing
    }

    return force_as<String>(Primitives::failure());
  }
}
