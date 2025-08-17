local utils = {}

utils.keymap = function(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

utils.exec = function(command)
  vim.api.nvim_exec(command, false)
end

utils.t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

utils.at = function(str, index)
  return string.sub(str, index, index)
end

-- Helper function to check if value passed by parameter is a table
-- @obj {table}
-- @returns {boolean}
utils.is_table = function(obj)
  return type(obj) == "table"
end

-- Verify if table object works as an array
-- @param obj {table}
-- @return {boolean}
utils.is_array = function(obj)
  if not utils.is_table(obj) then
    return false
  end

  local i = 0
  for _ in pairs(obj) do
    i = i + 1
    if obj[i] == nil then
      return false
    end
  end

  return true
end

-- Checks wether value is nil
-- @obj {any}
-- @returns {boolean}
utils.is_nil = function(value)
  return value == nil
end

-- Checks if parameter is an empty table
-- @param obj {table}
-- @return {boolean}
utils.is_empty = function(obj)
  return utils.is_array(obj) and #obj == 0
end

-- Returns a shallow copy of a portion of a table into a new table
-- @param obj {table}
-- @param start {number} start value
-- @param finish {number} end value
-- @return {boolean}
utils.slice_table = function(obj, start, finish)
  if utils.is_empty(obj) or start == finish then
    return {}
  end

  local output = {}
  local _finish = #obj
  local _start = 1

  if start >= 0 then
    _start = start
  elseif utils.is_nil(finish) and start < 0 then
    _start = #obj + start + 1
  end

  if finish and finish >= 0 then
    _finish = finish - 1
  elseif finish and finish < 0 then
    _finish = #obj + finish
  end

  for i = _start, _finish do
    table.insert(output, obj[i])
  end

  return output
end

-- 親ディレクトリを辿ってプロジェクトルートを探す
utils.search_up = function(dir, root_markers)
  for _, marker in ipairs(root_markers) do
    if vim.fn.filereadable(dir .. "/" .. marker) == 1 or vim.fn.isdirectory(dir .. "/" .. marker) == 1 then
      return dir
    end
  end
  local parent = vim.fn.fnamemodify(dir, ":h")
  if parent == dir then
    return nil -- ルートディレクトリに到達
  end
  -- 再帰的に親ディレクトリを探索
  return search_up(parent)
end

-- 配下のディレクトリでdir
utils.search_down = function(dir, root_markers)
  -- 現在のディレクトリにmarkersがあるかチェック
  for _, marker in ipairs(root_markers) do
    if vim.fn.filereadable(dir .. "/" .. marker) == 1 or vim.fn.isdirectory(dir .. "/" .. marker) == 1 then
      return dir
    end
  end

  -- 配下のディレクトリを探索（1階層のみ）
  local subdirs = vim.fn.globpath(dir, "*", 0, 1)
  for _, subdir in ipairs(subdirs) do
    if vim.fn.isdirectory(subdir) == 1 then
      for _, marker in ipairs(markers) do
        if vim.fn.filereadable(subdir .. "/" .. marker) == 1 or vim.fn.isdirectory(subdir .. "/" .. marker) == 1 then
          return subdir
        end
      end
    end
  end
  return nil
end

return utils
