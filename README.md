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
- ⚙️ **Configurable** - Easy to add custom spawn points

---

## 📥 Installation

1. Download the [latest release](https://github.com/RP-Alpha/rpa-spawn/releases/latest)
2. Extract to your `resources` folder
3. Add to `server.cfg`:
   ```cfg
   ensure rpa-spawn
   ```

---

## ⚙️ Configuration

Edit `config.lua` to add spawn locations:

```lua
Config.Spawns = {
    { label = "City", coords = vector4(x, y, z, h) },
    { label = "Airport", coords = vector4(x, y, z, h) }
}
```

---

## 📄 License

MIT License - see [LICENSE](LICENSE) for details.

<div align="center">
  <sub>Built with ❤️ by <a href="https://github.com/RP-Alpha">RP-Alpha</a></sub>
</div>
