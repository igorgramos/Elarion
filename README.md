# Elarion

Jogo de ficção interativa baseado na campanha de RPG de mesa **Crônicas de Elarion — Saga de Aldric**, escrito em [Ink](https://www.inklestudios.com/ink/).

## Estrutura

```
ink/
  main.ink              # ponto de entrada — encadeia as cenas
  shared/
    variaveis.ink        # estado global (equilíbrio/excesso, vínculo, flags)
  scenes/
    01_camara_dos_primeiros_construtores.ink   # cena de teste
```

Cada cena é um arquivo `.ink` isolado, incluído em `main.ink`. Isso mantém o repositório navegável conforme a história cresce.

## Como testar

1. Instale o [Inky](https://github.com/inkle/inky/releases), o editor/executor oficial de Ink (Windows/Mac).
2. Abra `ink/main.ink` no Inky.
3. Jogue a cena direto no painel de preview à direita.

Não é necessário compilar nada manualmente — o Inky observa o arquivo e recompila a cada alteração.

## Convenções

- Texto e nomes de variáveis em português, consistentes com o cânon do vault Obsidian da campanha.
- O eixo moral **Equilíbrio vs. Excesso** é rastreado via as variáveis `equilibrio` e `excesso` em `shared/variaveis.ink` — nunca simplificar para bem/mal.
- Cada cena termina com um bloco de depuração mostrando o estado das variáveis, útil durante o desenvolvimento. Remover ou comentar esse bloco ao aproximar de uma versão "final" de cada cena.
- Flags booleanas (`camara_descoberta`, `selo_tocado`, etc.) marcam eventos que outras cenas futuras podem consultar.

## Próximos passos possíveis

- Encadear a próxima cena do arco de Vila Dourada.
- Extrair um mapa de cenas (fluxograma) conforme o número de arquivos cresce.
- Considerar exportar para web via [inkjs](https://github.com/y-lohse/inkjs) quando houver uma versão jogável fora do Inky.
