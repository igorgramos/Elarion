// ============================================================
// Crônicas de Elarion — Variáveis globais de estado
// Estas variáveis são compartilhadas por todas as cenas do jogo.
// Cada arquivo de cena deve INCLUDE este arquivo.
// ============================================================

// Eixo moral central da campanha: Equilíbrio vs. Excesso.
// Não é bem/mal — mede a tendência do jogador a agir com
// contenção e respeito pelo fluxo natural (equilibrio) ou a
// forçar, tomar e impor soluções (excesso).
VAR equilibrio = 0
VAR excesso = 0

// Vínculo entre Aldric e o lobo-espírito Varo. Sobe com decisões
// que respeitam o instinto e a presença de Varo.
VAR vinculo_varo = 0

// Confiança de NPCs específicos, usada para desbloquear diálogo
// e reações futuras.
VAR confianca_nara = 0

// Flags de progresso — o que já foi descoberto ou decidido.
VAR camara_descoberta = false
VAR selo_tocado = false
