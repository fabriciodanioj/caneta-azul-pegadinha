## O que é isso?

O _Caneta Azul_ é uma aplicação escrita sobre o NodeJS que permite que você
envie o hit caneta azul para seus amigos via chamada telefônica e simulando o
número telefônico de pessoas conhecidas.

## Como funciona?

Utilizamos a API de chamadas da _TotalVoice_. Você precisa criar uma conta
para poder utilizar. Quando você cria uma conta, você obtém, gratuitamente, para
fins de testes, R$ 3,00 para utilizar. Cada envio do hit debita R$ 0,35.

[Clique aqui para criar sua conta](https://api2.totalvoice.com.br/painel/signup.php)

Você receberá um token de acesso, que poderá passar para a nossa API para
fazer as chamadas. Fique tranquilo, todo o código é aberto e não a salvaremos.

## Do que eu preciso?

Do `node` acima da **versão 6**.

## Instalação

`sudo npm install -g caneta-azul`

Você terá disponível globalmente o comando `caneta-azul`.

### Parâmetros

| Parâmetro | Obrigatório        | Descrição                                                |
| --------- | ------------------ | -------------------------------------------------------- |
| `--token` | :white_check_mark: | Seu token de acesso do TotalVoice                        |
| `--de`    |                    | Quem está enviando o hit? Qualquer número telefônico!    |
| `--para`  | :white_check_mark: | Quem é a vítima do hit?                                  |
| `--sms`   |                    | Se definido, será enviado um SMS ao invés de uma chamada |

### Exemplo

`caneta-azul --de=47998569631 --para=47996326548 --token=ade6a19ecee14577634f66af105eb68c`

Observações:

- Somente chamadas brasileiras. Omita o `+55`
- A função de SMS é _alpha_. Por enquanto, funciona somente para o número cadastrado

A vítima receberá uma ligação e, quando atender, ouvirá o delicioso gemido do zap!

### Cadê o áudio?

O arquivo encontra-se [neste link](http://prtnsrc.com/2545.mp3). Abra por sua conta e risco!

## Docker

Para quem quer rodar via Docker

```
$ docker build -t caneta-azul -f Dockerfile .
```

```
$ docker run --rm --name caneta-azul -e DE={{telefone}} -e PARA={{telefone}} -e TOKEN={{token}} caneta-azul
```

Os autores deste projeto não possuem qualquer ligação com a TotalVoice.
TotalVoice é uma marca registrada.
