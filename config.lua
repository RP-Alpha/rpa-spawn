Config = {}

-- ============================================
-- PERMISSION CONFIGURATION
-- ============================================

-- Admin permissions (can manage spawn locations in-game)
Config.AdminPermissions = {
    groups = { 'admin', 'god' },
    jobs = {},
    minGrade = 0,
    onDuty = false,
    convar = 'rpa:admins',
    resourceConvar = 'admin'
}

-- ============================================
-- SPAWN LOCATIONS
-- ============================================

-- Note: Replace these placeholder image URLs with actual screenshots of each location
Config.Spawns = {
    ['mrpd'] = {
        label = "Mission Row PD",
        coords = vector4(428.23, -984.28, 29.76, 3.5),
        image = "https://i.imgur.com/iqJ2wLF.png", -- Mission Row PD
        -- Permissions for this spawn (uses rpa-lib HasPermission)
        permissions = {
            jobs = { 'police' },
            groups = {},
            minGrade = 0,
            onDuty = false
        }
    },
    ['pillbox'] = {
        label = "Pillbox Hill Medical",
        coords = vector4(298.6, -584.6, 43.26, 74.5),
        image = "https://i.imgur.com/6gT5xYg.png", -- Pillbox Hospital
        permissions = {
            jobs = { 'ambulance', 'ems' },
            groups = {},
            minGrade = 0,
            onDuty = false
        }
    },
    ['legion'] = {
        label = "Legion Square",
        coords = vector4(215.8, -856.3, 30.1, 340.5),
        image = "https://i.imgur.com/bTYmKbU.png", -- Legion Square
        permissions = nil -- nil = available to everyone
    },
    ['airport'] = {
        label = "Los Santos Airport",
        coords = vector4(-1037.7, -2737.7, 20.1, 330.0),
        image = "https://i.imgur.com/qkPBOLJ.png", -- Airport
        permissions = nil
    }
}

-- Allow spawning at last location
Config.AllowLastLocation = true
