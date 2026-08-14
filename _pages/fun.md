---
layout: page
permalink: /fun/
title: Fun
nav: true
nav_order: 4
---

I enjoy solving chess puzzles, Go problems, and <em>tsume-shogi</em>; my over-the-board play is much more modest.

<details class="puzzle-games-disclosure">
  <summary>I also like pencil-and-paper puzzles such as <span>Sudoku</span>, Kakuro, Slitherlink, and Masyu.</summary>

  <p>Below is a Sudoku variant puzzle I set. I'd love to hear your feedback.</p>

  <div class="sudoku">
    <div class="title">One Small Step (<a href="https://sudokupad.app/w2rrlcv990">SudokuPad</a>)</div>

    <div class="col-sm-8">
      {% include figure.liquid path="assets/img/one_small_step.png" title="One Small Step" alt="One Small Step variant sudoku grid" width=1531 height=1531 class="img-fluid rounded z-depth-1" %}
    </div>

    <p>Normal sudoku rules apply.</p>

    <p>Digits along each thermometer increase in <b>equal steps</b> from bulb to tip. Different thermometers may have different step sizes.</p>

    <p>Whenever two thermometers share a cell, <b>exactly one</b> of the two has step size 1.</p>
  </div>
</details>

<details class="puzzle-games-disclosure">
  <summary><span>Logic puzzle games</span> are another favorite, especially those built around simple rules and surprising consequences.</summary>

  <p>Here are a few that I particularly enjoy.</p>

  <div class="steam-game-grid">
    {% for game in site.data.puzzle_games %}
      <a class="steam-game" href="{{ game.url }}" target="_blank" rel="noopener noreferrer">
        <span>{{ game.name }}</span>
      </a>
    {% endfor %}
  </div>
</details>

I solve problems on <a href="https://projecteuler.net/">Project Euler</a>. My favorite problems are those where the underlying mathematical structure leads naturally to an efficient algorithm.

I play Minesweeper casually. My Expert PB is 84 seconds on a board with 3BV=175.

<div class="row">
    <div class="col-sm-8">
        {% include figure.liquid path="assets/img/minesweeper.png" title="minesweeper" alt="Minesweeper 84-second win screenshot" width=1008 height=642 loading="eager" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
