return {
  'kawre/leetcode.nvim',
  build = ':TSUpdate html',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim', -- required by telescope
    'MunifTanjim/nui.nvim',

    -- optional
    'nvim-treesitter/nvim-treesitter',
    'rcarriga/nvim-notify',
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    -- configuration goes here
    lang = 'cpp',
    plugins = {
      non_standalone = true,
    },
    injector = {
      ['rust'] = {
        before = 'struct Solution{}',
      },
      ['cpp'] = {
        before = { '#include <bits/stdc++.h>', 'using namespace std;' },
        after = 'int main() {}',
      },
    },
  },
}
