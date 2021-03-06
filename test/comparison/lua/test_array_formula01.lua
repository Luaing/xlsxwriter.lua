----
-- Test cases for xlsxwriter.lua.
--
-- Simple test case to test data writing.
--
-- Copyright 2014-2015, John McNamara, jmcnamara@cpan.org
--

local Workbook = require "xlsxwriter.workbook"

local workbook  = Workbook:new("test_array_formula01.xlsx")
local worksheet = workbook:add_worksheet()

worksheet:write('B1', 0)
worksheet:write('B2', 0)
worksheet:write('B3', 0)
worksheet:write('C1', 0)
worksheet:write('C2', 0)
worksheet:write('C3', 0)

worksheet:write_array_formula(0, 0, 2, 0, '{=SUM(B1:C1*B2:C2)}', false, 0)

workbook:close()
