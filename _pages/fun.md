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

  <p>Below are some Sudoku variant puzzles I set. I'd love to hear your feedback.</p>

  <div class="sudoku-accordion" data-sudoku-accordion>
    <div class="steam-game-grid sudoku-selector" role="group" aria-label="Sudoku puzzles">
      {% for puzzle in site.data.sudoku %}
        {% assign puzzle_id = puzzle.title | slugify %}
        <button
          id="sudoku-toggle-{{ puzzle_id }}"
          class="steam-game sudoku-toggle"
          type="button"
          aria-expanded="false"
          aria-controls="sudoku-panel-{{ puzzle_id }}"
          data-sudoku-toggle
        >
          <span>{{ puzzle.title }}</span>
        </button>
      {% endfor %}
    </div>

    <div class="sudoku-panels">
      {% for puzzle in site.data.sudoku %}
        {% assign puzzle_id = puzzle.title | slugify %}
        <section
          id="sudoku-panel-{{ puzzle_id }}"
          class="sudoku"
          role="region"
          aria-labelledby="sudoku-toggle-{{ puzzle_id }}"
          hidden
        >
          <div class="title">
            {{ puzzle.title }} (<a href="https://sudokupad.app/{{ puzzle.sudokupad_id }}">SudokuPad</a>){% if puzzle.ctc_url %}
              (<a href="{{ puzzle.ctc_url }}">CTC</a>){% endif %}{% if puzzle.lmd_id %}
              (<a href="https://logic-masters.de/Raetselportal/Raetsel/zeigen.php?id={{ puzzle.lmd_id }}">LMD</a>){% endif %}
          </div>

          {% assign image_static_path = puzzle.image.path | prepend: '/' %}
          {% assign puzzle_image = site.static_files | where: "path", image_static_path | first %}
          {% if puzzle_image %}
            {% assign puzzle_alt = puzzle.title | append: ' variant sudoku grid' %}
            <div class="col-sm-8">
              {%
                include figure.liquid
                path=puzzle.image.path
                title=puzzle.title
                alt=puzzle_alt
                width=1531
                height=1531
                class="img-fluid rounded z-depth-1"
              %}
            </div>
          {% else %}
            <!-- Image placeholder: add {{ puzzle.image.path }}. -->
          {% endif %}

          {% for rule in puzzle.rules %}
            {{ rule | markdownify }}
          {% endfor %}
        </section>
      {% endfor %}
    </div>

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

<script src="{{ '/assets/js/sudoku-accordion.js' | relative_url }}" defer></script>
