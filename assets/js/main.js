/* ============================================================
   Tammy S. Miller — Personal Page JS
   ============================================================ */
/* ---------- NAV SCROLL EFFECT ---------- */
const nav = document.getElementById('nav');
window.addEventListener('scroll', () => {
  nav.classList.toggle('scrolled', window.scrollY > 40);
});
/* ---------- BURGER MENU ---------- */
const burger = document.getElementById('burger');
const navLinks = document.querySelector('.nav__links');
burger.addEventListener('click', () => {
  navLinks.classList.toggle('open');
  const spans = burger.querySelectorAll('span');
  const isOpen = navLinks.classList.contains('open');
  spans[0].style.transform = isOpen ? 'translateY(7px) rotate(45deg)' : '';
  spans[1].style.opacity   = isOpen ? '0' : '1';
  spans[2].style.transform = isOpen ? 'translateY(-7px) rotate(-45deg)' : '';
});
navLinks.querySelectorAll('a').forEach(link => {
  link.addEventListener('click', () => {
    navLinks.classList.remove('open');
    const spans = burger.querySelectorAll('span');
    spans[0].style.transform = '';
    spans[1].style.opacity   = '1';
    spans[2].style.transform = '';
  });
});
/* ---------- ROTATING TITLE ---------- */
const titles = [
  'AI Generalist',
  'Data Explorer',
  'AI Developer',
  'Analytics Builder',
  'Tech Innovator',
];
const el = document.getElementById('rotating-title');
let titleIndex = 0;
let charIndex = 0;
let deleting = false;
let pauseTimer = null;
function typeEffect() {
  const current = titles[titleIndex];
  if (!deleting) {
    el.textContent = current.substring(0, charIndex + 1);
    charIndex++;
    if (charIndex === current.length) {
      deleting = true;
      pauseTimer = setTimeout(typeEffect, 2000);
      return;
    }
  } else {
    el.textContent = current.substring(0, charIndex - 1);
    charIndex--;
    if (charIndex === 0) {
      deleting = false;
      titleIndex = (titleIndex + 1) % titles.length;
    }
  }
  const speed = deleting ? 60 : 100;
  setTimeout(typeEffect, speed);
}
setTimeout(typeEffect, 800);
/* ---------- INTERSECTION OBSERVER — REVEAL ---------- */
const revealEls = document.querySelectorAll(
  '.skill-card, .timeline__item, .cert-card, .coming-card, ' +
  '.contact-card, .edu__card, .edu__currently, .highlight, ' +
  '.about__text, .about__card, .portfolio__banner'
);
revealEls.forEach(el => el.classList.add('reveal'));
const observer = new IntersectionObserver((entries) => {
  entries.forEach((entry, i) => {
    if (entry.isIntersecting) {
      setTimeout(() => {
        entry.target.classList.add('visible');
      }, 80);
      observer.unobserve(entry.target);
    }
  });
}, { threshold: 0.1, rootMargin: '0px 0px -40px 0px' });
revealEls.forEach(el => observer.observe(el));
/* ---------- STAGGERED REVEAL FOR GRIDS ---------- */
document.querySelectorAll('.skills__grid, .certs__grid, .contact__cards, .portfolio__coming').forEach(grid => {
  const children = grid.querySelectorAll('.reveal');
  children.forEach((child, i) => {
    child.style.transitionDelay = `${i * 100}ms`;
  });
});
/* ---------- ACTIVE NAV ON SCROLL ---------- */
const sections = document.querySelectorAll('section[id]');
const navLinksAll = document.querySelectorAll('.nav__links a');
const sectionObserver = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      navLinksAll.forEach(a => {
        a.style.color = '';
        if (a.getAttribute('href') === `#${entry.target.id}`) {
          a.style.color = '#f72585';
        }
      });
    }
  });
}, { threshold: 0.4 });
sections.forEach(s => sectionObserver.observe(s));
/* ---------- SMOOTH SCROLL POLYFILL ---------- */
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
  anchor.addEventListener('click', function(e) {
    const target = document.querySelector(this.getAttribute('href'));
    if (target) {
      e.preventDefault();
      const offset = 80;
      const top = target.getBoundingClientRect().top + window.scrollY - offset;
      window.scrollTo({ top, behavior: 'smooth' });
    }
  });
});
/* ---------- PROGRESS BARS ANIMATE ON REVEAL ---------- */
const progressBars = document.querySelectorAll('.progress-bar__fill');
const progressObserver = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      entry.target.style.animation = 'progressFill 1.5s ease-out forwards';
      progressObserver.unobserve(entry.target);
    }
  });
}, { threshold: 0.5 });
progressBars.forEach(bar => {
  bar.style.animation = 'none';
  progressObserver.observe(bar);
});
/* ---------- CURSOR GLOW (DESKTOP) ---------- */
if (window.matchMedia('(pointer: fine)').matches) {
  const glow = document.createElement('div');
  Object.assign(glow.style, {
    position: 'fixed',
    width: '300px',
    height: '300px',
    borderRadius: '50%',
    background: 'radial-gradient(circle, rgba(247,37,133,0.06) 0%, transparent 70%)',
    pointerEvents: 'none',
    zIndex: '9999',
    transform: 'translate(-50%, -50%)',
    transition: 'left 0.15s ease, top 0.15s ease',
  });
  document.body.appendChild(glow);
  document.addEventListener('mousemove', e => {
    glow.style.left = e.clientX + 'px';
    glow.style.top  = e.clientY + 'px';
  });
}
