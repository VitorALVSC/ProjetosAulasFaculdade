const Modal = document.querySelector('.modal-palpite')

const Palpite = document.querySelector('#palpite')
const Enviar = document.querySelector('#enviar')
const AbandonarPartida = document.querySelector('#abandonar')
const JogarNovamente = document.querySelector('#jogarNovamente')
const TentarNovamente = document.querySelector('#tentarNovamente')

const Sortear = document.querySelector('#sortear')
const Dificuldade = document.querySelector('#dificuldade')
const Iniciar = document.querySelector('#iniciar')

const ModalAlerta = document.querySelector('.modal-alerta')
const ModalAlertaDois = document.querySelector('.modal-alerta-dois')
const ModalAlertaTres = document.querySelector('.modal-alerta-tres')
const ModalAlertaQuatro = document.querySelector('.modal-alerta-quatro')
const ModalAlertaCinco = document.querySelector('.modal-alerta-cinco')
const ModalAlertaSeis = document.querySelector('.modal-alerta-seis')
const ModalVitoria = document.querySelector('.modal-vitoria')
const ModalDerrota = document.querySelector('.modal-derrota')

const NumEscolhido = document.querySelector('#numEscolhido')
const DifEscolhida = document.querySelector('#difEscolhida')
const Alertas = document.querySelector('#alertas')
const RespTentativas = document.querySelector('.tentativas')
const RespTentativasDois = document.querySelector('.tentativasdois')
const RespTentativasTres = document.querySelector('.tentativastres')

var DificuldadeTentativas = 0
var NumSorteado = 0

const Facil = 10
const Medio = 5
const Dificil = 3

const DifInvalida = document.querySelector('#difInvalida')
const PalpiteInvalido = document.querySelector('#palpInvalido')

//Realiza a abertura do modal e inicia a partida
Iniciar.addEventListener('click', () => {

    if (Sortear.value === "" || Dificuldade.value === "") {
        ModalAlerta.setAttribute('style', 'display:block')
        ModalAlertaDois.setAttribute('style', 'display:none')
    } else if (Dificuldade.value <= 0 || Dificuldade.value >= 4) {
        ModalAlertaDois.setAttribute('style', 'display:block')
        ModalAlerta.setAttribute('style', 'display:none')
    } else {
        Modal.setAttribute('style', 'display:block')
        Sortear.disabled = true
        Dificuldade.disabled = true
        Iniciar.disabled = true
        ModalAlerta.setAttribute('style', 'display:none')
        ModalAlertaDois.setAttribute('style', 'display:none')
        NumSorteado = parseInt(Math.random() * Sortear.value +1)
        NumEscolhido.innerHTML = Sortear.value
        DifEscolhida.innerHTML = Dificuldade.value
        console.log(NumSorteado)

        if (Dificuldade.value == 1) {
            DificuldadeTentativas = Facil
            console.log("10 tentativas!")
        } else if (Dificuldade.value == 2) {
            DificuldadeTentativas = Medio
            console.log("5 tentativas!")
        } else if (Dificuldade.value == 3) {
            DificuldadeTentativas = Dificil
            console.log("3 tentativas!")
        } else {
            DifInvalida
        }

    }
})

//Realiza o fechamento do modal e encerra a jogada
AbandonarPartida.addEventListener('click', () => {
    window.location.reload(true);
})

function enviarPalpite() {

    fetch('http://localhost:8080/jogo',
    {
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        method: "POST",
        body: JSON.stringify({
            palpite: Palpite.value
        })
    })
    .then(function (res) {console.log(res)})
    .catch(function (res) {console.log(res)})

    if (Palpite.value === "") {
        ModalAlertaTres.setAttribute('style', 'display:block')
        ModalAlertaCinco.setAttribute('style', 'display:none')
        ModalAlertaQuatro.setAttribute('style', 'display:none')
    } else {
        ModalAlertaTres.setAttribute('style', 'display:none')
    }

    adivinharNumero()
}

let Tentativas = 0

function limpaCampo() {
    Palpite.value = ""
}

function adivinharNumero() {

    PalpiteTeste = parseInt(document.querySelector('#palpite').value)

    if (PalpiteTeste < NumSorteado) {
        ModalAlertaQuatro.setAttribute('style', 'display:block')
        ModalAlertaCinco.setAttribute('style', 'display:none')

    } else if (PalpiteTeste > NumSorteado) {
        ModalAlertaCinco.setAttribute('style', 'display:block')
        ModalAlertaQuatro.setAttribute('style', 'display:none')
    } else if (PalpiteTeste === NumSorteado) {
        ModalVitoria.setAttribute('style', 'display:block')
    }

    Tentativas ++
    RespTentativas.innerHTML = Tentativas
    RespTentativasDois.innerHTML = Tentativas
    RespTentativasTres.innerHTML = Tentativas

    if (Tentativas === DificuldadeTentativas) {
        Alertas.innerHTML = PalpiteTeste
        ModalDerrota.setAttribute('style', 'display:block')
        Palpite.disabled = true
        Enviar.disabled = true
        AbandonarPartida.disabled = true
    }
}

//Envia o palpite e realiza a limpeza do campo
Enviar.addEventListener('click', () => {
    enviarPalpite()
    limpaCampo()
})

JogarNovamente.addEventListener('click', () => {
    window.location.reload(true);
})

TentarNovamente.addEventListener('click', () => {
    window.location.reload(true);
})
