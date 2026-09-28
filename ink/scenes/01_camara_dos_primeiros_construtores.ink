// ============================================================
// Cena de teste — A Câmara dos Primeiros Construtores
// Local: jardim de Nara das Hortas, Vila Dourada
// Contexto: Aldric e Varo descobrem a entrada oculta sob as
// hortas de Nara. Esta é uma cena isolada para validar o tom
// e a mecânica de Equilíbrio vs. Excesso em Ink.
// ============================================================

=== camara_dos_primeiros_construtores ===

O orvalho da manhã ainda pesa sobre as folhas de Nara quando Varo para de repente, as orelhas erguidas, o focinho baixo junto a um canteiro de raízes torcidas.

Você sente o que ele sente antes de entender por quê: um chamado fraco, quase um eco, subindo da terra como calor de pedra ao sol.

Nara observa da varanda, um cesto de ervas apoiado no quadril. Ela não parece surpresa.

+ [Perguntar a Nara o que há sob o jardim]
    -> perguntar_nara

+ [Cavar você mesmo, sem esperar por respostas]
    -> cavar_sozinho

+ [Deixar Varo guiar, seguindo o instinto dele em silêncio]
    -> seguir_varo


=== perguntar_nara ===
~ equilibrio++

Você se aproxima devagar e pergunta, sem rodeios. Nara pousa o cesto.

"Minha avó plantou essas raízes sobre algo que ela dizia ser mais velho que a própria vila," ela responde. "Disse que a terra guarda o que os primeiros construtores deixaram para trás — e que só deveria ser aberta por quem soubesse perguntar antes de tomar."

Ela olha para Varo, depois para você.

"Parece que ele já perguntou."

-> descida_conjunta


=== cavar_sozinho ===
~ excesso++

Você não espera. Ajoelha-se junto ao canteiro e começa a afastar a terra com as próprias mãos, sentindo a pressa de quem já decidiu que a resposta vale mais que a pergunta.

Nara solta um som seco, quase um aviso, mas não o impede.

"Sempre soube que dia haveria de vir alguém com pressa," ela diz baixo, mais para si mesma que para você.

A terra cede rápido demais, como se algo *quisesse* ser encontrado assim.

-> descida_conjunta


=== seguir_varo ===
~ vinculo_varo++

Você não faz perguntas. Deixa que o instinto de Varo puxe o seu, a presença dele guiando a sua mão até o ponto exato onde a terra soa oca sob os dedos.

Nara observa em silêncio, e há algo em seu rosto que parece respeito, não surpresa.

"Ele sabe encontrar o que já pertence a vocês dois," ela murmura.

-> descida_conjunta


=== descida_conjunta ===
~ camara_descoberta = true

Sob as raízes, uma escada de pedra desce em espiral, gasta por passos que ninguém viva ainda lembra. O ar que sobe dela é frio e antigo, carregado de um silêncio que parece esperar.

Lá embaixo, a Câmara dos Primeiros Construtores se abre: paredes talhadas com símbolos que nenhuma língua atual nomeia, e no centro, meio submerso em raízes que atravessaram a pedra, um fragmento pulsa com uma luz baixa e constante.

Varo se aproxima primeiro, rosnando não de ameaça, mas de reconhecimento.

{
    - equilibrio > excesso:
        Você sente que o fragmento responde ao seu passo com calma — como se o lugar reconhecesse alguém que sabe esperar.
    - excesso > equilibrio:
        Você sente o fragmento pulsar mais rápido conforme se aproxima, como se sua urgência despertasse algo que preferia continuar dormindo.
    - else:
        O fragmento pulsa de forma constante, indiferente à forma como você chegou até aqui.
}

+ [Tocar o fragmento]
    -> tocar_fragmento

+ [Observar sem tocar, e chamar Nara para descer]
    -> chamar_nara

+ [Recuar e selar a câmara novamente, por ora]
    -> recuar


=== tocar_fragmento ===
~ selo_tocado = true
~ excesso++

Seus dedos encostam na superfície fria, e por um instante você não está mais no seu próprio corpo — está em mil corpos antes do seu, todos tocando a mesma pedra, todos fazendo a mesma pergunta que nunca teve resposta completa.

Varo late uma vez, curto, puxando você de volta.

O fragmento continua pulsando, agora ligeiramente mais forte. Algo em você sabe que essa não foi uma decisão pequena.

-> fim_cena


=== chamar_nara ===
~ confianca_nara++
~ equilibrio++

Você recua um passo e chama por Nara. Ela desce devagar, apoiando-se na parede, e para diante do fragmento com uma expressão que mistura décadas de suspeita e um alívio silencioso.

"Minha avó tinha razão," ela diz. "Não era para ser aberto sozinho."

Ela não toca o fragmento. Apenas observa, e depois olha para você como quem decide, ali, confiar um pouco mais.

-> fim_cena


=== recuar ===
~ equilibrio++

Você dá um passo atrás, e depois outro. Alguma coisa ali pede tempo, não pressa — e você escolhe dar esse tempo, mesmo sem saber exatamente por quê.

Varo o segue sem hesitar, como se aprovasse.

A câmara permanece, silenciosa e intacta, esperando por uma decisão que ainda não precisa ser tomada hoje.

-> fim_cena


=== fim_cena ===

// Ponto de checagem de estado — útil para depurar no Inky.
// Remover ou comentar antes de encadear com a próxima cena.

---
Equilíbrio: {equilibrio} · Excesso: {excesso} · Vínculo com Varo: {vinculo_varo} · Confiança de Nara: {confianca_nara}
---

{camara_descoberta:A Câmara dos Primeiros Construtores foi descoberta.}
{selo_tocado:O fragmento foi tocado — uma marca que a história não vai esquecer.}

-> END
