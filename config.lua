Config = {}

-- Note: Replace these placeholder image URLs with actual screenshots of each location
Config.Spawns = {
    ['mrpd'] = {
        label = "Mission Row PD",
        coords = vector4(428.23, -984.28, 29.76, 3.5),
        image = "https://i.imgur.com/iqJ2wLF.png", -- Mission Row PD
        jobs = { 'police' } -- Optional: restrict to certain jobs
    },
    ['pillbox'] = {
        label = "Pillbox Hill Medical",
        coords = vector4(298.6, -584.6, 43.26, 74.5),
        image = "https://i.imgur.com/6gT5xYg.png", -- Pillbox Hospital
        jobs = { 'ambulance', 'ems' }
    },
    ['legion'] = {
        label = "Legion Square",
        coords = vector4(215.8, -856.3, 30.1, 340.5),
        image = "https://i.imgur.com/bTYmKbU.png" -- Legion Square
    },
    ['airport'] = {
        label = "Los Santos Airport",
        coords = vector4(-1037.7, -2737.7, 20.1, 330.0),
        image = "https://i.imgur.com/qkPBOLJ.png" -- Airport
    }
}

-- Allow spawning at last location
Config.AllowLastLocation = true
