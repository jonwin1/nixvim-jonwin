{
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native.enable = true;
      ui-select.settings.specific_opts.codeactions = true;
    };

    keymaps = {
      "<leader>sf" = {
        action = "find_files, {}";
        options.desc = "[S]earch [F]iles";
      };
      "<leader>sg" = {
        action = "live_grep, {}";
        options.desc = "[S]earch by [G]rep";
      };
      "<leader>s/" = {
        action = "live_grep";
        options.desc = "[S]earch [/] in Files";
      };
      "<leader><leader>" = {
        action = "buffers, {}";
        options.desc = "[ ] Find existing buffers";
      };
      "<leader>sr" = {
        action = "resume, {}";
        options.desc = "[S]earch [R]esume";
      };
      "<leader>s." = {
        action = "oldfiles, {}";
        options.desc = "[S]earch Recent Files (\".\" for repeat)";
      };
      "<leader>si" = {
        action = "git_files, {}";
        options.desc = "[S]earch g[I]t files";
      };
      "<leader>gc" = {
        action = "git_commits, {}";
        options.desc = "Commits";
      };
      "<leader>gs" = {
        action = "git_status, {}";
        options.desc = "Status";
      };
      "<leader>/" = {
        action = "current_buffer_fuzzy_find, {}";
        options.desc = "[/] Fuzzily search in current buffer";
      };
      "<leader>sd" = {
        action = "diagnostics, {}";
        options.desc = "[S]earch [D]iagnostics";
      };
      "<leader>sh" = {
        action = "help_tags, {}";
        options.desc = "[S]earch [H]elp";
      };
      "<leader>sk" = {
        action = "keymaps, {}";
        options.desc = "[S]earch [K]eymaps";
      };
      "<leader>sw" = {
        action = "grep_string, {}";
        options.desc = "[S]earch current [W]ord";
      };
    };
  };
}
