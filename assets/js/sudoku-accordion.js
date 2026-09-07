const initializeSudokuAccordions = () => {
  document.querySelectorAll("[data-sudoku-accordion]").forEach((accordion) => {
    const toggles = Array.from(accordion.querySelectorAll("[data-sudoku-toggle]"));

    const setExpanded = (toggle, expanded) => {
      const panelId = toggle.getAttribute("aria-controls");
      const panel = panelId ? document.getElementById(panelId) : null;

      toggle.setAttribute("aria-expanded", String(expanded));
      if (panel) panel.hidden = !expanded;
    };

    const closeAll = () => toggles.forEach((toggle) => setExpanded(toggle, false));

    closeAll();

    toggles.forEach((toggle) => {
      toggle.addEventListener("click", () => {
        const wasExpanded = toggle.getAttribute("aria-expanded") === "true";
        closeAll();

        if (!wasExpanded) setExpanded(toggle, true);
      });
    });

    accordion.addEventListener("keydown", (event) => {
      if (event.key !== "Escape") return;

      const expandedToggle = toggles.find((toggle) => toggle.getAttribute("aria-expanded") === "true");
      if (!expandedToggle) return;

      closeAll();
      expandedToggle.focus();
    });
  });
};

if (document.readyState === "loading") {
  document.addEventListener("DOMContentLoaded", initializeSudokuAccordions);
} else {
  initializeSudokuAccordions();
}
