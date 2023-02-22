// Variables globales
let tablero = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0],
];

let jugadorActual = 1;
let nombreJugador1 = 'Jugador 1';
let nombreJugador2 = 'Máquina';

// Función que dibuja el tablero de juego
function dibujarTablero() {
    let html = '';
    for (let i = 0; i < 3; i++) {
        for (let j = 0; j < 3; j++) {
            let casilla = tablero[i][j];
            html +=
                '<div class="casilla" onclick="jugar(' + i + ',' + j + ')">';
            if (casilla === 1) {
                html += 'X';
            } else if (casilla === 2) {
                html += 'O';
            }
            html += '</div>';
        }
    }
    document.getElementById('tablero').innerHTML = html;
}

// Función que realiza una jugada
function jugar(fila, columna) {
    if (tablero[fila][columna] === 0) {
        tablero[fila][columna] = jugadorActual;
        dibujarTablero();
        if (hayGanador(jugadorActual)) {
            alert('¡' + getNombreJugadorActual() + ' ha ganado!');
            reiniciarJuego();
        } else if (hayEmpate()) {
            alert('¡Empate!');
            reiniciarJuego();
        } else {
            cambiarJugador();
            if (jugadorActual === 2) {
                jugarMaquina();
            }
        }
    }
}

// Función que cambia el jugador actual
function cambiarJugador() {
    jugadorActual = jugadorActual === 1 ? 2 : 1;
}

// Función que retorna el nombre del jugador actual
function getNombreJugadorActual() {
    return jugadorActual === 1 ? nombreJugador1 : nombreJugador2;
}

// Función que verifica si hay un ganador
function hayGanador(jugador) {
    for (let i = 0; i < 3; i++) {
        if (
            tablero[i][0] === jugador &&
            tablero[i][1] === jugador &&
            tablero[i][2] === jugador
        ) {
            return true;
        }
        if (
            tablero[0][i] === jugador &&
            tablero[1][i] === jugador &&
            tablero[2][i] === jugador
        ) {
            return true;
        }
    }
    if (
        tablero[0][0] === jugador &&
        tablero[1][1] === jugador &&
        tablero[2][2] === jugador
    ) {
        return true;
    }
    return !!(
        tablero[2][0] === jugador &&
        tablero[1][1] === jugador &&
        tablero[0][2] === jugador
    );
}

// Función que verifica si hay un empate
function hayEmpate() {
    for (let i = 0; i < 3; i++) {
        for (let j = 0; j < 3; j++) {
            if (tablero[i][j] === 0) {
                return false;
            }
        }
    }
    return true;
}

function reiniciarJuego() {
    tablero = [
        [0, 0, 0],
        [0, 0, 0],
        [0, 0, 0],
    ];
    jugadorActual = 1;
    dibujarTablero();
}

// Función que realiza una jugada de la máquina
function jugarMaquina() {
    // Se puede implementar una lógica simple para la jugada de la máquina,
    // en este caso simplemente se elegirá una casilla aleatoria que no haya sido ocupada aún
    let fila;
    let columna;
    do {
        fila = Math.floor(Math.random() * 3);
        columna = Math.floor(Math.random() * 3);
    } while (tablero[fila][columna] !== 0);
    jugar(fila, columna);
}

// Función que inicia el juego
function iniciarJuego() {
    dibujarTablero();
}

// Llamada a la función que inicia el juego
iniciarJuego();
