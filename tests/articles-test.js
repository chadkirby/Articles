const test = require('tape');

const { articlize } = require('../lib/Articles');

test(`articlize articlizes`, (assert) => {
  assert.equal(
    articlize(`unanticipated result`),
    `an unanticipated result`
  );
  assert.equal(
    articlize(`unanimous vote`),
    `a unanimous vote`
  );
  assert.equal(
    articlize(`honest decision`),
    `an honest decision`
  );
  assert.equal(
    articlize(`honeysuckle shrub`),
    `a honeysuckle shrub`
  );
  assert.equal(
    articlize(`0800 number`),
    `an 0800 number`
  );
  assert.equal(
    articlize(`∞ of oregano`),
    `an ∞ of oregano`
  );
  assert.equal(
    articlize(`NASA scientist`),
    `a NASA scientist`
  );
  assert.equal(
    articlize(`NSA analyst`),
    `an NSA analyst`
  );
  assert.equal(
    articlize(`FIAT car`),
    `a FIAT car`
  );
  assert.equal(
    articlize(`FAA policy`),
    `an FAA policy`
  );

  assert.end();

});

test(`articlize articlizes all the words`, (assert) => {
  const words = require('./words.json');
  console.time(`articlize`);
  words.forEach((word) => articlize(word));
  console.timeEnd(`articlize`);
  assert.pass(`${words.length} words articlized without exploding`);
  assert.end();
});
