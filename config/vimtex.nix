{ pkgs, ... }:
{
    plugins.vimtex = {
        enable = true;
        texlivePackage = pkgs.texliveFull;
        settings = {
            view_method = "zathura";
            compiler_method = "latexmk";
            compiler_latexmk = {
                options = [
                    "-shell-escape"
                ];
            };
        };
    };
    extraPackages = with pkgs; [
        python312Packages.pygments
    ];
}
