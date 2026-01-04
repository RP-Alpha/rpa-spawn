# rpa-spawn

<div align="center">

![GitHub Release](https://img.shields.io/github/v/release/RP-Alpha/rpa-spawn?style=for-the-badge&logo=github&color=blue)
![GitHub commits](https://img.shields.io/github/commits-since/RP-Alpha/rpa-spawn/latest?style=for-the-badge&logo=git&color=green)
![License](https://img.shields.io/github/license/RP-Alpha/rpa-spawn?style=for-the-badge&color=orange)
![Downloads](https://img.shields.io/github/downloads/RP-Alpha/rpa-spawn/total?style=for-the-badge&logo=github&color=purple)

**Modern Spawn Selection System**

</div>

---

## ✨ Features

- 🎮 **NUI Selector** - Clean spawn location picker
- 🎬 **Skycam** - Cinematic camera transition on spawn
- 📍 **Last Location** - Option to spawn at previous logout position
- 🔐 **Job-Restricted Spawns** - Limit spawns by job/permissions
- ⚙️ **Configurable** - Easy to add custom spawn points

---

## 📦 Dependencies

- `rpa-lib` (Required)
- `rpa-appearance` (Recommended)

---

## 📥 Installation

1. Download the [latest release](https://github.com/RP-Alpha/rpa-spawn/releases/latest)
2. Extract to your `resources` folder
3. Add to `server.cfg`:
   ```cfg
   ensure rpa-lib
   ensure rpa-spawn
   ```

---

## ⚙️ Configuration

### Spawn Locations

```lua
Config.Spawns = {
    ['mrpd'] = {
        label = "Mission Row PD",
        coords = vector4(428.23, -984.28, 29.76, 3.5),
        image = "https://i.imgur.com/iqJ2wLF.png",
        permissions = {
            jobs = { 'police' },
            groups = {},
            minGrade = 0
        }
    },
    ['legion'] = {
        label = "Legion Square",
        coords = vector4(215.8, -856.3, 30.1, 340.5),
        image = "https://i.imgur.com/bTYmKbU.png",
        permissions = nil  -- Available to everyone
    }
}

Config.AllowLastLocation = true
```

---

## 📄 License

MIT License - see [LICENSE](LICENSE) for details.

<div align="center">
  <sub>Built with ❤️ by <a href="https://github.com/RP-Alpha">RP-Alpha</a></sub>
</div>
