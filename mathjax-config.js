<!-- mathjax-config.js -->
(function () {
  window.MathJax = {
    tex: {
      packages: {
        '[+]': ['base', 'ams', 'cancel']
      },
      macros: {
        // símbolo definido como (colon equals) U+2254 ≔
        coloneqq: ['\u2254', 0],
        // cancel extensions
        cancel: ['{\\cancel{#1}}', 1],
        bcancel: ['{\\bcancel{#1}}', 1],
        xcancel: ['{\\xcancel{#1}}', 1],
        cancelto: ['{\\cancelto{#1}{#2}}', 2],
        // exemplos de fraktur e mathbb
        fraka: ['\\mathfrak{a}'], frakb: ['\\mathfrak{b}'],
        bbR: ['\\mathbb{R}'], bbZ: ['\\mathbb{Z}']
      }
    },
    svg: {
      fontCache: 'global'
    }
  };
})();
