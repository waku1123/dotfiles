local shade_ok, shade = pcall(require, "shade")
if not shade_ok then
  return
end

shade.setup({
  overlay_opacity = 60,
})
