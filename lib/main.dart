<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>أفضل لانشر عربي - Minecraft Launcher</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --bg-dark: #0b1210;
            --card-bg: #13201d;
            --card-hover: #1a2c28;
            --accent-green: #10b981;
            --accent-green-hover: #059669;
            --text-main: #ffffff;
            --text-muted: #9ca3af;
            --border-color: #1e332e;
        }

        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Segoe UI', Tahoma, sans-serif; }
        body { background-color: var(--bg-dark); color: var(--text-main); height: 100vh; overflow: hidden; }

        .app-container { display: flex; height: 100vh; width: 100vw; }

        /* Sidebar */
        .sidebar { width: 240px; background-color: #070d0b; padding: 18px; display: flex; flex-direction: column; border-left: 1px solid var(--border-color); }
        .brand { display: flex; align-items: center; gap: 10px; margin-bottom: 25px; }
        .logo-icon { font-size: 28px; color: var(--accent-green); }
        .brand-text h2 { font-size: 16px; color: #ffffff; font-weight: bold; }
        .brand-text p { font-size: 10px; color: var(--text-muted); }

        .nav-menu { display: flex; flex-direction: column; gap: 6px; flex: 1; }
        .nav-item { display: flex; align-items: center; gap: 10px; padding: 10px 14px; color: var(--text-muted); text-decoration: none; border-radius: 8px; font-size: 13px; transition: 0.2s; }
        .nav-item:hover, .nav-item.active { background-color: var(--card-bg); color: var(--text-main); }
        .nav-item.active { border-right: 3px solid var(--accent-green); }
        .badge { background-color: #6366f1; color: white; font-size: 9px; padding: 2px 6px; border-radius: 10px; margin-right: auto; }

        /* User Info */
        .user-profile { background-color: var(--card-bg); padding: 10px; border-radius: 8px; border: 1px solid var(--border-color); }
        .user-info { display: flex; align-items: center; gap: 10px; margin-bottom: 8px; }
        .avatar { width: 32px; height: 32px; border-radius: 4px; }
        .username { font-size: 13px; font-weight: bold; display: block; }
        .status-dot { font-size: 10px; color: var(--accent-green); }
        .logout-btn { width: 100%; background: transparent; border: 1px solid #ef4444; color: #ef4444; padding: 5px; border-radius: 6px; cursor: pointer; font-size: 11px; }

        /* Main Content */
        .main-content { flex: 1; display: flex; flex-direction: column; overflow-y: auto; }
        .top-bar { display: flex; justify-content: space-between; align-items: center; padding: 12px 25px; border-bottom: 1px solid var(--border-color); }
        .search-box { background-color: var(--card-bg); padding: 6px 14px; border-radius: 20px; display: flex; align-items: center; gap: 8px; width: 320px; border: 1px solid var(--border-color); }
        .search-box input { background: transparent; border: none; color: white; outline: none; width: 100%; font-size: 12px; }
        .top-actions { display: flex; align-items: center; gap: 12px; font-size: 13px; }
        .status-badge { color: var(--accent-green); font-size: 11px; }

        .content-body { padding: 20px; }
        .tab-content { display: none; }
        .tab-content.active { display: block; }

        /* Hero Banner */
        .hero-banner { background: linear-gradient(to top, rgba(11, 18, 16, 0.95), transparent), url('https://images.unsplash.com/photo-1627856013091-fed6e4e30025?q=80&w=1000') center/cover; height: 240px; border-radius: 12px; padding: 20px; display: flex; justify-content: space-between; align-items: flex-end; margin-bottom: 20px; border: 1px solid var(--border-color); }
        .hero-overlay h1 { font-size: 26px; margin-bottom: 6px; }
        .hero-overlay p { color: var(--text-muted); font-size: 12px; margin-bottom: 15px; }
        .play-btn { background-color: var(--accent-green); color: white; border: none; padding: 10px 28px; font-size: 15px; font-weight: bold; border-radius: 8px; cursor: pointer; }

        .version-card { background: rgba(19, 32, 29, 0.9); backdrop-filter: blur(8px); padding: 12px; border-radius: 10px; border: 1px solid var(--border-color); }
        .version-dropdown { background: #070d0b; color: white; border: 1px solid var(--border-color); padding: 4px 8px; border-radius: 4px; font-size: 12px; }

        /* Grid Cards */
        .section-header { display: flex; justify-content: space-between; align-items: center; margin: 18px 0 10px 0; }
        .section-header a { color: var(--accent-green); text-decoration: none; font-size: 12px; }
        .cards-grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(200px, 1fr)); gap: 12px; }
        .card { background-color: var(--card-bg); border-radius: 10px; padding: 10px; border: 1px solid var(--border-color); }
        .card img { width: 100%; height: 100px; object-fit: cover; border-radius: 6px; margin-bottom: 8px; }
        .card h4 { font-size: 13px; margin-bottom: 4px; }
        .card-footer { display: flex; justify-content: space-between; align-items: center; margin-top: 8px; }
        .download-btn { background-color: var(--accent-green); color: white; border: none; padding: 5px 12px; border-radius: 4px; cursor: pointer; font-size: 11px; }

        /* Right Sidebar */
        .news-sidebar { width: 260px; background-color: #070d0b; padding: 18px; border-right: 1px solid var(--border-color); display: flex; flex-direction: column; gap: 15px; }
        .news-card, .promo-card, .discord-card { background-color: var(--card-bg); padding: 12px; border-radius: 10px; border: 1px solid var(--border-color); font-size: 12px; }
        .news-badge { background-color: #8b5cf6; font-size: 9px; padding: 2px 5px; border-radius: 3px; }
        .download-app-btn { width: 100%; background: var(--accent-green); color: white; border: none; padding: 8px; border-radius: 6px; margin-top: 8px; cursor: pointer; font-weight: bold; }
        .discord-btn { width: 100%; background: #5865F2; color: white; border: none; padding: 8px; border-radius: 6px; margin-top: 8px; cursor: pointer; font-weight: bold; }
        
        .version-row { background: var(--card-bg); padding: 10px 15px; border-radius: 6px; margin-bottom: 8px; display: flex; justify-content: space-between; align-items: center; border: 1px solid var(--border-color); }
    </style>
</head>
<body>
    <div class="app-container">
        <!-- القائمة الجانبية -->
        <aside class="sidebar">
            <div class="brand">
                <i class="fa-solid fa-cube logo-icon"></i>
                <div class="brand-text">
                    <h2>أفضل لانشر عربي</h2>
                    <p>لعبة ماينكرافت بأسهل طريقة</p>
                </div>
            </div>

            <nav class="nav-menu">
                <a href="#" class="nav-item active" onclick="switchTab('home')"><i class="fa-solid fa-house"></i> الرئيسية</a>
                <a href="#" class="nav-item" onclick="switchTab('versions')"><i class="fa-solid fa-gamepad"></i> الإصدارات (المشغلات)</a>
                <a href="#" class="nav-item" onclick="switchTab('mods')"><i class="fa-solid fa-puzzle-piece"></i> المودات (Forge)</a>
                <a href="#" class="nav-item" onclick="switchTab('modpacks')"><i class="fa-solid fa-box-open"></i> مود باك <span class="badge">جديد</span></a>
                <a href="#" class="nav-item"><i class="fa-solid fa-cart-shopping"></i> المتجر</a>
                <a href="#" class="nav-item"><i class="fa-solid fa-gear"></i> الإعدادات</a>
            </nav>

            <div class="user-profile">
                <div class="user-info">
                    <img src="https://mc-heads.net/avatar/Player" alt="Avatar" class="avatar">
                    <div>
                        <span class="username">Player</span>
                        <span class="status-dot">● متصل</span>
                    </div>
                </div>
                <button class="logout-btn">تسجيل الخروج</button>
            </div>
        </aside>

        <!-- المحتوى الرئيسي -->
        <main class="main-content">
            <header class="top-bar">
                <div class="search-box">
                    <i class="fa-solid fa-magnifying-glass"></i>
                    <input type="text" placeholder="ابحث عن مود باك أو مود (Forge)...">
                </div>
                <div class="top-actions">
                    <span class="status-badge"><i class="fa-solid fa-circle"></i> أونلاين</span>
                    <i class="fa-solid fa-gear"></i>
                    <i class="fa-solid fa-xmark"></i>
                </div>
            </header>

            <div class="content-body">
                <!-- الصفحة الرئيسية -->
                <section id="homeView" class="tab-content active">
                    <div class="hero-banner">
                        <div class="hero-overlay">
                            <h1>استمتع بتجربة ماينكرافت أفضل</h1>
                            <p>مع أفضل لانشر عربي - سريع، آمن، ومليء بالمميزات</p>
                            <button class="play-btn" onclick="launchGame()"><i class="fa-solid fa-play"></i> تشغيل اللعبة</button>
                        </div>
                        <div class="version-card">
                            <span style="font-size: 10px; color: var(--text-muted);">الإصدار الحالي</span><br>
                            <select id="versionSelect" class="version-dropdown">
                                <option value="1.21.10">1.21.10 (أحدث إصدار)</option>
                                <option value="1.20.1 Forge">1.20.1 (Forge)</option>
                                <option value="1.12.2 Forge">1.12.2 (Forge)</option>
                                <option value="1.8.9">1.8.9 (PvP)</option>
                            </select>
                        </div>
                    </div>

                    <div class="section-header">
                        <h3><i class="fa-solid fa-box-open"></i> مود باك (Modpacks)</h3>
                        <a href="#" onclick="switchTab('modpacks')">عرض الكل</a>
                    </div>
                    <div class="cards-grid" id="featuredModpacks"></div>
                </section>

                <!-- صفحة الإصدارات -->
                <section id="versionsView" class="tab-content">
                    <h2>جميع إصدارات ماينكرافت والمشغلات (Forge / Fabric / Classic)</h2>
                    <br>
                    <div id="allVersionsList"></div>
                </section>

                <!-- صفحة المودات -->
                <section id="modsView" class="tab-content">
                    <h2>مكتبة مودات Forge و Modrinth</h2>
                    <br>
                    <div class="cards-grid" id="allModsList"></div>
                </section>

                <!-- صفحة المود باك -->
                <section id="modpacksView" class="tab-content">
                    <h2>مود باكات جاهزة (Forge & Modrinth)</h2>
                    <br>
                    <div class="cards-grid" id="allModpacksList"></div>
                </section>
            </div>
        </main>

        <!-- الأخبار الشريط الجانبي -->
        <aside class="news-sidebar">
            <div class="news-card">
                <h3>أحدث الأخبار</h3>
                <br>
                <span class="news-badge">تحديث</span>
                <h4>تحديث 1.21</h4>
                <p>مغامرات جديدة ومميزات واكتشافات لا تنتهي!</p>
            </div>

            <div class="promo-card">
                <h3>اللعب على جميع الأجهزة</h3>
                <p>تشغيل اللانشر على الكمبيوتر والهاتف</p>
                <button class="download-app-btn"><i class="fa-solid fa-download"></i> تحميل التطبيق</button>
            </div>

            <div class="discord-card">
                <h3>انضم إلى مجتمعنا</h3>
                <p>تواصل مع اللاعبين والدعم الفني</p>
                <button class="discord-btn"><i class="fa-brands fa-discord"></i> دخول الديسكورد</button>
            </div>
        </aside>
    </div>

    <script>
        const modpacks = [
            { title: "RLCraft", ver: "1.12.2 (Forge)", img: "https://media.forgecdn.net/attachments/258/893/636988880315752107.png" },
            { title: "All The Mods 9", ver: "1.20.1 (Forge)", img: "https://media.forgecdn.net/attachments/542/367/atm9.png" },
            { title: "SkyFactory 5", ver: "1.20.1 (Forge)", img: "https://media.forgecdn.net/attachments/312/882/skyfactory.png" }
        ];

        const modsData = [
            { title: "OptiFine", ver: "Forge / Fabric", desc: "تحسين الأداء والجرافيكس" },
            { title: "Just Enough Items (JEI)", ver: "Forge 1.20.1", desc: "عرض وصفات الصنع والموارد" },
            { title: "Biomes O' Plenty", ver: "Forge 1.20.1", desc: "إضافة عوالم ومناطق جغرافية جديدة" },
            { title: "JourneyMap", ver: "Forge / Fabric", desc: "خريطة تفاعلية مصغرة" }
        ];

        const versions = [
            { name: "Minecraft 1.21.10", type: "Release" },
            { name: "Minecraft 1.20.1 (Forge)", type: "Modded Engine" },
            { name: "Minecraft 1.16.5 (Forge)", type: "Modded Engine" },
            { name: "Minecraft 1.12.2 (Forge)", type: "Modded Engine" },
            { name: "Minecraft 1.8.9 (PvP)", type: "Release" },
            { name: "Minecraft Alpha v1.2.6", type: "Classic Era" },
            { name: "Minecraft Classic rd-132211", type: "First Public Version" }
        ];

        document.addEventListener("DOMContentLoaded", () => {
            let mpHtml = "";
            modpacks.forEach(m => {
                mpHtml += `
                    <div class="card">
                        <img src="${m.img}" onerror="this.src='https://via.placeholder.com/200x100?text=Modpack'">
                        <h4>${m.title}</h4>
                        <p style="font-size:11px; color:var(--text-muted);">${m.ver}</p>
                        <div class="card-footer">
                            <button class="download-btn" onclick="alert('جاري تحميل ${m.title}')">تحميل</button>
                        </div>
                    </div>`;
            });
            document.getElementById("featuredModpacks").innerHTML = mpHtml;
            document.getElementById("allModpacksList").innerHTML = mpHtml;

            let modsHtml = "";
            modsData.forEach(m => {
                modsHtml += `
                    <div class="card">
                        <h4>${m.title}</h4>
                        <p style="font-size:11px; color:var(--text-muted);">${m.ver}</p>
                        <p style="font-size:11px; margin-top:5px;">${m.desc}</p>
                        <div class="card-footer">
                            <button class="download-btn" onclick="alert('تم تثبيت المود')">تثبيت</button>
                        </div>
                    </div>`;
            });
            document.getElementById("allModsList").innerHTML = modsHtml;

            let vHtml = "";
            versions.forEach(v => {
                vHtml += `
                    <div class="version-row">
                        <div><strong>${v.name}</strong> <span style="font-size:11px; color:var(--text-muted);">(${v.type})</span></div>
                        <button class="download-btn" onclick="alert('تم اختيار ${v.name}')">اختيار</button>
                    </div>`;
            });
            document.getElementById("allVersionsList").innerHTML = vHtml;
        });

        function switchTab(id) {
            document.querySelectorAll('.tab-content').forEach(t => t.classList.remove('active'));
            document.querySelectorAll('.nav-item').forEach(i => i.classList.remove('active'));
            document.getElementById(id + 'View').classList.add('active');
        }

        function launchGame() {
            alert("جاري تشغيل لعبة ماينكرافت...");
        }
    </script>
</body>
</html>