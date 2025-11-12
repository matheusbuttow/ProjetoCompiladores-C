#include <stdio.h>
#include "soma.h"
#include "subtrai.h"
#include "multiplica.h"
#include "divisao.h"
#include "modulo.h"
#include "potencia.h"

int main(void)
{
    int a = 6, b = 3;

    printf("Soma: %d\n", soma(a, b));
    printf("Subtracao: %d\n", subtrai(a, b));
    printf("Multiplicacao: %d\n", multiplica(a, b));
    printf("Divisao: %d\n", divisao(a, b));
    printf("Modulo: %d\n", modulo(a, b));
    printf("Potencia: %d\n", potencia(a, b));
    
    return 0;
}
