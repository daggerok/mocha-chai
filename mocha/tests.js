describe('calc', function () {
  it('1 plus 2 equals 3', function (done) {
    chai.assert.equal(plus(1, 2), 3, "wrong calc.plus");
    done()
  })
})
