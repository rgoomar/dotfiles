return {
   ["hashivim/vim-terraform"] = { 
     config = function()
       vim.api.nvim_set_var('terraform_fmt_on_save', 1)
     end
   },
   ["earthly/earthly.vim"] = {},
}
