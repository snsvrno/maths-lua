M = require 'bin.maths' or nil

describe("Maths.line",function()

  describe("checks for a point on a line",function()
    it("try y only",function()
      local point = { M.line.pointOnLine(0,0,0,5,3) }
      assert.are.equal(point[1],0)
      assert.are.equal(point[2],3)
    end)

    it("try x only",function()
      local point = { M.line.pointOnLine(0,0,5,0,4) }
      assert.are.equal(point[1],4)
      assert.are.equal(point[2],0)
    end)

    it("try complex1",function()
      local point = { M.line.pointOnLine(0,0,5,5,2) }
      assert.are.equal(M.number.round(point[1],3),1.414)
      assert.are.equal(M.number.round(point[2],3),1.414)
    end)

    it("try complex2",function()
      local point = { M.line.pointOnLine(-10,23,10,45,25.5) }
      assert.are.equal(M.number.round(point[1],3),7.153)
      assert.are.equal(M.number.round(point[2],3),41.868)
    end)
  end)

end)
