/*
ESERCIZIO 1:
    Implementa la funzione "fattoriale"
*/

/**
 * fattoriale prende come argomento un intero n
 * e restituisce il suo fattoriale, ossia il prodotto degli interi compresi fra 1 e n.
 * @param n l'intero di cui calcolare il fattoriale
 */
function fattoriale(n: number): number {
    // scrivi qui il tuo codice
    n = parseInt(n, 10);
    if(n >= 0){
        if(n === 0){
            return 1;
        }
        if(n === 1){
            return n;
        }
        return n * fattoriale(n - 1);
    }else{
        throw new Error('n deve essere un numero positivo')
    }
}

/*
ESERCIZIO 2:
    Correggere la funzione "cercaFinoA" in modo che funzioni in accordo con la sua documentazione.
*/

/**
 * cercaFinoA cerca "corrispondenza" fra i primi "finoA" item di "lista" e restituisce la posizione
 * del primo item corrispondente o -1 se non ne trova.
 * @param lista array di stringhe in cui cercare
 * @param corrispondenza stringa da cercare
 * @param finoA numero di elementi della lista in cui cercare prima di fermarsi
 */
function cercaFinoA(lista: string[],corrispondenza: string, finoA: number): number {
    for (var i = 0; i < finoA; i++) {
        let item = lista[i];
        if(item == corrispondenza) {
            return i
        }
    }
    return -1;
}
