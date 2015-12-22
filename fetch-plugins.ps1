#Put me in the bundle dir and execute!

$bundleDir = Split-Path $MyInvocation.MyCommand.Path
Push-Location $bundleDir

$plugins = @{
    "pathogen" = "https://github.com/tpope/vim-pathogen.git";
    "ctrlp.vim-master" = "https://github.com/kien/ctrlp.vim.git";
    "emmet-vim" = "https://github.com/mattn/emmet-vim.git";
    "MatchTagAlways-master" = "https://github.com/Valloric/MatchTagAlways.git";
    #"nerdtree" = "https://github.com/scrooloose/nerdtree.git";
    "tabular" = "https://github.com/godlygeek/tabular.git";
    "vim-airline" = "https://github.com/bling/vim-airline.git";
    "vim-easymotion-master" = "https://github.com/Lokaltog/vim-easymotion.git";
    "vim-fugitive" = "https://github.com/tpope/vim-fugitive.git";
    #"vim-jade-master" = "https://github.com/digitaltoad/vim-jade.git";
    "vim-surround" = "https://github.com/tpope/vim-surround.git";
    "vim-unimpaired" = "https://github.com/tpope/vim-unimpaired.git";
    "zeavim.vim" = "https://github.com/KabbAmine/zeavim.vim.git";
    "gundo.vim" = "https://github.com/sjl/gundo.vim.git";
    "nerdcommenter" = "https://github.com/scrooloose/nerdcommenter.git";
    "omnisharp" = "https://github.com/OmniSharp/omnisharp-vim.git";
    "vim-vinegar" = "https://github.com/tpope/vim-vinegar.git";
    "vim-unite" = "https://github.com/Shougo/unite.vim.git";
    "vim-dispatch" = "https://github.com/tpope/vim-dispatch.git";
    "ag-vim" = "https://github.com/rking/ag.vim.git";
    "molokai" = "https://github.com/tomasr/molokai.git";
}


$plugins.keys | % {
    if(Test-Path $_){
        Write-Host "$_ is installed"
    } else {
        Write-Host "Installing $($plugins.Item($_))"
        git clone $plugins.Item($_)
    }
}
