-- vim.opt.spell = true
-- vim.opt.spelllang = { 'en_gb' }

-- require('cmp').setup({
--     sources = {
--         {
--             name = 'spell',
--             option = {
--                 keep_all_entries = false,
--                 enable_in_context = function()
--                     return true
--                 end,
--             },
--         },
--     },
-- })
require("cmp").setup({
  -- other settings
  sources = {
  -- other sources
    {
      name = "dictionary",
      keyword_length = 2,
    },
  }
})

local dict = require("cmp_dictionary")

dict.setup({
  -- The following are default values.
  exact = 2,
  first_case_insensitive = true,
  document = false,
  document_command = "wn %s -over",
  async = false,
  sqlite = false,
  max_items = -1,
  capacity = 5,
  debug = false,
})

dict.switcher({
  spelllang = {
    en = "/home/brandon/.local/share/nvim/dict/my.dict",
  },
})
