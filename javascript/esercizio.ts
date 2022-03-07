/*
ESERCIZIO 1:
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
    for (let i = 0; i <= finoA; i++) {
        let item = lista[i];
        if(item == corrispondenza) {
            return i
        }
        return -1;
    }
    
}

/*
ESERCIZIO 2:
    Implementa la funzione "fattoriale"
*/

/**
 * fattoriale prende come argomento un intero n
 * e restituisce il suo fattoriale (n!), ossia il prodotto degli interi compresi fra 1 e n.
 * Es: per n = 5 => n! = 1*2*3*4*5
 * per n = 8 => n! = 1*2*3*4*5*6*7*8
 * @param n l'intero di cui calcolare il fattoriale
 */
function fattoriale(n: number): number {
    for (let i = 0; i <= n; i++) {
        let array = [];
        array.push= i;
    }
    

    

   
}


