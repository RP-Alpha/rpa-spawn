window.addEventListener('message', (event) => {
    if (event.data.action === 'open') {
        document.getElementById('app').classList.remove('hidden');
        setupSpawns(event.data.spawns);
    } else if (event.data.action === 'close') {
        document.getElementById('app').classList.add('hidden');
    }
});

function setupSpawns(spawns) {
    const grid = document.getElementById('spawn-grid');
    grid.innerHTML = '';

    for (const [key, spawn] of Object.entries(spawns)) {
        const card = document.createElement('div');
        card.className = 'spawn-card';
        card.innerHTML = `
            <i class="fa-solid fa-location-dot"></i>
            <span>${spawn.label}</span>
        `;
        card.onclick = () => selectSpawn(key);
        grid.appendChild(card);
    }
}

function selectSpawn(location) {
    fetch(`https://${GetParentResourceName()}/selectSpawn`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ location: location })
    });
}
