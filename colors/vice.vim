" Author: Tom the Enchanter <tom@neognostic.org>

lua << EOF

package.loaded["vice"] = nil
package.loaded["vice.base"] = nil
package.loaded["vice.treesitter"] = nil
package.loaded["vice.lsp"] = nil
package.loaded["vice.others"] = nil

require("vice")

EOF
