return {
    "akinsho/bufferline.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {},
    keys = {
        -- 空格+bh 左buffer
        { "<leader>bh", ":BufferLineCyclePrev<CR>", silent = true },
        -- 空格+bl 右buffer
        { "<leader>bl", ":BufferLineCycleNext<CR>", silent = true },
        -- 空格+bd 删除buffer
        { "<leader>bd", ":bdelete<CR>", silent = true },
        -- 空格+bo 关闭其他buffer
        { "<leader>bo", ":BufferLineCloseOthers<CR>", silent = true },
        -- 空格+bp 选择buffer
        { "<leader>bp", ":BufferLinePick<CR>", silent = true },
        -- 空格+bc 选择关闭buffer
        { "<leader>bc", ":BufferLinePickClose<CR>", silent = true },
    },
    lazy = false,
}
