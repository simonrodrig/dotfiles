require('lualine').setup{
    options = {
        theme = 'catppuccin',
        component_separators = '|',
        section_separators = { left = '', right = '' },
    },
    sections = {
            lualine_a = {
          { 'mode', separator = { right = '', left = '' }, },
        },
        lualine_b = { 'filename', 'branch' },
        lualine_c = { 'fileformat' },
        lualine_x = {},
        lualine_y = { 'filetype', 'progress' },
        lualine_z = {
          { 'location', separator = { right = '', left = ''}, },
        },
    },

}
