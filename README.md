<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>
      Teste MathJax
    </title>
    <script type="text/x-mathjax-config">
      MathJax.Hub.Config({tex2jax: {inlineMath: [['$','$'], ['\\(','\\)']]}});
    </script>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
    </script>
    <style>
      p.theorem::before {
  counter-increment: theorem; 
  content: "Theorem " counter(theorem) " \2014 "; 
}
p.theorem[data-attribution]::before {
  content: "Theorem " counter(theorem) " (" attr(data-attribution) ")  \2014 ";
}
    </style>
  </head>
  <body>
    <h2> Math in TeX notation </h2>

    When $a \ne 0$, there are two solutions to $ax^2 + bx + c = 0$ and they are 
    \[
      x = {-b \pm \sqrt{b^2-4ac} \over 2a}.
    \]
    \[
      \begin{array}{rcll}
        y & = & x^{2}+bx+c \\
        & = & x^{2}+2\times\dfrac{b}{2}x+c \\
        & = & \underbrace{x^{2}+2\times\dfrac{b}{2}x+\left(\frac{b}{2}\right)^{2}}-{\left(\dfrac{b}{2}\right)^{2}+c} \\
        &  & \qquad\left(x+{\dfrac{b}{2}}\right)^{2}\\
        & = & \left(x+\dfrac{b}{2}\right)^{2}-\left(\dfrac{b}{2}\right)^{2}+c 
        & \left|+\left({\dfrac{b}{2}}\right)^{2}-c\right.\\
        y+\left(\dfrac{b}{2}\right)^{2}-c & = & \left(x+
        \dfrac{b}{2}\right)^{2} & \left|\strut(\textrm{vertex form})\right.\\
        y-y_{S} & = & (x-x_{S})^{2}\\
        S(x_{S};y_{S}) & \,\textrm{or}\, 
        & S\left(-\dfrac{b}{2};\,\left(\dfrac{b}{2}\right)^{2}-c\right)
      \end{array}
    \]
    
    <p>To display mathematics on the web, you have a number of options. There is the MathML standard which has the advantage of being endorsed by the same body that maintains the HTML and CSS standards. This isn't however, LaTeX based. There are tools to translate LaTeX code into MathML.</p>
    
    <p>To display mathematics on the web, you have a number of options. There is the MathML standard which has the advantage of being endorsed by the same body that maintains the HTML and CSS standards. This isn't however, LaTeX based. There are tools to translate LaTeX code into MathML.</p>
    
    $\xrightarrow{\infty}$

<h2>Math in MathML notation</h2>

When <math><mi>a</mi><mo>&#x2260;</mo><mn>0</mn></math>,
there are two solutions to <math>
  <mi>a</mi><msup><mi>x</mi><mn>2</mn></msup>
  <mo>+</mo> <mi>b</mi><mi>x</mi>
  <mo>+</mo> <mi>c</mi> <mo>=</mo> <mn>0</mn>
</math> and they are
<math mode="display">
  <mi>x</mi> <mo>=</mo>
  <mrow>
    <mfrac>
      <mrow>
        <mo>&#x2212;</mo>
        <mi>b</mi>
        <mo>&#x00B1;</mo>
        <msqrt>
          <msup><mi>b</mi><mn>2</mn></msup>
          <mo>&#x2212;</mo>
          <mn>4</mn><mi>a</mi><mi>c</mi>
        </msqrt>
      </mrow>
      <mrow> <mn>2</mn><mi>a</mi> </mrow>
    </mfrac>
  </mrow>
  <mtext>.</mtext>
</math>

<p class="theorem">This is your typical theorem, probably proved by the author of the current paper, and doesn't need any special decoration.</p>
<p class="theorem" data-attribution="Noether">This theorem is important enough to warrant attribution to its author and a reference to the entry in the bibliography where the author proves this theorem.</p>

  </body>
</html>
