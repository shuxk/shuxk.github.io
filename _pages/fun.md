---
layout: page
permalink: /fun/
title: Fun
description:
nav: true
nav_order: 4
---

I enjoy chess puzzles, Go problems, and <em>tsume-shogi</em>, mainly as puzzles; my over-the-board play is much more modest.

<details class="puzzle-games-disclosure">
  <summary>I also like pencil-and-paper puzzles such as <span>Sudoku</span>, Kakuro, Slitherlink, and Masyu.</summary>

  Below is my first original Sudoku variant puzzle. Love to hear your feedback!

  <div class="sudoku">
    <div class="title">Arithmetic Thermometers (<a href="https://sudokupad.app/7qduimvfmr">SudokuPad</a>)</div>

    <p></p>

    <div class="col-sm-8">
      {% include figure.liquid path="assets/img/arithmetic_thermometer.png" title="Arithmetic Thermometers" class="img-fluid rounded z-depth-1" %}
    </div>

    Normal sudoku rules apply.

    On each thermometer, the digits from the bulb to the tip form a <b>strictly increasing arithmetic progression</b>. Each thermometer may have its own common difference.

    If thermometers share a cell, each thermometer is read independently in its own bulb-to-tip direction.

    <br>

    <details>
      <summary>Bonus: after solving the grid, can you find the <b>hidden loop</b>?</summary>
      <div class="easter-egg-content">
         The thermometers connect tip-to-bulb to form a single 80-cell closed loop around the central cell. Along the loop, every tip, bulb, and non-thermometer cell is a turn; the loop may not pass straight through any of these cells.
      </div>

    </details>

  </div>
</details>

<details class="puzzle-games-disclosure">
  <summary><span>Logic puzzle games</span> are another favorite, especially those built around simple rules and surprising consequences.</summary>

  Here are a few that I particularly enjoy.

  <div class="steam-game-grid">
    {% for game in site.data.puzzle_games %}
      <a class="steam-game" href="{{ game.url }}" target="_blank" rel="noopener noreferrer">
        <span>{{ game.name }}</span>
      </a>
    {% endfor %}
  </div>
</details>

I solve problems on <a href="https://projecteuler.net/">Project Euler</a>, which require a mix of mathematics and algorithmic thinking.

I play Minesweeper casually. My Expert PB is 84 seconds on a board with 3BV=175.

<div class="row">
    <div class="col-sm-8">
        {% include figure.liquid path="assets/img/minesweeper.png" title="minesweeper" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
