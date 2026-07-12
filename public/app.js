/* Traveller Scenario Viewer — app.js */
(function () {
  'use strict';

  // ── Theme ─────────────────────────────────────────────────────
  const body       = document.body;
  const themeBtn   = document.getElementById('theme-toggle');
  const sidebarBtn = document.getElementById('sidebar-toggle');
  const sidebar    = document.getElementById('sidebar');
  const printBtn   = document.getElementById('print-btn');
  const content    = document.getElementById('content');

  // Apply saved theme
  const savedTheme = localStorage.getItem('tv-theme') || 'light';
  if (savedTheme === 'dark') {
    body.classList.add('dark');
    if (themeBtn) themeBtn.textContent = '☀';
  }

  if (themeBtn) {
    themeBtn.addEventListener('click', function () {
      body.classList.toggle('dark');
      const dark = body.classList.contains('dark');
      themeBtn.textContent = dark ? '☀' : '☾';
      localStorage.setItem('tv-theme', dark ? 'dark' : 'light');
    });
  }

  // ── Sidebar ───────────────────────────────────────────────────
  const savedSidebar = localStorage.getItem('tv-sidebar');
  if (savedSidebar === 'collapsed' && sidebar) {
    sidebar.classList.add('collapsed');
  }

  if (sidebarBtn && sidebar) {
    sidebarBtn.addEventListener('click', function () {
      sidebar.classList.toggle('collapsed');
      localStorage.setItem('tv-sidebar',
        sidebar.classList.contains('collapsed') ? 'collapsed' : 'open');
    });
  }

  // Scroll active nav item into view
  if (sidebar) {
    const active = sidebar.querySelector('.nav-item.active');
    if (active) active.scrollIntoView({ block: 'nearest' });
  }

  // ── Scroll memory ─────────────────────────────────────────────
  if (content) {
    const scrollKey = 'tv-scroll-' + location.pathname;
    const savedScroll = sessionStorage.getItem(scrollKey);
    if (savedScroll) content.scrollTop = parseInt(savedScroll, 10);

    window.addEventListener('beforeunload', function () {
      sessionStorage.setItem(scrollKey, content.scrollTop);
    });
  }

  // ── Print ─────────────────────────────────────────────────────
  if (printBtn) {
    printBtn.addEventListener('click', function () {
      window.print();
    });
  }

  // ── Keyboard shortcuts ────────────────────────────────────────
  document.addEventListener('keydown', function (e) {
    // Skip if typing in an input
    if (document.activeElement.tagName === 'INPUT' ||
        document.activeElement.tagName === 'TEXTAREA') return;

    const navItems = sidebar
      ? Array.from(sidebar.querySelectorAll('.nav-item'))
      : [];
    const cur = navItems.findIndex(l => l.classList.contains('active'));

    switch (e.key) {
      case '[':
        if (cur > 0) window.location = navItems[cur - 1].href;
        break;
      case ']':
        if (cur < navItems.length - 1) window.location = navItems[cur + 1].href;
        break;
      case 'd':
        if (!e.ctrlKey && !e.metaKey && themeBtn) themeBtn.click();
        break;
      case '\\':
        if (sidebarBtn) sidebarBtn.click();
        break;
      case 'p':
        if (e.ctrlKey || e.metaKey) break; // let browser handle Ctrl+P
        window.print();
        break;
    }
  });

})();
