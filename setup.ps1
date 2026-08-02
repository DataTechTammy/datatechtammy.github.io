# Tammy S. Miller — Resume Site Setup Script
# Run with: Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass; .\setup.ps1
$ErrorActionPreference = "Stop"
$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
Write-Host "Setting up Tammy S. Miller resume site..." -ForegroundColor Cyan
New-Item -ItemType Directory -Path "$repoRoot\assets\css"          -Force | Out-Null
New-Item -ItemType Directory -Path "$repoRoot\assets\js"           -Force | Out-Null
New-Item -ItemType Directory -Path "$repoRoot\assets\images\certs" -Force | Out-Null
# ─────────────────────────────────────────────────────────────
# index.html
# ─────────────────────────────────────────────────────────────
Set-Content -Path "$repoRoot\index.html" -Encoding UTF8 -Value @'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Tammy S. Miller | Data Analytics & AI</title>
  <meta name="description" content="Tammy S. Miller — Analytics-focused IT professional building toward data and AI platform architecture." />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;900&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="assets/css/style.css" />
</head>
<body>
  <!-- NAV -->
  <nav class="nav" id="nav">
    <div class="nav__logo">TSM</div>
    <ul class="nav__links">
      <li><a href="#about">About</a></li>
      <li><a href="#skills">Skills</a></li>
      <li><a href="#experience">Experience</a></li>
      <li><a href="#education">Education</a></li>
      <li><a href="#certifications">Certs</a></li>
      <li><a href="#contact" class="nav__cta">Contact</a></li>
    </ul>
    <button class="nav__burger" id="burger" aria-label="Toggle menu">
      <span></span><span></span><span></span>
    </button>
  </nav>
  <!-- HERO -->
  <section class="hero" id="hero">
    <div class="hero__bg">
      <div class="blob blob--1"></div>
      <div class="blob blob--2"></div>
      <div class="blob blob--3"></div>
    </div>
    <div class="hero__content">
      <div class="hero__badge">
        <span class="pulse-dot"></span>
        Open to AI &amp; Data Opportunities
      </div>
      <h1 class="hero__name">Tammy S. Miller</h1>
      <div class="hero__titles">
        <span class="hero__title-static">Data Analytics Professional</span>
        <span class="hero__divider">&#10022;</span>
        <span class="hero__title-rotating" id="rotating-title">AI Generalist</span>
      </div>
      <p class="hero__tagline">
        Turning raw data into decisions.<br/>
        Building toward the AI-powered future &mdash; one query at a time.
      </p>
      <div class="hero__actions">
        <a href="#experience" class="btn btn--primary">View My Work</a>
        <a href="#contact" class="btn btn--outline">Get In Touch</a>
      </div>
      <div class="hero__stats">
        <div class="stat">
          <span class="stat__num">4+</span>
          <span class="stat__label">Years in Tech</span>
        </div>
        <div class="stat__divider"></div>
        <div class="stat">
          <span class="stat__num">3.73</span>
          <span class="stat__label">GPA</span>
        </div>
        <div class="stat__divider"></div>
        <div class="stat">
          <span class="stat__num">10</span>
          <span class="stat__label">Certificates</span>
        </div>
      </div>
    </div>
    <div class="hero__scroll">
      <span>Scroll</span>
      <div class="scroll-line"></div>
    </div>
  </section>
  <!-- ABOUT -->
  <section class="section about" id="about">
    <div class="container">
      <div class="section__label">01 &mdash; About</div>
      <div class="about__grid">
        <div class="about__text">
          <h2 class="section__heading">Analytics meets <span class="gradient-text">Artificial Intelligence</span></h2>
          <p>
            Analytics-focused IT professional at <strong>ATSG</strong> with enterprise systems experience and active development
            in data analytics, reporting design, and applied AI. Known for systems thinking, clear documentation,
            and improving reliability within shared-ownership environments.
          </p>
          <p>
            Building toward <strong>data and analytics platform architecture</strong>, with emphasis on scalability,
            reporting performance, and analytics enablement. My journey from client services to IT to AI reflects
            a deliberate path: understand the data, understand the systems, then build the future.
          </p>
          <div class="about__highlights">
            <div class="highlight">
              <span class="highlight__icon">&#9889;</span>
              <span>Reduced ticket resolution time by 25% through smarter triage</span>
            </div>
            <div class="highlight">
              <span class="highlight__icon">&#127919;</span>
              <span>Enterprise IT systems with Microsoft 365 &amp; endpoint management</span>
            </div>
            <div class="highlight">
              <span class="highlight__icon">&#129302;</span>
              <span>Actively studying AI, data analytics, and cloud fundamentals</span>
            </div>
          </div>
        </div>
        <div class="about__card">
          <div class="profile-card">
            <div class="profile-card__avatar">
              <div class="avatar-initials">TM</div>
              <div class="avatar-ring"></div>
            </div>
            <div class="profile-card__info">
              <h3>Tammy S. Miller</h3>
              <p>Data Analytics Professional</p>
            </div>
            <div class="profile-card__details">
              <div class="detail-row">
                <span class="detail-icon">&#128205;</span>
                <span>Wilmington, OH</span>
              </div>
              <div class="detail-row">
                <span class="detail-icon">&#128188;</span>
                <span>ATSG &mdash; IT Support Technician</span>
              </div>
              <div class="detail-row">
                <span class="detail-icon">&#128231;</span>
                <span>datacentertech.tmiller@gmail.com</span>
              </div>
            </div>
            <div class="profile-card__links">
              <a href="https://github.com/DataTechTammy" target="_blank" rel="noopener" class="social-btn social-btn--github">GitHub</a>
              <a href="https://linkedin.com" target="_blank" rel="noopener" class="social-btn social-btn--linkedin">LinkedIn</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- SKILLS -->
  <section class="section skills" id="skills">
    <div class="container">
      <div class="section__label">02 &mdash; Skills</div>
      <h2 class="section__heading">Core <span class="gradient-text">Capabilities</span></h2>
      <div class="skills__grid">
        <div class="skill-card skill-card--data">
          <div class="skill-card__icon">&#128202;</div>
          <h3>Data &amp; Analytics</h3>
          <div class="skill-tags">
            <span class="tag">Dashboard Design</span>
            <span class="tag">SQL</span>
            <span class="tag">Python (foundational)</span>
            <span class="tag">Insight Communication</span>
            <span class="tag">Analytics Fundamentals</span>
            <span class="tag">Data Visualization</span>
          </div>
        </div>
        <div class="skill-card skill-card--ai">
          <div class="skill-card__icon">&#129302;</div>
          <h3>AI &amp; Emerging Tech</h3>
          <div class="skill-tags">
            <span class="tag">Generative AI</span>
            <span class="tag">AI Prompt Engineering</span>
            <span class="tag">AI Tools &amp; Workflows</span>
            <span class="tag">Applied AI Concepts</span>
            <span class="tag">Cloud Fundamentals</span>
            <span class="tag">AI Literacy</span>
          </div>
        </div>
        <div class="skill-card skill-card--platform">
          <div class="skill-card__icon">&#128421;</div>
          <h3>Platforms &amp; IT</h3>
          <div class="skill-tags">
            <span class="tag">Microsoft 365</span>
            <span class="tag">Windows 10/11</span>
            <span class="tag">ITSM / Ticketing</span>
            <span class="tag">Endpoint Troubleshooting</span>
            <span class="tag">Basic Networking</span>
            <span class="tag">Enterprise Support</span>
          </div>
        </div>
        <div class="skill-card skill-card--soft">
          <div class="skill-card__icon">&#129504;</div>
          <h3>Ways of Working</h3>
          <div class="skill-tags">
            <span class="tag">Root-Cause Analysis</span>
            <span class="tag">Documentation</span>
            <span class="tag">Cross-functional Collab</span>
            <span class="tag">Systems Thinking</span>
            <span class="tag">Prioritization</span>
            <span class="tag">Process Improvement</span>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- EXPERIENCE -->
  <section class="section experience" id="experience">
    <div class="container">
      <div class="section__label">03 &mdash; Experience</div>
      <h2 class="section__heading">Career <span class="gradient-text">Journey</span></h2>
      <div class="timeline">
        <div class="timeline__item timeline__item--active">
          <div class="timeline__dot"></div>
          <div class="timeline__date">Jan 2025 &mdash; Present</div>
          <div class="timeline__card">
            <div class="timeline__card-header">
              <div>
                <h3>IT Support Technician</h3>
                <p class="timeline__company">ATSG (ATG Data Center Tech)</p>
              </div>
              <span class="timeline__badge timeline__badge--current">Current</span>
            </div>
            <p>
              Supporting enterprise endpoints and Microsoft 365 in a shared-services IT environment.
              Analyzing recurring issues and documenting solutions to improve reliability and consistency.
              Collaborating with senior technicians and infrastructure teams on escalations and user-impacting changes.
            </p>
            <div class="timeline__impact">
              <span class="impact-icon">&#127942;</span>
              <strong>Impact:</strong> Reduced average ticket resolution time by 25% through improved triage and documentation.
            </div>
            <div class="timeline__tech">
              <span class="tech-tag">Microsoft 365</span>
              <span class="tech-tag">Windows</span>
              <span class="tech-tag">ITSM</span>
              <span class="tech-tag">Documentation</span>
            </div>
          </div>
        </div>
        <div class="timeline__item">
          <div class="timeline__dot"></div>
          <div class="timeline__date">Nov 2021 &mdash; May 2024</div>
          <div class="timeline__card">
            <div class="timeline__card-header">
              <div>
                <h3>Client Service Associate &mdash; Participant Services</h3>
                <p class="timeline__company">Ascensus</p>
              </div>
            </div>
            <p>
              Interpreted system data and policies to resolve complex inquiries in a highly regulated
              environment. Maintained precise documentation and partnered cross-functionally to
              resolve non-standard issues requiring policy interpretation and data analysis.
            </p>
            <div class="timeline__tech">
              <span class="tech-tag">Data Interpretation</span>
              <span class="tech-tag">Regulated Environment</span>
              <span class="tech-tag">Cross-functional</span>
              <span class="tech-tag">Documentation</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- EDUCATION -->
  <section class="section education" id="education">
    <div class="container">
      <div class="section__label">04 &mdash; Education</div>
      <h2 class="section__heading">Academic <span class="gradient-text">Foundation</span></h2>
      <div class="edu__grid">
        <div class="edu__card">
          <div class="edu__icon">&#127891;</div>
          <div class="edu__content">
            <h3>A.A.S., Software Applications &amp; Programming</h3>
            <p class="edu__meta">Graduated with GPA <strong>3.73</strong></p>
            <p>Foundational coursework in software development, programming logic, and applications &mdash; building the technical backbone for a career in data and AI.</p>
          </div>
          <div class="edu__gpa">
            <span class="gpa-num">3.73</span>
            <span class="gpa-label">GPA</span>
          </div>
        </div>
        <div class="edu__currently">
          <h3>Currently Learning</h3>
          <div class="learning-grid">
            <div class="learning-item">
              <span class="learning-icon">&#128200;</span>
              <span>Data Analytics (DataCamp)</span>
            </div>
            <div class="learning-item">
              <span class="learning-icon">&#9729;</span>
              <span>Data &amp; Cloud Fundamentals (Microsoft Learn)</span>
            </div>
            <div class="learning-item">
              <span class="learning-icon">&#129302;</span>
              <span>Data Analytics &amp; AI Foundations (IBM SkillsBuild)</span>
            </div>
            <div class="learning-item">
              <span class="learning-icon">&#128187;</span>
              <span>Version-controlled projects &mdash; SQL, Python &amp; AI</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- CERTIFICATES -->
  <section class="section certifications" id="certifications">
    <div class="container">
      <div class="section__label">05 &mdash; Certificates</div>
      <h2 class="section__heading">Certificates &amp; <span class="gradient-text">Development</span></h2>
      <div class="certs__section-label">Completed</div>
      <div class="certs__grid certs__grid--completed">
        <div class="cert-card cert-card--completed" data-cert="assets/images/certs/cert-ccma.jpg">
          <div class="cert-card__ribbon">Certified</div>
          <div class="cert-card__logo cert-card__logo--nha"><span>NHA</span></div>
          <div class="cert-card__body">
            <h3>Certified Clinical Medical Assistant (CCMA)</h3>
            <p class="cert-card__issuer">National Healthcareer Association</p>
            <p class="cert-card__desc">Nationally accredited professional certification (NCCA) as a Clinical Medical Assistant. Cert #K8Z3B8Y4 &mdash; Active through May 2028.</p>
          </div>
          <div class="cert-card__footer">
            <span class="cert-status cert-status--complete">&#10003; Active Certification</span>
            <button class="cert-view-btn" onclick="openCert(this)">View Certificate &#8599;</button>
          </div>
        </div>
        <div class="cert-card cert-card--completed" data-cert="assets/images/certs/cert-genai-mastermind.jpg">
          <div class="cert-card__ribbon">Completed</div>
          <div class="cert-card__logo cert-card__logo--outskill"><span>OS</span></div>
          <div class="cert-card__body">
            <h3>Generative AI Mastermind</h3>
            <p class="cert-card__issuer">Outskill</p>
            <p class="cert-card__desc">Comprehensive program covering generative AI principles, tools, workflows, and practical applications across business and technical contexts.</p>
          </div>
          <div class="cert-card__footer">
            <span class="cert-status cert-status--complete">&#10003; Certificate of Completion</span>
            <button class="cert-view-btn" onclick="openCert(this)">View Certificate &#8599;</button>
          </div>
        </div>
        <div class="cert-card cert-card--completed" data-cert="assets/images/certs/cert-genai-engineering.jpg">
          <div class="cert-card__ribbon">Completed</div>
          <div class="cert-card__logo cert-card__logo--outskill"><span>OS</span></div>
          <div class="cert-card__body">
            <h3>Gen AI Engineering Mastermind</h3>
            <p class="cert-card__issuer">Outskill</p>
            <p class="cert-card__desc">Advanced AI engineering program covering generative AI system design, implementation, and deployment &mdash; developed by industry experts from SLK and Silival.</p>
          </div>
          <div class="cert-card__footer">
            <span class="cert-status cert-status--complete">&#10003; Certificate of Completion</span>
            <button class="cert-view-btn" onclick="openCert(this)">View Certificate &#8599;</button>
          </div>
        </div>
        <div class="cert-card cert-card--completed" data-cert="assets/images/certs/cert-genai-sprint.jpg">
          <div class="cert-card__ribbon">Completed</div>
          <div class="cert-card__logo cert-card__logo--outskill"><span>OS</span></div>
          <div class="cert-card__body">
            <h3>AI Sprint: Open Source AI &amp; Graph Engineering</h3>
            <p class="cert-card__issuer">Outskill</p>
            <p class="cert-card__desc">2-day intensive sprint covering open source AI and graph engineering &mdash; including local AI deployment, graph-powered AI architectures, AI workflows, rapid prototyping, and real-world application development. Completed Jul 2026.</p>
          </div>
          <div class="cert-card__footer">
            <span class="cert-status cert-status--complete">&#10003; Certificate of Completion</span>
            <button class="cert-view-btn" onclick="openCert(this)">View Certificate &#8599;</button>
          </div>
        </div>
        <div class="cert-card cert-card--completed" data-cert="assets/images/certs/cert-genai-bootcamp.jpg">
          <div class="cert-card__ribbon">Completed</div>
          <div class="cert-card__logo cert-card__logo--growthschool"><span>GS</span></div>
          <div class="cert-card__body">
            <h3>Generative AI Bootcamp INTL</h3>
            <p class="cert-card__issuer">Growth School</p>
            <p class="cert-card__desc">International generative AI bootcamp covering foundational to advanced AI concepts, prompt engineering, and real-world AI tool applications.</p>
          </div>
          <div class="cert-card__footer">
            <span class="cert-status cert-status--complete">&#10003; Certificate of Completion</span>
            <button class="cert-view-btn" onclick="openCert(this)">View Certificate &#8599;</button>
          </div>
        </div>
        <div class="cert-card cert-card--completed" data-cert="assets/images/certs/cert-power-bi.jpg">
          <div class="cert-card__ribbon">Completed</div>
          <div class="cert-card__logo cert-card__logo--datacamp"><span>DC</span></div>
          <div class="cert-card__body">
            <h3>Introduction to Power BI</h3>
            <p class="cert-card__issuer">DataCamp</p>
            <p class="cert-card__desc">Hands-on Power BI training covering data import, transformation, interactive dashboard creation, and business intelligence reporting. Completed Apr 2026.</p>
          </div>
          <div class="cert-card__footer">
            <span class="cert-status cert-status--complete">&#10003; Statement of Accomplishment</span>
            <button class="cert-view-btn" onclick="openCert(this)">View Certificate &#8599;</button>
          </div>
        </div>
      </div>
      <div class="certs__section-label certs__section-label--progress">In Progress</div>
      <div class="certs__grid">
        <div class="cert-card cert-card--inprogress">
          <div class="cert-card__logo cert-card__logo--datacamp"><span>DC</span></div>
          <div class="cert-card__body">
            <h3>Data Analytics</h3>
            <p class="cert-card__issuer">DataCamp</p>
            <p class="cert-card__desc">Full data analytics career track covering data manipulation, visualization, statistical analysis, and Python for data science workflows.</p>
          </div>
          <div class="cert-card__footer">
            <div class="progress-bar"><div class="progress-bar__fill" style="width: 60%"></div></div>
            <span class="cert-status cert-status--progress">In Progress</span>
          </div>
        </div>
        <div class="cert-card cert-card--inprogress">
          <div class="cert-card__logo cert-card__logo--microsoft"><span>MS</span></div>
          <div class="cert-card__body">
            <h3>Data &amp; Cloud Fundamentals</h3>
            <p class="cert-card__issuer">Microsoft Learn</p>
            <p class="cert-card__desc">Core Microsoft cloud and data concepts including Azure fundamentals, data storage, and cloud service models for modern analytics platforms.</p>
          </div>
          <div class="cert-card__footer">
            <div class="progress-bar"><div class="progress-bar__fill" style="width: 45%"></div></div>
            <span class="cert-status cert-status--progress">In Progress</span>
          </div>
        </div>
        <div class="cert-card cert-card--inprogress">
          <div class="cert-card__logo cert-card__logo--ibm"><span>IBM</span></div>
          <div class="cert-card__body">
            <h3>Data Analytics &amp; AI Foundations</h3>
            <p class="cert-card__issuer">IBM SkillsBuild</p>
            <p class="cert-card__desc">IBM's structured learning path covering data analytics fundamentals alongside artificial intelligence concepts and practical AI tool application.</p>
          </div>
          <div class="cert-card__footer">
            <div class="progress-bar"><div class="progress-bar__fill" style="width: 35%"></div></div>
            <span class="cert-status cert-status--progress">In Progress</span>
          </div>
        </div>
        <div class="cert-card cert-card--inprogress">
          <div class="cert-card__logo cert-card__logo--aiap"><span>AI</span></div>
          <div class="cert-card__body">
            <h3>AI Generalist Accelerator Program</h3>
            <p class="cert-card__issuer">Growth School (INTL)</p>
            <p class="cert-card__desc">100+ hour live program covering full-stack AI generalist skills &mdash; GenAI fundamentals, RAG systems, AI agents, image &amp; video AI, MCP tools, and a 48-hour live buildathon to deploy an AI product.</p>
          </div>
          <div class="cert-card__footer">
            <div class="progress-bar"><div class="progress-bar__fill" style="width: 50%"></div></div>
            <span class="cert-status cert-status--progress">In Progress</span>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- PORTFOLIO -->
  <section class="section portfolio" id="portfolio">
    <div class="container">
      <div class="section__label">06 &mdash; Portfolio</div>
      <h2 class="section__heading">Technical <span class="gradient-text">Portfolio</span></h2>
      <div class="portfolio__banner">
        <div class="portfolio__icon">&#128640;</div>
        <div class="portfolio__text">
          <h3>Building in Public on GitHub</h3>
          <p>
            Version-controlled learning projects supporting analytics, SQL, and AI exploration.
            Portfolio dashboards and data projects currently in progress &mdash; watch this space.
          </p>
        </div>
        <a href="https://github.com/DataTechTammy" target="_blank" rel="noopener" class="btn btn--primary">
          View GitHub &rarr;
        </a>
      </div>
      <div class="portfolio__coming">
        <div class="coming-card">
          <div class="coming-card__tag">Coming Soon</div>
          <div class="coming-card__icon">&#128202;</div>
          <h4>Analytics Dashboard</h4>
          <p>Interactive data visualization project</p>
        </div>
        <div class="coming-card">
          <div class="coming-card__tag">Coming Soon</div>
          <div class="coming-card__icon">&#128447;</div>
          <h4>SQL Projects</h4>
          <p>Database querying &amp; data manipulation</p>
        </div>
        <div class="coming-card">
          <div class="coming-card__tag">Coming Soon</div>
          <div class="coming-card__icon">&#129302;</div>
          <h4>AI Experiments</h4>
          <p>Applied generative AI explorations</p>
        </div>
      </div>
    </div>
  </section>
  <!-- CONTACT -->
  <section class="section contact" id="contact">
    <div class="container">
      <div class="section__label">07 &mdash; Contact</div>
      <h2 class="section__heading">Let's <span class="gradient-text">Connect</span></h2>
      <p class="contact__sub">
        Open to data analytics roles, AI-focused opportunities, and collaborative projects.<br/>
        Always happy to talk tech, data, or the future of AI.
      </p>
      <div class="contact__cards">
        <a href="mailto:datacentertech.tmiller@gmail.com" class="contact-card">
          <div class="contact-card__icon">&#9993;</div>
          <div class="contact-card__text">
            <span class="contact-card__label">Email</span>
            <span class="contact-card__value">datacentertech.tmiller@gmail.com</span>
          </div>
        </a>
        <a href="https://github.com/DataTechTammy" target="_blank" rel="noopener" class="contact-card">
          <div class="contact-card__icon">&#128187;</div>
          <div class="contact-card__text">
            <span class="contact-card__label">GitHub</span>
            <span class="contact-card__value">DataTechTammy</span>
          </div>
        </a>
        <a href="https://linkedin.com" target="_blank" rel="noopener" class="contact-card">
          <div class="contact-card__icon">&#128279;</div>
          <div class="contact-card__text">
            <span class="contact-card__label">LinkedIn</span>
            <span class="contact-card__value">Connect with me</span>
          </div>
        </a>
      </div>
    </div>
  </section>
  <!-- FOOTER -->
  <footer class="footer">
    <div class="container">
      <div class="footer__content">
        <div class="footer__brand">
          <span class="footer__logo">TSM</span>
          <p>Tammy S. Miller &mdash; Data Analytics &amp; AI</p>
        </div>
        <div class="footer__copy">
          <p>&copy; 2026 Tammy S. Miller &middot; Built with purpose &amp; curiosity</p>
        </div>
      </div>
    </div>
  </footer>
  <!-- CERTIFICATE LIGHTBOX -->
  <div class="cert-modal" id="certModal" role="dialog" aria-modal="true" aria-label="Certificate viewer">
    <div class="cert-modal__backdrop" onclick="closeCert()"></div>
    <div class="cert-modal__box">
      <button class="cert-modal__close" onclick="closeCert()" aria-label="Close">&times;</button>
      <img class="cert-modal__img" id="certModalImg" src="" alt="Certificate of Completion" />
    </div>
  </div>
  <script src="assets/js/main.js"></script>
</body>
</html>
'@
Write-Host "  index.html written" -ForegroundColor Green
# ─────────────────────────────────────────────────────────────
# assets/css/style.css
# ─────────────────────────────────────────────────────────────
Set-Content -Path "$repoRoot\assets\css\style.css" -Encoding UTF8 -Value @'
/* ============================================================
   TAMMY S. MILLER — Personal Resume Page
   Bold & Colorful Design System
   ============================================================ */
/* ---------- RESET & BASE ---------- */
*, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
:root {
  --c-pink:    #f72585;
  --c-purple:  #7209b7;
  --c-violet:  #3a0ca3;
  --c-blue:    #4361ee;
  --c-cyan:    #4cc9f0;
  --c-orange:  #fb5607;
  --c-yellow:  #ffbe0b;
  --grad-hero:    linear-gradient(135deg, #f72585 0%, #7209b7 35%, #3a0ca3 65%, #4361ee 100%);
  --grad-main:    linear-gradient(135deg, #f72585, #fb5607, #ffbe0b);
  --grad-cool:    linear-gradient(135deg, #4361ee, #4cc9f0);
  --grad-warm:    linear-gradient(135deg, #f72585, #fb5607);
  --grad-text:    linear-gradient(90deg, #f72585, #fb5607, #ffbe0b);
  --bg-dark:   #0a0a0f;
  --bg-card:   #13131a;
  --bg-mid:    #0d0d14;
  --text-main: #f0f0f5;
  --text-muted:#9898aa;
  --border:    rgba(255,255,255,0.08);
  --radius-sm: 8px;
  --radius-md: 16px;
  --radius-lg: 24px;
  --radius-xl: 32px;
  --shadow-card: 0 8px 32px rgba(0,0,0,0.4);
  --shadow-glow: 0 0 40px rgba(247,37,133,0.2);
  --font-main: 'Space Grotesk', sans-serif;
  --font-body: 'Inter', sans-serif;
}
html { scroll-behavior: smooth; font-size: 16px; }
body {
  font-family: var(--font-body);
  background: var(--bg-dark);
  color: var(--text-main);
  line-height: 1.7;
  overflow-x: hidden;
}
/* ---------- UTILITIES ---------- */
.container { max-width: 1120px; margin: 0 auto; padding: 0 24px; }
.gradient-text {
  background: var(--grad-text);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}
/* ---------- NAVIGATION ---------- */
.nav {
  position: fixed; top: 0; left: 0; right: 0; z-index: 100;
  display: flex; align-items: center; justify-content: space-between;
  padding: 16px 40px;
  background: rgba(10,10,15,0.7);
  backdrop-filter: blur(20px);
  border-bottom: 1px solid var(--border);
  transition: all 0.3s ease;
}
.nav.scrolled { padding: 12px 40px; background: rgba(10,10,15,0.95); }
.nav__logo {
  font-family: var(--font-main); font-weight: 700; font-size: 1.4rem;
  background: var(--grad-main); -webkit-background-clip: text;
  -webkit-text-fill-color: transparent; background-clip: text;
}
.nav__links { display: flex; gap: 32px; list-style: none; align-items: center; }
.nav__links a { color: var(--text-muted); text-decoration: none; font-size: 0.9rem; font-weight: 500; transition: color 0.2s; }
.nav__links a:hover { color: var(--text-main); }
.nav__cta {
  background: var(--grad-main); -webkit-background-clip: text;
  -webkit-text-fill-color: transparent; background-clip: text;
  border: 1px solid var(--c-pink); padding: 8px 20px; border-radius: 40px;
}
.nav__burger { display: none; flex-direction: column; gap: 5px; background: none; border: none; cursor: pointer; padding: 4px; }
.nav__burger span { display: block; width: 24px; height: 2px; background: var(--text-main); border-radius: 2px; transition: all 0.3s; }
/* ---------- HERO ---------- */
.hero {
  min-height: 100vh; position: relative;
  display: flex; align-items: center; justify-content: center;
  overflow: hidden; padding: 120px 24px 80px;
}
.hero__bg { position: absolute; inset: 0; background: var(--bg-dark); overflow: hidden; }
.blob { position: absolute; border-radius: 50%; filter: blur(80px); opacity: 0.4; animation: blobFloat 8s ease-in-out infinite; }
.blob--1 { width: 600px; height: 600px; background: radial-gradient(circle, #f72585, transparent 70%); top: -200px; left: -200px; animation-delay: 0s; }
.blob--2 { width: 500px; height: 500px; background: radial-gradient(circle, #7209b7, transparent 70%); top: 50%; right: -150px; animation-delay: -3s; }
.blob--3 { width: 400px; height: 400px; background: radial-gradient(circle, #4361ee, transparent 70%); bottom: -100px; left: 30%; animation-delay: -6s; }
@keyframes blobFloat {
  0%, 100% { transform: translate(0, 0) scale(1); }
  33%       { transform: translate(30px, -30px) scale(1.05); }
  66%       { transform: translate(-20px, 20px) scale(0.95); }
}
.hero__content { position: relative; z-index: 1; text-align: center; max-width: 800px; }
.hero__badge {
  display: inline-flex; align-items: center; gap: 10px;
  background: rgba(247,37,133,0.15); border: 1px solid rgba(247,37,133,0.3);
  color: #f9a0c8; padding: 8px 20px; border-radius: 40px;
  font-size: 0.85rem; font-weight: 500; margin-bottom: 32px;
}
.pulse-dot { width: 8px; height: 8px; background: #f72585; border-radius: 50%; animation: pulse 2s infinite; }
@keyframes pulse {
  0%, 100% { box-shadow: 0 0 0 0 rgba(247,37,133,0.5); }
  50%       { box-shadow: 0 0 0 8px rgba(247,37,133,0); }
}
.hero__name {
  font-family: var(--font-main); font-size: clamp(3rem, 8vw, 6rem);
  font-weight: 900; line-height: 1.05; margin-bottom: 20px;
  background: var(--grad-hero); -webkit-background-clip: text;
  -webkit-text-fill-color: transparent; background-clip: text; letter-spacing: -2px;
}
.hero__titles { display: flex; align-items: center; justify-content: center; gap: 16px; flex-wrap: wrap; margin-bottom: 24px; }
.hero__title-static { font-family: var(--font-main); font-size: clamp(1rem, 2.5vw, 1.4rem); font-weight: 600; color: var(--text-muted); }
.hero__divider { color: var(--c-pink); font-size: 1.2rem; }
.hero__title-rotating {
  font-family: var(--font-main); font-size: clamp(1rem, 2.5vw, 1.4rem); font-weight: 700;
  background: var(--grad-main); -webkit-background-clip: text;
  -webkit-text-fill-color: transparent; background-clip: text;
  min-width: 200px; display: inline-block;
}
.hero__tagline { font-size: 1.1rem; color: var(--text-muted); margin-bottom: 40px; line-height: 1.8; }
.hero__actions { display: flex; gap: 16px; justify-content: center; flex-wrap: wrap; margin-bottom: 60px; }
/* ---------- BUTTONS ---------- */
.btn {
  display: inline-flex; align-items: center; gap: 8px;
  padding: 14px 32px; border-radius: 50px; font-weight: 600; font-size: 0.95rem;
  text-decoration: none; transition: all 0.3s ease; cursor: pointer; border: none;
}
.btn--primary { background: var(--grad-main); color: white; box-shadow: 0 4px 24px rgba(247,37,133,0.4); }
.btn--primary:hover { transform: translateY(-3px); box-shadow: 0 8px 32px rgba(247,37,133,0.5); }
.btn--outline { background: transparent; color: var(--text-main); border: 2px solid var(--border); }
.btn--outline:hover { border-color: var(--c-pink); color: var(--c-pink); transform: translateY(-3px); }
/* ---------- HERO STATS ---------- */
.hero__stats { display: flex; align-items: center; justify-content: center; gap: 32px; }
.stat { display: flex; flex-direction: column; align-items: center; }
.stat__num {
  font-family: var(--font-main); font-size: 2.5rem; font-weight: 900;
  background: var(--grad-main); -webkit-background-clip: text;
  -webkit-text-fill-color: transparent; background-clip: text; line-height: 1;
}
.stat__label { font-size: 0.78rem; color: var(--text-muted); text-transform: uppercase; letter-spacing: 1px; margin-top: 4px; }
.stat__divider { width: 1px; height: 40px; background: var(--border); }
/* ---------- SCROLL INDICATOR ---------- */
.hero__scroll {
  position: absolute; bottom: 32px; left: 50%; transform: translateX(-50%);
  display: flex; flex-direction: column; align-items: center; gap: 8px;
  color: var(--text-muted); font-size: 0.75rem; letter-spacing: 2px; text-transform: uppercase;
}
.scroll-line { width: 1px; height: 40px; background: linear-gradient(to bottom, var(--c-pink), transparent); animation: scrollDrop 2s ease-in-out infinite; }
@keyframes scrollDrop {
  0%   { transform: scaleY(0); transform-origin: top; opacity: 1; }
  50%  { transform: scaleY(1); transform-origin: top; opacity: 1; }
  100% { transform: scaleY(1); transform-origin: bottom; opacity: 0; }
}
/* ---------- SECTIONS ---------- */
.section { padding: 100px 0; }
.section:nth-child(even) { background: var(--bg-mid); }
.section__label { font-size: 0.78rem; font-weight: 600; text-transform: uppercase; letter-spacing: 3px; color: var(--c-pink); margin-bottom: 16px; }
.section__heading { font-family: var(--font-main); font-size: clamp(2rem, 5vw, 3rem); font-weight: 800; line-height: 1.15; margin-bottom: 48px; letter-spacing: -1px; }
/* ---------- ABOUT ---------- */
.about__grid { display: grid; grid-template-columns: 1fr 380px; gap: 60px; align-items: start; }
.about__text p { color: var(--text-muted); margin-bottom: 20px; font-size: 1.05rem; }
.about__text strong { color: var(--text-main); }
.about__highlights { margin-top: 32px; display: flex; flex-direction: column; gap: 16px; }
.highlight {
  display: flex; align-items: flex-start; gap: 16px; padding: 16px 20px;
  background: rgba(247,37,133,0.07); border: 1px solid rgba(247,37,133,0.15);
  border-radius: var(--radius-md); font-size: 0.95rem; color: var(--text-muted);
}
.highlight__icon { font-size: 1.2rem; flex-shrink: 0; }
/* ---------- PROFILE CARD ---------- */
.profile-card {
  background: var(--bg-card); border: 1px solid var(--border);
  border-radius: var(--radius-xl); padding: 40px 32px; text-align: center;
  box-shadow: var(--shadow-card); position: sticky; top: 100px;
}
.profile-card__avatar { position: relative; width: 100px; height: 100px; margin: 0 auto 24px; }
.avatar-initials {
  width: 100px; height: 100px; border-radius: 50%; background: var(--grad-hero);
  display: flex; align-items: center; justify-content: center;
  font-family: var(--font-main); font-size: 2rem; font-weight: 900; color: white;
  position: relative; z-index: 1;
}
.avatar-ring {
  position: absolute; inset: -4px; border-radius: 50%; background: var(--grad-main); z-index: 0;
  animation: spin 8s linear infinite;
  mask: radial-gradient(farthest-side, transparent calc(100% - 3px), white calc(100% - 3px));
  -webkit-mask: radial-gradient(farthest-side, transparent calc(100% - 3px), white calc(100% - 3px));
}
@keyframes spin { to { transform: rotate(360deg); } }
.profile-card__info h3 { font-family: var(--font-main); font-size: 1.4rem; font-weight: 700; margin-bottom: 4px; }
.profile-card__info p { font-size: 0.85rem; color: var(--text-muted); margin-bottom: 24px; }
.profile-card__details { text-align: left; margin-bottom: 24px; display: flex; flex-direction: column; gap: 12px; }
.detail-row { display: flex; align-items: center; gap: 12px; font-size: 0.85rem; color: var(--text-muted); }
.detail-icon { font-size: 1rem; }
.profile-card__links { display: flex; gap: 12px; justify-content: center; }
.social-btn { padding: 10px 20px; border-radius: 40px; font-size: 0.85rem; font-weight: 600; text-decoration: none; transition: all 0.3s; }
.social-btn--github { background: rgba(255,255,255,0.08); color: var(--text-main); border: 1px solid var(--border); }
.social-btn--github:hover { background: rgba(255,255,255,0.15); }
.social-btn--linkedin { background: rgba(67,97,238,0.2); color: #8ca3f5; border: 1px solid rgba(67,97,238,0.3); }
.social-btn--linkedin:hover { background: rgba(67,97,238,0.35); }
/* ---------- SKILLS ---------- */
.skills__grid { display: grid; grid-template-columns: repeat(2, 1fr); gap: 24px; }
.skill-card {
  background: var(--bg-card); border-radius: var(--radius-lg); padding: 32px;
  border: 1px solid var(--border); transition: transform 0.3s ease, box-shadow 0.3s ease;
  position: relative; overflow: hidden;
}
.skill-card::before { content: ''; position: absolute; top: 0; left: 0; right: 0; height: 3px; }
.skill-card--data::before     { background: var(--grad-main); }
.skill-card--ai::before       { background: var(--grad-cool); }
.skill-card--platform::before { background: linear-gradient(90deg, #7209b7, #f72585); }
.skill-card--soft::before     { background: linear-gradient(90deg, #ffbe0b, #fb5607); }
.skill-card:hover { transform: translateY(-6px); box-shadow: var(--shadow-card); }
.skill-card__icon { font-size: 2rem; margin-bottom: 16px; }
.skill-card h3 { font-family: var(--font-main); font-size: 1.15rem; font-weight: 700; margin-bottom: 20px; }
.skill-tags { display: flex; flex-wrap: wrap; gap: 8px; }
.tag { background: rgba(255,255,255,0.06); border: 1px solid var(--border); color: var(--text-muted); padding: 6px 14px; border-radius: 40px; font-size: 0.8rem; font-weight: 500; transition: all 0.2s; }
.tag:hover { background: rgba(247,37,133,0.15); border-color: rgba(247,37,133,0.3); color: #f9a0c8; }
/* ---------- EXPERIENCE ---------- */
.timeline { position: relative; padding-left: 40px; }
.timeline::before { content: ''; position: absolute; left: 8px; top: 0; bottom: 0; width: 2px; background: linear-gradient(to bottom, var(--c-pink), var(--c-blue), transparent); }
.timeline__item { position: relative; margin-bottom: 48px; }
.timeline__dot { position: absolute; left: -36px; top: 20px; width: 16px; height: 16px; border-radius: 50%; background: var(--bg-dark); border: 3px solid var(--c-pink); transition: all 0.3s; }
.timeline__item--active .timeline__dot { background: var(--c-pink); box-shadow: 0 0 0 6px rgba(247,37,133,0.2); animation: pulse 2s infinite; }
.timeline__date { font-size: 0.82rem; font-weight: 600; color: var(--c-pink); text-transform: uppercase; letter-spacing: 1px; margin-bottom: 12px; }
.timeline__card { background: var(--bg-card); border: 1px solid var(--border); border-radius: var(--radius-lg); padding: 28px 32px; transition: all 0.3s; }
.timeline__card:hover { border-color: rgba(247,37,133,0.3); box-shadow: 0 0 30px rgba(247,37,133,0.1); }
.timeline__card-header { display: flex; align-items: flex-start; justify-content: space-between; margin-bottom: 16px; gap: 16px; }
.timeline__card-header h3 { font-family: var(--font-main); font-size: 1.2rem; font-weight: 700; }
.timeline__company { font-size: 0.9rem; color: var(--c-cyan); font-weight: 500; margin-top: 4px; }
.timeline__badge { padding: 4px 14px; border-radius: 40px; font-size: 0.75rem; font-weight: 600; flex-shrink: 0; }
.timeline__badge--current { background: rgba(76,201,240,0.15); color: var(--c-cyan); border: 1px solid rgba(76,201,240,0.3); }
.timeline__card > p { color: var(--text-muted); margin-bottom: 16px; font-size: 0.95rem; }
.timeline__impact { background: rgba(255,190,11,0.08); border: 1px solid rgba(255,190,11,0.2); border-radius: var(--radius-sm); padding: 12px 16px; font-size: 0.9rem; color: #ffd860; margin-bottom: 16px; display: flex; gap: 10px; align-items: flex-start; }
.impact-icon { flex-shrink: 0; }
.timeline__tech { display: flex; flex-wrap: wrap; gap: 8px; margin-top: 12px; }
.tech-tag { background: rgba(67,97,238,0.12); color: #8ca3f5; border: 1px solid rgba(67,97,238,0.25); padding: 4px 12px; border-radius: 40px; font-size: 0.78rem; font-weight: 500; }
/* ---------- EDUCATION ---------- */
.edu__grid { display: grid; grid-template-columns: 1fr 1fr; gap: 32px; align-items: start; }
.edu__card { background: var(--bg-card); border: 1px solid var(--border); border-radius: var(--radius-lg); padding: 32px; display: flex; gap: 20px; align-items: flex-start; border-top: 3px solid; border-image: var(--grad-main) 1; }
.edu__icon { font-size: 2.5rem; flex-shrink: 0; }
.edu__content h3 { font-family: var(--font-main); font-size: 1.1rem; font-weight: 700; margin-bottom: 8px; }
.edu__meta { font-size: 0.85rem; color: var(--c-cyan); margin-bottom: 12px; }
.edu__content p { font-size: 0.9rem; color: var(--text-muted); }
.edu__gpa { text-align: center; flex-shrink: 0; align-self: flex-start; padding-top: 4px; }
.gpa-num { display: block; font-family: var(--font-main); font-size: 1.8rem; font-weight: 900; background: var(--grad-main); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; line-height: 1; }
.gpa-label { font-size: 0.65rem; text-transform: uppercase; letter-spacing: 2px; color: var(--text-muted); }
.edu__currently { background: var(--bg-card); border: 1px solid var(--border); border-radius: var(--radius-lg); padding: 32px; }
.edu__currently h3 { font-family: var(--font-main); font-size: 1.1rem; font-weight: 700; margin-bottom: 24px; color: var(--c-cyan); }
.learning-grid { display: flex; flex-direction: column; gap: 16px; }
.learning-item { display: flex; align-items: center; gap: 14px; padding: 14px 16px; background: rgba(255,255,255,0.04); border-radius: var(--radius-sm); font-size: 0.9rem; color: var(--text-muted); transition: all 0.2s; }
.learning-item:hover { background: rgba(76,201,240,0.08); color: var(--text-main); }
.learning-icon { font-size: 1.2rem; }
/* ---------- CERTIFICATES ---------- */
.certs__section-label { font-size: 0.75rem; font-weight: 700; text-transform: uppercase; letter-spacing: 3px; color: var(--c-cyan); margin-bottom: 20px; padding-left: 4px; }
.certs__section-label--progress { color: var(--text-muted); margin-top: 40px; }
.certs__grid--completed { margin-bottom: 8px; }
.certs__grid { display: grid; grid-template-columns: repeat(2, 1fr); gap: 24px; }
.cert-card {
  background: var(--bg-card); border: 1px solid var(--border); border-radius: var(--radius-lg);
  padding: 28px; display: flex; flex-direction: column; gap: 20px;
  transition: transform 0.3s ease, box-shadow 0.3s ease; position: relative; overflow: hidden;
}
.cert-card:hover { transform: translateY(-4px); box-shadow: var(--shadow-card); }
.cert-card--completed { border-color: rgba(76,201,240,0.3); background: linear-gradient(135deg, rgba(76,201,240,0.05), var(--bg-card)); }
.cert-card__ribbon { position: absolute; top: 16px; right: -24px; background: var(--grad-cool); color: white; font-size: 0.72rem; font-weight: 700; padding: 4px 32px; transform: rotate(45deg); letter-spacing: 1px; text-transform: uppercase; }
.cert-card__logo { width: 56px; height: 56px; border-radius: var(--radius-sm); display: flex; align-items: center; justify-content: center; font-family: var(--font-main); font-size: 1rem; font-weight: 900; color: white; flex-shrink: 0; }
.cert-card__logo--outskill    { background: linear-gradient(135deg, #f72585, #7209b7); }
.cert-card__logo--datacamp    { background: linear-gradient(135deg, #03ef62, #05a37c); }
.cert-card__logo--microsoft   { background: linear-gradient(135deg, #0078d4, #00bcf2); }
.cert-card__logo--ibm         { background: linear-gradient(135deg, #1f70c1, #054ada); }
.cert-card__logo--growthschool{ background: linear-gradient(135deg, #00c853, #1a472a); }
.cert-card__logo--aiap        { background: linear-gradient(135deg, #a8ff78, #1e5c1e); }
.cert-card__logo--nha         { background: linear-gradient(135deg, #0056b3, #003875); }
.cert-card__body h3 { font-family: var(--font-main); font-size: 1.05rem; font-weight: 700; margin-bottom: 4px; }
.cert-card__issuer { font-size: 0.82rem; color: var(--c-cyan); font-weight: 600; margin-bottom: 12px; text-transform: uppercase; letter-spacing: 1px; }
.cert-card__desc { font-size: 0.88rem; color: var(--text-muted); line-height: 1.6; }
.cert-card__footer { margin-top: auto; display: flex; flex-direction: column; gap: 12px; }
.progress-bar { height: 4px; background: rgba(255,255,255,0.08); border-radius: 4px; overflow: hidden; margin-bottom: 4px; }
.progress-bar__fill { height: 100%; background: var(--grad-main); border-radius: 4px; animation: progressFill 1.5s ease-out forwards; transform-origin: left; }
@keyframes progressFill { from { transform: scaleX(0); } to { transform: scaleX(1); } }
.cert-status { font-size: 0.8rem; font-weight: 600; }
.cert-status--complete { color: var(--c-cyan); }
.cert-status--progress { color: var(--text-muted); }
/* View Certificate button */
.cert-view-btn {
  align-self: flex-start;
  background: none;
  border: 1px solid rgba(76,201,240,0.4);
  color: var(--c-cyan);
  padding: 7px 16px;
  border-radius: 40px;
  font-size: 0.78rem;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.25s;
  letter-spacing: 0.3px;
}
.cert-view-btn:hover {
  background: rgba(76,201,240,0.12);
  border-color: var(--c-cyan);
  transform: translateY(-1px);
}
/* ---------- CERTIFICATE LIGHTBOX ---------- */
.cert-modal {
  display: none;
  position: fixed;
  inset: 0;
  z-index: 9000;
  align-items: center;
  justify-content: center;
}
.cert-modal.open { display: flex; }
.cert-modal__backdrop {
  position: absolute;
  inset: 0;
  background: rgba(0,0,0,0.88);
  backdrop-filter: blur(6px);
  cursor: pointer;
}
.cert-modal__box {
  position: relative;
  z-index: 1;
  max-width: 90vw;
  max-height: 90vh;
  border-radius: var(--radius-lg);
  overflow: hidden;
  box-shadow: 0 24px 80px rgba(0,0,0,0.8), 0 0 0 1px rgba(76,201,240,0.2);
  animation: modalIn 0.25s ease;
}
@keyframes modalIn {
  from { opacity: 0; transform: scale(0.93); }
  to   { opacity: 1; transform: scale(1); }
}
.cert-modal__img {
  display: block;
  max-width: 90vw;
  max-height: 88vh;
  width: auto;
  height: auto;
  object-fit: contain;
}
.cert-modal__close {
  position: absolute;
  top: 12px; right: 14px;
  background: rgba(0,0,0,0.7);
  color: white;
  border: none;
  width: 36px; height: 36px;
  border-radius: 50%;
  font-size: 1.3rem;
  line-height: 1;
  cursor: pointer;
  display: flex; align-items: center; justify-content: center;
  transition: background 0.2s;
  z-index: 2;
}
.cert-modal__close:hover { background: rgba(247,37,133,0.8); }
/* ---------- PORTFOLIO ---------- */
.portfolio__banner { background: linear-gradient(135deg, rgba(247,37,133,0.1), rgba(67,97,238,0.1)); border: 1px solid rgba(247,37,133,0.2); border-radius: var(--radius-xl); padding: 40px 48px; display: flex; align-items: center; gap: 32px; margin-bottom: 32px; flex-wrap: wrap; }
.portfolio__icon { font-size: 3rem; flex-shrink: 0; }
.portfolio__text { flex: 1; min-width: 240px; }
.portfolio__text h3 { font-family: var(--font-main); font-size: 1.4rem; font-weight: 700; margin-bottom: 8px; }
.portfolio__text p { color: var(--text-muted); font-size: 0.95rem; }
.portfolio__coming { display: grid; grid-template-columns: repeat(3, 1fr); gap: 20px; }
.coming-card { background: var(--bg-card); border: 1px solid var(--border); border-radius: var(--radius-lg); padding: 28px 24px; text-align: center; position: relative; transition: all 0.3s; }
.coming-card:hover { border-color: rgba(247,37,133,0.3); transform: translateY(-4px); }
.coming-card__tag { display: inline-block; background: rgba(251,86,7,0.15); color: #fb8c56; border: 1px solid rgba(251,86,7,0.25); font-size: 0.72rem; font-weight: 700; text-transform: uppercase; letter-spacing: 1px; padding: 4px 12px; border-radius: 40px; margin-bottom: 20px; }
.coming-card__icon { font-size: 2.5rem; margin-bottom: 16px; }
.coming-card h4 { font-family: var(--font-main); font-size: 1rem; font-weight: 700; margin-bottom: 8px; }
.coming-card p { font-size: 0.85rem; color: var(--text-muted); }
/* ---------- CONTACT ---------- */
.contact__sub { color: var(--text-muted); font-size: 1.05rem; max-width: 540px; margin-bottom: 48px; line-height: 1.8; }
.contact__cards { display: grid; grid-template-columns: repeat(3, 1fr); gap: 20px; }
.contact-card { background: var(--bg-card); border: 1px solid var(--border); border-radius: var(--radius-lg); padding: 28px 24px; display: flex; align-items: center; gap: 20px; text-decoration: none; color: inherit; transition: all 0.3s; }
.contact-card:hover { border-color: rgba(247,37,133,0.4); background: rgba(247,37,133,0.05); transform: translateY(-4px); box-shadow: 0 8px 32px rgba(247,37,133,0.15); }
.contact-card__icon { font-size: 2rem; flex-shrink: 0; }
.contact-card__text { display: flex; flex-direction: column; gap: 4px; overflow: hidden; }
.contact-card__label { font-size: 0.75rem; font-weight: 600; text-transform: uppercase; letter-spacing: 1px; color: var(--text-muted); }
.contact-card__value { font-size: 0.9rem; font-weight: 500; color: var(--text-main); white-space: nowrap; overflow: hidden; text-overflow: ellipsis; }
/* ---------- FOOTER ---------- */
.footer { padding: 40px 0; border-top: 1px solid var(--border); }
.footer__content { display: flex; align-items: center; justify-content: space-between; flex-wrap: wrap; gap: 16px; }
.footer__brand { display: flex; align-items: center; gap: 16px; }
.footer__logo { font-family: var(--font-main); font-size: 1.2rem; font-weight: 900; background: var(--grad-main); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; }
.footer__brand p { color: var(--text-muted); font-size: 0.85rem; }
.footer__copy p { color: var(--text-muted); font-size: 0.82rem; }
/* ---------- REVEAL ANIMATIONS ---------- */
.reveal { opacity: 0; transform: translateY(30px); transition: opacity 0.7s ease, transform 0.7s ease; }
.reveal.visible { opacity: 1; transform: translateY(0); }
/* ---------- RESPONSIVE ---------- */
@media (max-width: 900px) {
  .about__grid     { grid-template-columns: 1fr; }
  .profile-card    { position: static; }
  .skills__grid    { grid-template-columns: 1fr; }
  .certs__grid     { grid-template-columns: 1fr; }
  .edu__grid       { grid-template-columns: 1fr; }
  .contact__cards  { grid-template-columns: 1fr; }
  .portfolio__coming { grid-template-columns: 1fr 1fr; }
}
@media (max-width: 768px) {
  .nav { padding: 16px 20px; }
  .nav__links { display: none; }
  .nav__links.open { display: flex; flex-direction: column; position: fixed; top: 64px; left: 0; right: 0; background: rgba(10,10,15,0.98); padding: 24px; border-bottom: 1px solid var(--border); backdrop-filter: blur(20px); gap: 20px; }
  .nav__burger { display: flex; }
  .hero__stats { gap: 20px; }
  .stat__num   { font-size: 2rem; }
  .portfolio__banner { flex-direction: column; text-align: center; }
  .portfolio__coming { grid-template-columns: 1fr; }
  .section { padding: 70px 0; }
  .timeline { padding-left: 28px; }
}
@media (max-width: 480px) {
  .hero__titles { flex-direction: column; gap: 8px; }
  .hero__divider { display: none; }
  .edu__card { flex-direction: column; }
  .edu__gpa { align-self: flex-start; }
}
'@
Write-Host "  style.css written" -ForegroundColor Green
# ─────────────────────────────────────────────────────────────
# assets/js/main.js
# ─────────────────────────────────────────────────────────────
Set-Content -Path "$repoRoot\assets\js\main.js" -Encoding UTF8 -Value @'
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
const titles = ['AI Generalist','Data Explorer','AI Developer','Analytics Builder','Tech Innovator'];
const el = document.getElementById('rotating-title');
let titleIndex = 0, charIndex = 0, deleting = false;
function typeEffect() {
  const current = titles[titleIndex];
  if (!deleting) {
    el.textContent = current.substring(0, charIndex + 1);
    charIndex++;
    if (charIndex === current.length) { deleting = true; setTimeout(typeEffect, 2000); return; }
  } else {
    el.textContent = current.substring(0, charIndex - 1);
    charIndex--;
    if (charIndex === 0) { deleting = false; titleIndex = (titleIndex + 1) % titles.length; }
  }
  setTimeout(typeEffect, deleting ? 60 : 100);
}
setTimeout(typeEffect, 800);
/* ---------- REVEAL ON SCROLL ---------- */
const revealEls = document.querySelectorAll(
  '.skill-card, .timeline__item, .cert-card, .coming-card, ' +
  '.contact-card, .edu__card, .edu__currently, .highlight, ' +
  '.about__text, .about__card, .portfolio__banner'
);
revealEls.forEach(el => el.classList.add('reveal'));
const observer = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      setTimeout(() => entry.target.classList.add('visible'), 80);
      observer.unobserve(entry.target);
    }
  });
}, { threshold: 0.1, rootMargin: '0px 0px -40px 0px' });
revealEls.forEach(el => observer.observe(el));
/* ---------- STAGGERED GRID REVEAL ---------- */
document.querySelectorAll('.skills__grid, .certs__grid, .contact__cards, .portfolio__coming').forEach(grid => {
  grid.querySelectorAll('.reveal').forEach((child, i) => {
    child.style.transitionDelay = `${i * 100}ms`;
  });
});
/* ---------- ACTIVE NAV ---------- */
const sections = document.querySelectorAll('section[id]');
const navLinksAll = document.querySelectorAll('.nav__links a');
const sectionObserver = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      navLinksAll.forEach(a => {
        a.style.color = '';
        if (a.getAttribute('href') === `#${entry.target.id}`) a.style.color = '#f72585';
      });
    }
  });
}, { threshold: 0.4 });
sections.forEach(s => sectionObserver.observe(s));
/* ---------- SMOOTH SCROLL ---------- */
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
  anchor.addEventListener('click', function(e) {
    const target = document.querySelector(this.getAttribute('href'));
    if (target) {
      e.preventDefault();
      window.scrollTo({ top: target.getBoundingClientRect().top + window.scrollY - 80, behavior: 'smooth' });
    }
  });
});
/* ---------- PROGRESS BARS ---------- */
const progressBars = document.querySelectorAll('.progress-bar__fill');
const progressObserver = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      entry.target.style.animation = 'progressFill 1.5s ease-out forwards';
      progressObserver.unobserve(entry.target);
    }
  });
}, { threshold: 0.5 });
progressBars.forEach(bar => { bar.style.animation = 'none'; progressObserver.observe(bar); });
/* ---------- CERTIFICATE LIGHTBOX ---------- */
const modal    = document.getElementById('certModal');
const modalImg = document.getElementById('certModalImg');
function openCert(btn) {
  const card = btn.closest('[data-cert]');
  if (!card) return;
  modalImg.src = card.getAttribute('data-cert');
  modal.classList.add('open');
  document.body.style.overflow = 'hidden';
}
function closeCert() {
  modal.classList.remove('open');
  document.body.style.overflow = '';
  modalImg.src = '';
}
document.addEventListener('keydown', e => { if (e.key === 'Escape') closeCert(); });
/* ---------- CURSOR GLOW (DESKTOP) ---------- */
if (window.matchMedia('(pointer: fine)').matches) {
  const glow = document.createElement('div');
  Object.assign(glow.style, {
    position: 'fixed', width: '300px', height: '300px', borderRadius: '50%',
    background: 'radial-gradient(circle, rgba(247,37,133,0.06) 0%, transparent 70%)',
    pointerEvents: 'none', zIndex: '9999', transform: 'translate(-50%, -50%)',
    transition: 'left 0.15s ease, top 0.15s ease',
  });
  document.body.appendChild(glow);
  document.addEventListener('mousemove', e => { glow.style.left = e.clientX + 'px'; glow.style.top = e.clientY + 'px'; });
}
'@
Write-Host "  main.js written" -ForegroundColor Green
# ─────────────────────────────────────────────────────────────
# Git — commit & push
# ─────────────────────────────────────────────────────────────
Set-Location $repoRoot
git add index.html assets/css/style.css assets/js/main.js
git commit -m "Add certificate lightbox viewer + CCMA cert + all content updates
- Certificate modal: click View Certificate on any completed cert to see the full image
- Pressing Escape or clicking outside the modal closes it
- Image files expected in assets/images/certs/
- Add CCMA (NHA Certified Clinical Medical Assistant) as active professional certification
- Fix wording: Certifications -> Certificates throughout
- Hero stat: 9 Certificates
- Add AI Generalist Accelerator Program as In Progress"
$branch = git rev-parse --abbrev-ref HEAD
git push -u origin $branch
Write-Host ""
Write-Host "Done! Pushed to $branch" -ForegroundColor Green
Write-Host ""
Write-Host "NEXT STEP — add your certificate images:" -ForegroundColor Yellow
Write-Host "  assets\images\certs\cert-ccma.jpg            <- NHA CCMA certification" -ForegroundColor White
Write-Host "  assets\images\certs\cert-genai-mastermind.jpg" -ForegroundColor White
Write-Host "  assets\images\certs\cert-genai-engineering.jpg" -ForegroundColor White
Write-Host "  assets\images\certs\cert-genai-sprint.jpg" -ForegroundColor White
Write-Host "  assets\images\certs\cert-genai-bootcamp.jpg" -ForegroundColor White
Write-Host "  assets\images\certs\cert-power-bi.jpg" -ForegroundColor White
Write-Host ""
Write-Host "Then run:" -ForegroundColor Yellow
Write-Host "  git add assets/images/certs/" -ForegroundColor White
Write-Host "  git commit -m 'Add certificate images'" -ForegroundColor White
Write-Host "  git push" -ForegroundColor White