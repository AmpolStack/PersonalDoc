local Popup = require("nui.popup")
local event = require("nui.utils.autocmd").event

-- Crear el popup
local popup = Popup({
  enter = true,
  focusable = true,
  border = { style = "rounded" },
  position = "50%",
  size = { width = 40, height = 10 },
})

popup:mount()  -- Montar el popup

local bufnr, ns_id = popup.bufnr, vim.api.nvim_create_namespace("mi_ns")

-- 🛠 Definir el grupo de resaltado
vim.api.nvim_set_hl(0, "MiResaltado", { fg = "#FF0000", bold = true })

-- 📝 Texto a escribir
local texto = "Hola, Neovim!"
local ancho_popup = 40

-- 🛠 Centrar el texto (suponiendo monoespaciado)
local espacio_izq = math.floor((ancho_popup - #texto) / 2)
local linea_formateada = string.rep(" ", espacio_izq) .. texto

-- 📌 Escribir en el buffer
vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { linea_formateada })

-- 🎨 Aplicar color al texto (sin contar los espacios de padding)
vim.api.nvim_buf_add_highlight(bufnr, ns_id, "MiResaltado", 0, espacio_izq, espacio_izq + #texto - 1)

-- 🔥 Cerrar el popup al salir del buffer
popup:on(event.BufLeave, function()
  popup:unmount()
end)

