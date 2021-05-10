# WinReg
Classe para trabalhar com Registros do Windows com interfaces.

## Instalação

``` delphi
$boss install willhubner/WinReg
```

## Utilização

### Ler Registro
``` delphi
  TWinReg
    .New
    .OpenKey('MeuSoftware')
    .ReadString('username', Variable);
```

### Escrever Registro
``` delphi
  TWinReg
    .New
    .OpenKey('MeuSoftware')
    .WriteString('Reg1', IntegerValue)
    .WriteString('Reg2', StringValue);
 ```
