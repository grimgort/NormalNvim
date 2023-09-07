-- SPECIAL lazyvim
local disableVariable = true
return {
  {
    event = "BufEnter",
    "ggandor/leap.nvim",
    enabled = true,
    -- keys = {
    --   {
    --     "e",
    --     mode = { "n", "x", "o" },
    --     function()
    --       local current_window = vim.fn.win_getid()
    --       require("leap").leap({ target_windows = { current_window } })
    --     end,
    --   },
    -- },
    -- config = function(_, opts)
    --   local leap = require("leap")
    --   for k, v in pairs(opts) do
    --     leap.opts[k] = v
    --   end
    --   leap.add_default_mappings(true)
    --   vim.keymap.del({ "x", "o" }, "x")
    --   vim.keymap.del({ "x", "o" }, "X")
    -- end,
  },
  -- {
  --   "ggandor/flit.nvim",
  --   enabled = false,
  -- },
  -- {
  --   "kyazdani42/nvim-tree.lua",
  --   enabled = false,
  --   config = function()
  --     require("plugins.configs.nvimtree")
  --   end,
  -- },

  {
    "numtostr/FTerm.nvim",
    event = "BufEnter",
    config = function()
      require("plugins.configs.fterm")
    end,
  },
  {
    "sindrets/diffview.nvim",
    event = "BufEnter",
    enabled = disableVariable,
    -- event = "BufRead",
  },
  -- {
  --   "theHamsta/nvim-dap-virtual-text",
  --   config = function()
  --     require("plugins.configs.nvim-dap-virtual-text")
  --   end,
  --   dependencies = { "mfussenegger/nvim-dap", "nvim-treesitter/nvim-treesitter" },
  -- },
  -- {
  --   "jay-babu/mason-nvim-dap.nvim",
  --   config = function()
  --     require("plugins.configs.mason-nvim-dap")
  --   end,
  -- },



  {
    "npxbr/glow.nvim",
    event = "BufEnter",
    enabled = disableVariable,
    ft = { "markdown" },
    config = function()
      require("plugins.configs.glow")
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    event = "BufEnter",
    enabled = disableVariable,
    run = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },

  {
    "ray-x/starry.nvim",
    event = "BufEnter",
    opts = function()
      vim.g.starry_style = "marianna"
      -- require("starry").setup()
    end,
    -- keys = { "<F2>" },
  },
  { "simnalamburt/vim-mundo", enabled = disableVariable
    ,event = "BufEnter"
  },
  {
    "rhysd/git-messenger.vim",
    event = "BufEnter",
    disable = disableVariable,
    config = function()
      -- vim.api.nvim_command 'let g:git_messenger_include_diff="current"'
      --[[ vim.api.nvim_command("let g:git_messenger_floating_win_opts = { 'border': 'single' }") ]]
      --[[ vim.api.nvim_command("let g:git_messenger_no_default_mappings=v:true") ]]
      vim.api.nvim_command("let g:git_messenger_always_into_popup=v:true")
    end,
  },
  { "xolox/vim-colorscheme-switcher", enabled = disableVariable, dependencies = { "xolox/vim-misc" },
    event = "VeryLazy",
  },
  {
    "rhysd/devdocs.vim",
    enabled = disableVariable,
    config = function()
      vim.cmd([[let g:devdocs_filetype_map = {'c': 'c'} ]])
    end,
  },
  {
    "mzlogin/vim-markdown-toc",
    enabled = disableVariable,
  },
  -- {
  --   "glacambre/firenvim",
  --   run = function()
  --     vim.fn["firenvim#install"](0)
  --   end,
  -- },
  -- {
  --   "phaazon/hop.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("hop").setup()
  --     vim.api.nvim_set_keymap("n", "e", "<cmd>HopChar1<cr>", { silent = true })
  --     vim.api.nvim_set_keymap("n", "E", "<cmd>HopWord<cr>", { silent = true })
  --     vim.api.nvim_set_keymap("v", "e", "<cmd>HopChar1<cr>", { silent = true })
  --     vim.api.nvim_set_keymap("v", "E", "<cmd>HopWord<cr>", { silent = true })
  --   end,
  -- },
  { "kg8m/vim-simple-align" },
  -- {
  --   "vim-test/vim-test",
  -- },
  -- {
  --   "akinsho/git-conflict.nvim",
  --   config = function()
  --     require("git-conflict").setup({
  --       default_mappings = true, -- disable buffer local mapping created by this plugin
  --       disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
  --       --[[ highlights = { -- They must have background color, otherwise the default color will be used ]]
  --       --[[   incoming = "DiffText", ]]
  --       --[[   current = "DiffAdd", ]]
  --       --[[ }, ]]
  --     })
  --   end,
  -- },
  {
    "NeogitOrg/neogit",
    event = "VeryLazy",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("plugins.configs.neogit")
    end,
  },
    --   "kylechui/nvim-surround",
    --   config = function()
    --     require("nvim-surround").setup({
    --       -- Configuration here, or leave empty to use defaults
    --     })
    --   end,
    -- },

    {
      "renerocksai/telekasten.nvim",
      event = "VeryLazy",
      enabled = true,
      config = function()
        require("plugins.configs.telekasten")
      end,
    },
    {
      "max397574/better-escape.nvim",
      config = function()
        require("better_escape").setup()
      end,
    },

    { "tibabit/vim-templates" },

    -- { "numtostr/BufOnly.nvim", cmd = "BufOnly" },

    {
      "Civitasv/cmake-tools.nvim",
      enabled = true,
    -- event = "VeryLazy",
      config = function()
        require("plugins.configs.cmakeTool")
      end,
    },
    -- {
    --   "dnlhc/glance.nvim",
    --   config = function()
    --     require("glance").setup({
    --       -- your configuration
    --     })
    --   end,
    -- },
    {
      "mcchrish/zenbones.nvim",
      -- Optionally install Lush. Allows for more configuration or extending the colorscheme
      -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
      -- In Vim, compat mode is turned on as Lush only works in Neovim.
      requires = "rktjmp/lush.nvim",
    },
    -- {
    --   "nvim-neotest/neotest",
    --   requires = {
    --     "nvim-lua/plenary.nvim",
    --     "nvim-treesitter/nvim-treesitter",
    --   },
    --   config = function()
    --     require("plugins.configs.neotest")
    --   end,
    -- },
    -- {
    --   "nvim-neotest/neotest-vim-test",
    --   config = function()
    --     require("plugins.configs.neotest-vim-test")
    --   end,
    -- },

  -- {
  --   "nvimdev/lspsaga.nvim",
  --   enabled = false,
  --   branch = "main",
  --   config = function()
  --     require("lspsaga").setup({})
  --   end,
  --   dependencies = {
  --     { "nvim-tree/nvim-web-devicons" },
  --     --Please make sure you install markdown and markdown_inline parser
  --     { "nvim-treesitter/nvim-treesitter" },
  --   },
  -- },
  -- {
  --   "Shatur/neovim-cmake",
  --   enabled = disableVariable,
  --   config = function()
  --     local Path = require("plenary.path")
  --     require("cmake").setup({
  --       cmake_executable = "cmake", -- CMake executable to run.
  --       parameters_file = "neovim.json", -- JSON file to store information about selected target, run arguments and build type.
  --       -- build_dir = tostring(Path:new('{cwd}', 'build', '{os}-{build_type}')), -- Build directory. The expressions `{cwd}`, `{os}` and `{build_type}` will be expanded with the corresponding text values.
  --       build_dir = tostring(Path:new("{cwd}", "build")), -- Build directory. The expressions `{cwd}`, `{os}` and `{build_type}` will be expanded with the corresponding text values.
  --       -- samples_path = tostring(script_path:parent():parent():parent() / 'samples'), -- Folder with samples. `samples` folder from the plugin directory is used by default.
  --       default_projects_path = tostring(Path:new(vim.loop.os_homedir(), "Projects")), -- Default folder for creating project.
  --       configure_args = { "-D", "CMAKE_EXPORT_COMPILE_COMMANDS=1" }, -- Default arguments that will be always passed at cmake configure step. By default tells cmake to generate `compile_commands.json`.
  --       build_args = {}, -- Default arguments that will be always passed at cmake build step.
  --       on_build_output = nil, -- Callback which will be called on every line that is printed during build process. Accepts printed line as argument.
  --       quickfix_height = 10, -- Height of the opened quickfix.
  --       -- quickfix_only_on_error = true, -- Open quickfix window only if target build failed.
  --       dap_configuration = { type = "cpp", request = "launch" }, -- DAP configuration. By default configured to work with `lldb-vscode`.
  --       dap_open_command = require("dap").repl.open, -- Command to run after starting DAP session. You can set it to `false` if you don't want to open anything or `require('dapui').open` if you are using https://github.com/rcarriga/nvim-dap-ui
  --     })
  --   end,
  -- },
  {
    "HiPhish/rainbow-delimiters.nvim",
    config = function()
      require("plugins.configs.nvim-ts-rainbow")
    end,
  },
  {
    "voldikss/vim-translator",
    enabled = disableVariable,
    config = function()
      vim.api.nvim_set_var("translator_target_lang", "fr")
      vim.api.nvim_set_var("translator_source_lang", "en")
      vim.api.nvim_set_var("translator_proxy_url", "http://proxy.onera:80")
    end,
  },
  { "p00f/clangd_extensions.nvim" },
  {
    "rmagatti/goto-preview",
    config = function()
      require("goto-preview").setup({})
    end,
  },
  -- { "Darazaki/indent-o-matic" },
  { "renerocksai/calendar-vim" },
  -- { "joechrisellis/lsp-format-modifications.nvim", dependencies = { "neovim/nvim-lspconfig" } },
  -- { "wellle/context.vim" },
  -- nvim-treesitter-context ne prend pas bien les elseif . attendre de nouveau dev cntext.vim a la place work
  -- {
  --   "lewis6991/nvim-treesitter-context",
  --   config = function()
  --     require("plugins.configs.nvim-treesitter-context")
  --   end,
  -- },
  {
    "skywind3000/asyncrun.vim",
    disable = disableVariable,
    enabled = true,
  },
  -- {
  --   "skywind3000/asynctasks.vim",
  --   disable = disableVariable,
  --   enabled = false,
  -- },
  -- {
  --   "joechrisellis/lsp-format-modifications.nvim",
  --   config = function()
  -- require("lsp-format-modifications").setup({
  --   -- The callback that is invoked to compute a diff so that we know what to
  --   -- format. This defaults to vim.diff with some sensible defaults.
  --   -- The callback that is invoked to actually do the formatting on the changed
  --   -- hunks. Defaults to vim.lsp.buf.format (requires Neovim ≥ 0.8).
  --   format_callback = vim.lsp.buf.format,
  --
  --   -- If set to true, an autocommand will be created to automatically format
  --   -- modifications on save. Defaults to false. This is provided merely for
  --   -- convenience so that you don't have to create the autocommand yourself.
  --   format_on_save = false,
  --
  --   -- The VCS to use. Possible options are: "git", "hg". Defaults to "git".
  --   vcs = "git",
  --
  --   -- EXPERIMENTAL: when true, do not attempt to format the outermost empty
  --   -- lines in diff hunks, and do not touch hunks consisting of entirely empty
  --   -- lines. For some LSP servers, this can result in more intuitive behaviour.
  --   experimental_empty_line_handling = false,
  -- })
  --   end,
  -- },
  -- {
  --   "neovim/nvim-lspconfig",
  --   -- dependencies = {
  --   --   "joechrisellis/lsp-format-modifications.nvim",
  --   --   init = function()
  --   --     require("lazyvim.util").on_attach(function(client, bufnr)
  --   --       local lsp_format_modifications = require("lsp-format-modifications")
  --   --       lsp_format_modifications.attach(client, bufnr, { format_on_save = true })
  --   --     end)
  --   --   end,
  --   -- },
  --   opts = {
  --     autoformat = false,
  --   },
  -- },
  -- {
  --   "williamboman/mason-lspconfig.nvim",
  -- },
  -- { "neovim/nvim-lspconfig" },
  --
  -- {
  --   "tamago324/nlsp-settings.nvim",
  --   config = function()
  --     require("plugins.configs.nlsp_setting")
  --   end,
  -- },
  {
    "Shatur/neovim-tasks",
    config = function()
      local Path = require("plenary.path")
      require("tasks").setup({
        default_params = {
          -- Default module parameters with which `neovim.json` will be created.
          cmake = {
            cmd = "cmake", -- CMake executable to use, can be changed using `:Task set_module_param cmake cmd`.
            build_dir = tostring(Path:new("{cwd}", "build")), -- Build directory. The expressions `{cwd}`, `{os}` and `{build_type}` will be expanded with the corresponding text values. Could be a function that return the path to the build directory.
            build_type = "Debug", -- Build type, can be changed using `:Task set_module_param cmake build_type`.
            dap_name = "lldb", -- DAP configuration name from `require('dap').configurations`. If there is no such configuration, a new one with this name as `type` will be created.
            args = { -- Task default arguments.
              configure = { "-D", "CMAKE_EXPORT_COMPILE_COMMANDS=1" },
            },
          },
        },
        save_before_run = false, -- If true, all files will be saved before executing a task.
        params_file = "neovim.json", -- JSON file to store module and task parameters.
        quickfix = {
          pos = "botright", -- Default quickfix position.
          height = 12, -- Default height.
        },
        dap_open_command = function()
          return require("dap").repl.open()
        end, --
      })
    end,
  },

  -- {
  --   "williamboman/mason.nvim",
  --   opts = function()
  --     require("plugins.configs.mason")
  --   end,
  -- },
  { "shaeinst/roshnivim-cs" },
  { "rafamadriz/neon" },
  { "tomasiser/vim-code-dark" },
  { "Mofiqul/vscode.nvim" },
  { "marko-cerovac/material.nvim" },
  { "bluz71/vim-nightfly-colors" },
  { "bluz71/vim-moonfly-colors" },
  { "ChristianChiarulli/nvcode-color-schemes.vim" },
  { "sainnhe/sonokai" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "kyazdani42/blue-moon" },
  { "mhartington/oceanic-next" },
  { "glepnir/zephyr-nvim" },
  { "rockerBOO/boo-colorscheme-nvim" },
  { "jim-at-jibba/ariake-vim-colors" },
  { "Th3Whit3Wolf/onebuddy" },
  { "ishan9299/modus-theme-vim" },
  { "sainnhe/edge" },
  { "theniceboy/nvim-deus" },
  { "bkegley/gloombuddy" },
  { "Th3Whit3Wolf/one-nvim" },
  { "PHSix/nvim-hybrid" },
  -- { "Th3Whit3Wolf/space-nvim" },
  { "yonlu/omni.vim" },
  { "ray-x/aurora" },
  -- { "ray-x/starry.nvim" },
  { "tanvirtin/monokai.nvim" },
  { "ofirgall/ofirkai.nvim" },
  { "savq/melange-nvim" },
  { "RRethy/nvim-base16" },
  { "fenetikm/falcon" },
  { "andersevenrud/nordic.nvim" },
  -- { "shaunsingh/nord.nvim" },
  { "svrana/neosolarized.nvim" },
  { "ishan9299/nvim-solarized-lua" },
  { "shaunsingh/moonlight.nvim" },
  { "navarasu/onedark.nvim" },
  { "lourenci/github-colors" },
  { "sainnhe/gruvbox-material" },
  { "sainnhe/everforest" },
  { "neanias/everforest-nvim" },
  { "NTBBloodbath/doom-one.nvim" },
  -- { "dracula/vim" },
  { "Mofiqul/dracula.nvim" },
  { "yashguptaz/calvera-dark.nvim" },
  { "nxvu699134/vn-night.nvim" },
  { "adisen99/codeschool.nvim" },
  { "projekt0n/github-nvim-theme" },
  { "kdheepak/monochrome.nvim" },
  { "rose-pine/neovim" },
  -- { "mcchrish/zenbones.nvim" },
  { "catppuccin/nvim" },
  { "FrenzyExists/aquarium-vim" },
  { "EdenEast/nightfox.nvim" },
  { "kvrohit/substrata.nvim" },
  { "ldelossa/vimdark" },
  { "Everblush/everblush.nvim" },
  { "adisen99/apprentice.nvim" },
  { "olimorris/onedarkpro.nvim" },
  { "rmehri01/onenord.nvim" },
  { "RishabhRD/gruvy" },
  -- { "echasnovski/mini.minischeme" },
  { "luisiacc/gruvbox-baby" },
  { "titanzero/zephyrium" },
  { "rebelot/kanagawa.nvim" },
  { "tiagovla/tokyodark.nvim" },
  { "cpea2506/one_monokai.nvim" },
  { "phha/zenburn.nvim" },
  { "kvrohit/rasmus.nvim" },
  { "chrsm/paramount-ng.nvim" },
  { "kaiuri/nvim-juliana" },
  { "lmburns/kimbox" },
  { "rockyzhang24/arctic.nvim" },
  { "ramojus/mellifluous.nvim" },
  { "Yazeed1s/minimal.nvim" },
  { "lewpoly/sherbet.nvim" },
  { "Mofiqul/adwaita.nvim" },
  { "olivercederborg/poimandres.nvim" },
  { "kvrohit/mellow.nvim" },
  { "gbprod/nord.nvim" },
  { "Yazeed1s/oh-lucy.nvim" },
  { "embark-theme/vim" },

  -- permet d'utiliser GBrowse
  {
    "shumphrey/fugitive-gitlab.vim",
    config = function()
      vim.cmd([[
    let g:fugitive_gitlab_domains = ['https://gitlab.onera.net/']
    ]])
    end,
  },

  --supportera bientot gitlab pour les issues et MR
  {
    "pwntester/octo.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "kyazdani42/nvim-web-devicons",
    },
    config = function()
      require("octo").setup()
    end,
  },
  -- {
  --   "nvim-treesitter/nvim-treesitter-textobjects",
  --   config = function()
  --     require("nvim-treesitter.configs").setup({
  --       textobjects = {
  --         move = {
  --           enable = true,
  --           set_jumps = true, -- whether to set jumps in the jumplist
  --           goto_next_start = {
  --             [",aj"] = "@function.outer",
  --             ["<leader>j]"] = { query = "@class.outer", desc = "Next class start" },
  --             --
  --             -- You can use regex matching (i.e. lua pattern) and/or pass a list in a "query" key to group multiple queires.
  --             ["<leader>jo"] = "@loop.*",
  --             -- ["<leader>jo"] = { query = { "@loop.inner", "@loop.outer" } }
  --             --
  --             -- You can pass a query group to use query from `queries/<lang>/<query_group>.scm file in your runtime path.
  --             -- Below example nvim-treesitter's `locals.scm` and `folds.scm`. They also provide highlights.scm and indent.scm.
  --             ["<leader>js"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
  --             ["<leader>jz"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
  --           },
  --           goto_next_end = {
  --             ["<leader>jM"] = "@function.outer",
  --             ["<leader>j["<leader>j = "@class.outer",
  --           },
  --           goto_previous_start = {
  --             [",ak"] = "@function.outer",
  --             ["[["<leader>j = "@class.outer",
  --           },
  --           goto_previous_end = {
  --             ["[M"] = "@function.outer",
  --             ["[]"] = "@class.outer",
  --           },
  --           -- Below will go to either the start or the end, whichever is closer.
  --           -- Use if you want more granular movements
  --           -- Make it even more gradual by adding multiple queries and regex.
  --           goto_next = {
  --             ["<leader>jd"] = "@conditional.outer",
  --           },
  --           goto_previous = {
  --             ["[d"] = "@conditional.outer",
  --           },
  --         },
  --       },
  --     })
  --   end,
  -- },
  -- { "stevearc/dressing.nvim", enabled = true },
  -- { "MunifTanjim/nui.nvim", enabled = true },
  -- { "mrjones2014/smart-splits.nvim" },
  -- {
  --   "beauwilliams/focus.nvim",
  --   enabled = false,
  --   config = function()
  --     require("focus").setup()
  --   end,
  -- },
  -- { "kevinhwang91/nvim-bqf" },
  -- {
  --   "yorickpeterse/nvim-pqf",
  --   config = function()
  --     require("pqf").setup()
  --   end,
  -- },
  --   {
  --   "ashfinal/qfview.nvim",
  --   event = "UIEnter",
  --   config = true,
  -- },
  -- {
  --   "ashfinal/qfview.nvim",
  --   config = function()
  --     require("qfview").setup()
  --   end,
  -- },

  -- LSP keymaps
  -- {
  --   "neovim/nvim-lspconfig",
  --   init = function()
  --     local keys = require("lazyvim.plugins.lsp.keymaps").get()
  --     -- change a keymap
  --     -- keys[#keys + 1] = { "K", "<cmd>echo 'hello'<cr>" }
  --     -- disable a keymap
  --     keys[#keys + 1] = { "gr", false }
  --     -- add a keymap
  --     -- keys[#keys + 1] = { "H", "<cmd>echo 'hello'<cr>" }
  --   end,
  -- },
  {
    "chrisgrieser/nvim-early-retirement",
    config = true,
    event = "VeryLazy",
  },
  -- {
  --   "aaronhallaert/advanced-git-search.nvim",
  --   config = function()
  -- require("advanced-git-search").setup()
  --   end,
  -- },
  -- {
  --   "chomosuke/term-edit.nvim",
  --   enabled = false,
  --   lazy = false, -- or ft = 'toggleterm' if you use toggleterm.nvim
  --   version = "1.*",
  -- },
  { "vim-scripts/DoxygenToolkit.vim", disable = disableVariable },
  -- {
  --   's1n7ax/nvim-search-and-replace',
  --   config = function()
  -- require("nvim-search-and-replace").setup()
  --   end,
  -- },
  -- require("lazy").setup({
  --   {
  --     "RutaTang/quicknote.nvim",
  --     config = {
  --       mode = "portable" -- "portable" | "resident", default to "portable"
  --     },
  --     dependencies = { "nvim-lua/plenary.nvim" }
  --   },
  -- })
  -- {
  --   "gnikdroy/projections.nvim",
  --   config = function()
  --     require("projections").setup({})
  --
  --     -- Bind <leader>fp to Telescope projections
  --     require("telescope").load_extension("projections")
  --     vim.keymap.set("n", "<leader>p", function()
  --       vim.cmd("Telescope projections")
  --     end)
  --
  --     -- Autostore session on VimExit
  --     local Session = require("projections.session")
  --     vim.api.nvim_create_autocmd({ "VimLeavePre" }, {
  --       callback = function()
  --         Session.store(vim.loop.cwd())
  --       end,
  -- })
  --     -- Switch to project if vim was started in a project dir
  --     local switcher = require("projections.switcher")
  --     vim.api.nvim_create_autocmd({ "VimEnter" }, {
  --       callback = function()
  --         if vim.fn.argc() == 0 then
  --           switcher.switch(vim.loop.cwd())
  --         end
  --       end,
  --     })
  --   end
  -- }
  {
    "potamides/pantran.nvim",
    config = function()
      require("pantran").setup({
        curl = {
          user_args = { "-x", "http://proxy.onera:80" },
        },
        engines = {
          deepl = {
            -- Default languages can be defined on a per engine basis. In this case
            -- `:lua require("pantran.async").run(function()
            -- vim.pretty_print(require("pantran.engines").yandex:languages()) end)`
            -- can be used to list available language identifiers.
            default_source = "fr",
            default_target = "en",
          },
        },
      })
    end,
  },
  { "yaocccc/nvim-hl-mdcodeblock.lua" },
  {
    "AckslD/muren.nvim",
    config = true,
    event = "VeryLazy"
  },
  -- {
  --   "google/executor.nvim",
  --   enabled = false,
  --   config = function()
  --     require("plugins.configs.executor")
  --   end,
  -- },
  -- {
  --   "noib3/nvim-oxi",
  --   config = function()
  --     -- require("nvim-oxi").setup()
  --   end,
  -- },
  -- {
  --   "numToStr/Comment.nvim",
  --   config = function()
  --     require("Comment").setup()
  --   end,
  -- },
  -- {
  --   "zaldih/themery.nvim",
  --   config = function()
  --     require("themery").setup()
  --   end,
  -- },
  -- {
  --   "folke/flash.nvim",
  --   event = "VeryLazy",
  --   opts = {},
  -- -- stylua: ignore
  -- keys = {
  --   { "e", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
  --   { "E", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
  --   { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
  --   { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
  --   { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  -- },
  -- },
  -- {
  --   "jackMort/ChatGPT.nvim", -- c'est payant
  --     event = "VeryLazy",
  --     config = function()
  --       require("chatgpt").setup()
  --     end,
  --     dependencies = {
  --       "MunifTanjim/nui.nvim",
  --       "nvim-lua/plenary.nvim",
  --       "nvim-telescope/telescope.nvim"
  --     }
  -- },
  -- {
  --   "zbirenbaum/copilot.lua",
  --   config = function()
  --     require("copilot").setup()
  --   end,
  -- },
{
 "folke/trouble.nvim",
 dependencies = { "nvim-tree/nvim-web-devicons" },
 opts = {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
 },
}
}

