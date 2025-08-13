-- カーソル移動を目立たせるプラグイン
return {
  "sphamba/smear-cursor.nvim",
  event = { "BufReadPre" },
  opts = {
    smear_between_buffers = true,
    smear_between_neighbor_lines = true,
    scroll_buffer_space = true,
    legacy_computing_sumbols_support = false,
    smear_insert_mode = true,
    time_interval = 10, --milliseconds
    -- stiffness = 0.8, -- default:0.6, range:[0, 1]
    -- trailing_stiffness = 0.5, -- default:0.4, range:[0, 1]
    -- stiffness_insert_mode = 0.7, -- default:0.5, range:[0, 1]
    -- trailing_stiffness_insert_mode = 0.7, -- default:0.5, range:[0, 1]
    -- damping = 0.8, -- default:0.65, range:[0, 1]
    -- damping_insert_mode = 0.8, -- default:0.7, range:[0, 1]
    -- distance_stop_animating = 0.5, -- default:0.1, range: > 0
  },
}
