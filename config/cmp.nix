{
  plugins = {
    luasnip.enable = true;
    cmp-buffer.enable = true;
    cmp-cmdline.enable = true;
    cmp_luasnip.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true;

    cmp = {
      enable = true;
      autoEnableSources = true;

      settings = {
        experimental.ghost_text = true;

        performance = {
          debounce = 60;
          fetchingTimeout = 200;
          maxViewEntries = 30;
        };

        snippet.expand = "luasnip";
        sources = [
          { 
            name = "buffer";
            options.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
          }
          { name = "luasnip"; }
          { name = "nvim_lsp"; }
          { name = "nvim_lua"; }
          { name = "path"; }
        ];

        window = {
          completion = {
            border = "rounded";
            #winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None";
            #winhighlight = "FloatBorder:CmpBorder,Normal:CmpPmenu,CursorLine:CmpSel,Search:PmenuSel";
          };
          documentation = {
            border = "rounded";
            #winhighlight = "FloatBorder:CmpBorder,Normal:CmpPmenu,CursorLine:CmpSel,Search:PmenuSel";
          };
        };

        mapping = {
          "<C-j>" = "cmp.mapping.select_next_item()";
          "<C-k>" = "cmp.mapping.select_prev_item()";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-y>" = "cmp.mapping.confirm({ select = true })";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-e>" = "cmp.mapping.close()";
          "<C-l>" = ''
            cmp.mapping(function()
              if luasnip.expand_or_locally_jumpable() then
                luasnip.expand_or_jump()
              end
            end, { "i", "s" })
          '';
          "<C-h>" = ''
            cmp.mapping(function()
              if luasnip-lucally_jumpable(-1) then
                luasnip.jump(-1)
              end
            end, { "i", "s" })
          '';
        };
      };
    };
  };
}
