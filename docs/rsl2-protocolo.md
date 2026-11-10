# Protocolo da RSL 2 — Desenvolvimento de software com LLMs e agentes de IA

**Versão:** 0.7 (rascunho para revisão do autor e do orientador) · **Data:** 10/11/2026

**Revisores:** Matheus Perillo (R1) e orientador (R2)

> **Verificação das referências.** A forma de verificação de cada referência está em [referencias-verificadas.md](referencias-verificadas.md).
> - **Conferidas na página do editor:** todas as referências deste protocolo, em nova verificação feita em 06/11/2026.
> - **Fundamentação do texto (09/11/2026):** cada escolha de método e cada afirmação cita a fonte e o local (item, seção ou página) do trecho que a sustenta, conferido no texto completo. Os poucos trechos tirados só do resumo na página do editor estão indicados em [referencias-verificadas.md](referencias-verificadas.md).

## Histórico de versões

| Versão | Data | Mudança |
|---|---|---|
| 0.1 | 28/10/2026 | Primeiro rascunho. Revisão sistemática completa, de estudos primários, com o mesmo método da RSL 1 |
| 0.2 | 06/11/2026 | Nova verificação de todas as referências e fontes. Correções: a SEGRESS é diretriz de relato; a busca exploratória por "AI-First" foi refeita e o resultado mudou; o período coberto por Mohamed, Assi e Guizani foi completado; a ACM DL só tem busca avançada na versão Premium |
| 0.3 | 09/11/2026 | Revisão do texto do protocolo: cada escolha de método passa a citar a fonte e o trecho que a sustentam. Entram o PRISMA 2020 E&E, Polanin et al. (2019) e Chen, Zaharia e Zou (2024). Saem afirmações sem fonte (limite de 4 páginas, nota de corte 2, número fixo de artigos de controle, "métricas heterogêneas" e "preprints concentram as evidências", substituídas por trechos de Mohamed et al. e Hou et al.). A lacuna passa a se apoiar no recorte declarado de cada revisão |
| 0.4 | 09/11/2026 | A avaliação de qualidade passa a usar os critérios de Dybå e Dingsøyr (2008), conferidos no texto completo, no lugar do checklist próprio; o item da versão do modelo vira AQ11 |
| 0.5 | 09/11/2026 | AI-First definido como processo. Piloto no Scopus: a string de 11.236 registros foi reformulada (seção 8.1) e passou a recuperar os 5 controles indexados (2.231 registros). Controles primários definidos. Sem filtro de idioma nas bases; só artigos de periódico e de evento. Semiautomação do Rayyan na triagem |
| 0.6 | 09/11/2026 | Piloto no Web of Science Core Collection (1.314 registros, os 4 controles indexados recuperados) no IEEE Xplore (1.080 registros, o único controle indexado recuperado) e na ACM DL (1.007 registros, os 5 controles indexados recuperados, inclusive Ziegler et al.). Strings das três bases registradas. A busca avançada da ACM DL ficou disponível pelo Portal CAPES |
| 0.7 | 10/11/2026 | Decisões do autor: entram o SBES (2024 em diante) e o JSERD, que não está no Scopus; saem os estudos só com estudantes (CE4); R2 confere a extração de todos os estudos; protocolo sem registro externo. A string ganhou o ramo de custo (seção 8.1), porque não recuperava o controle de custo (Coignion, Quinton e Rouvoy, 2025). Piloto refeito nas quatro bases: Scopus 3.148, Web of Science 1.909, IEEE Xplore 1.577 e ACM DL 1.413, com o controle de custo recuperado nas quatro |

## 1. Tipo de estudo e referenciais metodológicos

Revisão sistemática completa de estudos primários, com o mesmo método da [RSL 1](rsl1-protocolo.md):

- **Relato:** PRISMA 2020 (PAGE et al., 2021a) e PRISMA-S (RETHLEFSEN et al., 2021)
- **Condução:** documento de explicação e elaboração do PRISMA 2020 (PAGE et al., 2021b), que descreve, item a item, as formas de conduzir cada etapa
- **Relato em engenharia de software:** SEGRESS (KITCHENHAM; MADEYSKI; BUDGEN, 2023)
- **Busca complementar:** *snowballing* iterativo (WOHLIN, 2014)

## 2. Terminologia: o que o TCC chama de "AI-First"

Numa busca exploratória por título na Crossref (06/11/2026, 20 primeiros resultados para "AI-First" e para "AI-first software development"), o termo apareceu no título de 12 registros: seis livros e capítulos (gestão, negócios e ciência política), três preprints do SSRN (dois sobre desenvolvimento de software) e três artigos de periódico: um sobre política de IA, um de medicina e um sobre aplicações com LLMs, na *Iconic Research and Engineering Journals*. O único desses artigos ligado a software ("Architecting AI-First Applications: Software Development Patterns for LLM-Integrated Systems at Scale") usa "AI-First" para a aplicação construída com LLMs, e não para o processo de desenvolvimento; os dois textos sobre desenvolvimento de software são preprints, sem revisão por pares. Por isso:

- **Definição operacional no TCC:** "desenvolvimento AI-First" é o desenvolvimento de software em que assistentes e agentes baseados em modelos de linguagem de grande porte (LLMs) são o meio principal de produzir artefatos (código, testes, documentação), sob supervisão humana.
- **Termos usados na busca:** a string usa os termos das três revisões da seção 3 (LLMs, em Hou et al.; agentes baseados em LLMs, em Liu et al.; assistentes baseados em LLMs, em Mohamed, Assi e Guizani), além de IA generativa. "AI-First" não entra na busca.
- **Recorte:** AI-First é tratado como **processo** (como o software é desenvolvido com IA). A IA dentro do produto, o buscador, é tema da RSL 1 (QP2) e das normas ISO/IEC 42001, 23894 e 27090.

## 3. Contexto e justificativa

Três revisões recentes, publicadas na *ACM Transactions on Software Engineering and Methodology* (TOSEM), mostram o tamanho e os limites da literatura:

- **Hou et al. (2024)** analisaram 395 artigos, de janeiro de 2017 a janeiro de 2024, sobre como LLMs são aplicados a tarefas de engenharia de software. A primeira das quatro questões de pesquisa classifica os LLMs usados.
- **Liu et al. (2026)** reuniram 124 artigos sobre agentes baseados em LLMs na engenharia de software e os classificaram pelas perspectivas de engenharia de software e de agentes.
- **Mohamed, Assi e Guizani (2026)** fizeram uma revisão e um mapeamento de 39 estudos revisados por pares, publicados de janeiro de 2014 a dezembro de 2024, sobre o impacto de assistentes baseados em LLMs na produtividade dos desenvolvedores. Eles concluem que ainda não se sabe se esses assistentes melhoram ou pioram a qualidade do código, porque os estudos trazem resultados contraditórios.

**Lacuna que esta revisão ataca:** cada uma das três revisões tem um recorte próprio (aplicações de LLMs a tarefas de engenharia de software, agentes e produtividade), e a revisão sobre produtividade cobre estudos só até dezembro de 2024. Esta revisão junta, num mesmo corpus, as dimensões das QP1 a QP5:
- produtividade e qualidade;
- segurança;
- custo;
- processo e governança.

Ela também inclui estudos publicados depois de 2024. Os resultados orientam o processo de desenvolvimento do próprio buscador (capítulo de metodologia do TCC) e o tema de FinOps.

## 4. Objetivo

Identificar e sintetizar as evidências empíricas, publicadas em veículos revisados por pares, sobre os efeitos do uso de assistentes e agentes baseados em LLMs no desenvolvimento de software, nas dimensões de produtividade, qualidade, segurança, custo e processo.

## 5. Escopo (PICOC)

O escopo segue a estrutura PICO, que o PRISMA 2020 indica para formular os objetivos de uma revisão (PAGE et al., 2021b, item 4), acrescida do contexto (C).

| Elemento | Definição |
|---|---|
| **População** | Desenvolvimento de software e quem o faz: desenvolvedores, equipes e projetos (industriais, de código aberto ou acadêmicos). Estudos em que todos os participantes são estudantes ficam de fora (CE4) |
| **Intervenção** | Uso de assistentes e agentes baseados em LLMs em atividades de desenvolvimento (geração, revisão, teste, depuração, manutenção e documentação de código), em qualquer nível de autonomia |
| **Comparação** | Desenvolvimento sem IA, ou com outra ferramenta, modelo ou nível de autonomia, quando o estudo fizer essa comparação |
| **Resultados** | Produtividade, qualidade do software, segurança, custo e mudanças no processo e na governança |
| **Contexto** | Indústria, código aberto e academia |

## 6. Questões de pesquisa

| ID | Questão | Motivação |
|---|---|---|
| **QP1** | Quais efeitos sobre a **produtividade** dos desenvolvedores são relatados, e com quais métricas? | Expectativa realista de ganho no projeto do TCC |
| **QP2** | Quais efeitos sobre a **qualidade** do software (defeitos, manutenibilidade, testes, legibilidade) são relatados? | Práticas de qualidade no desenvolvimento do buscador |
| **QP3** | Quais **vulnerabilidades e riscos de segurança** o código gerado e os agentes introduzem, e quais mitigações foram avaliadas? | Requisitos de segurança e revisão de código (ligação com a ISO/IEC 27090) |
| **QP4** | Quais **custos** (financeiros, computacionais, de tokens, de energia) são relatados, e como são medidos? | Base empírica para o tema de FinOps |
| **QP5** | Como o **processo** de engenharia e a **governança** mudam (papéis, revisão humana, etapas do ciclo de vida, políticas de uso)? | Processo de desenvolvimento do TCC (ligação com a ISO/IEC 42001 e a 5338) |
| **QP6** | Quais ferramentas, modelos e **níveis de autonomia** (completar código, assistente conversacional, agente autônomo) foram estudados, e em quais contextos? | Mapeamento do corpus; contextualiza QP1 a QP5 |

## 7. Fontes de busca

### 7.1 Bases internacionais

As mesmas da RSL 1: Scopus, IEEE Xplore, ACM Digital Library e Web of Science, acessadas pelo Portal de Periódicos CAPES (CAFe/UnB) ou em acesso aberto. Na ACM DL, a busca avançada só existe na versão Premium (ver RSL 1, seção 6.1). Pelo Portal CAPES, ela abre e pesquisa o *ACM Guide to Computing Literature* (piloto de 09/11/2026).

### 7.2 Fontes nacionais

Mesmo critério da RSL 1 (seção 6.2): revisão por pares declarada na página oficial e artigos publicados sobre o tema (um exemplo de cada na tabela, encontrado na Crossref em 09/11/2026).

| Fonte | Editora | Revisão por pares | Indexação verificada | Por que entra |
|---|---|---|---|---|
| [Anais do SBES](https://sol.sbc.org.br/index.php/sbes) (Simpósio Brasileiro de Engenharia de Software), edições de 2024 em diante | SBC | Duplo-anônima, com pelo menos três membros do comitê de programa por artigo, segundo a [chamada da trilha de pesquisa de 2026](https://cbsoft.sbc.org.br/2026/en/symposiums/sbes/pesquisa/call) | DOI próprio (10.5753) | Artigos sobre código gerado por LLMs, por exemplo "Detecting Test Smells in Python Test Code Generated by LLM: An Empirical Study with GitHub Copilot" (DOI 10.5753/sbes.2024.3561) |
| [Journal of Software Engineering Research and Development (JSERD)](https://journals-sol.sbc.org.br/index.php/jserd) | SBC | *Single-anonymous*, com pelo menos dois revisores, segundo a [página de submissões](https://journals-sol.sbc.org.br/index.php/jserd/about/submissions) | DOI próprio (10.5753); não está no DOAJ nem no Scopus (consultas pelo ISSN 2195-1721); Qualis A4 (2021-2024), área-mãe Computação | Artigos sobre LLMs em engenharia de software, por exemplo "Assessing the Effectiveness of Large Language Models in Detecting Semantic Conflicts" (DOI 10.5753/jserd.2026.7565) |

**Por que o SBES só a partir de 2024:** pela Crossref, os anais de 2017 a 2023 foram publicados pela ACM (DOIs 10.1145) e já entram na busca da ACM DL. Os de 2024 e 2025 estão só na SBC OpenLib (DOIs 10.5753/sbes).

**JSERD fora do Scopus:** em 10/11/2026, as buscas `ISSN(21951721)` e `SRCTITLE("Software Engineering Research and Development")` no Scopus não retornaram nenhum documento, e o SCImago não tem a revista. Por isso a busca separada no site do JSERD é mantida. Na [Plataforma Sucupira](https://sucupira-legado.capes.gov.br/sucupira/public/consultas/coleta/veiculoPublicacaoQualis/listaConsultaGeralPeriodicos.jsf), o JSERD tem Qualis A4 no quadriênio 2021-2024 (evento "Classificações de periódicos quadriênio 2021-2024", consulta em 10/11/2026).

**Busca nas fontes nacionais:** na caixa de busca de cada site, com os termos dos blocos A1 e A2. A string é registrada exatamente como foi executada, com a data (RETHLEFSEN et al., 2021, itens 8 e 13).

### 7.3 Busca complementar

*Snowballing* *backward* e *forward*, repetido até que uma iteração não traga nenhum estudo novo (WOHLIN, 2014, seção 3.3 e Figura 1). O *forward* usa o Google Scholar (WOHLIN, 2014, seção 3.2.2). Os estudos incluídos nas três revisões da seção 3 também são conferidos e passam pela mesma triagem, e o relatório explica como essas revisões contribuíram para a busca (KITCHENHAM; MADEYSKI; BUDGEN, 2023, item 7 do SEGRESS).

## 8. Estratégia de busca

### 8.1 Blocos de termos

- **A1 — Assistentes e agentes de código:** `"coding assistant*" OR "programming assistant*" OR "AI pair programm*" OR "AI-assisted programming" OR "AI-assisted software development" OR "AI-assisted coding" OR "coding agent*" OR "software engineering agent*" OR "LLM-based agent*" OR "LLM-based assistant*" OR "LLM assistant*" OR Copilot OR "AI coding"`
- **A2 — LLMs em geral:** `"large language model*" OR LLM OR LLMs OR ChatGPT OR "generative AI"`
- **B — Desenvolvimento:** `"software development" OR "software engineering" OR programming OR programmer* OR developer* OR "code generation" OR "generated code"`
- **C — Dimensões:**
  - produtividade: `productiv* OR efficien*`
  - qualidade: `"code quality" OR "software quality" OR defect* OR bug* OR maintainab*`
  - segurança: `secur* OR vulnerab*`
  - custo: `cost* OR token* OR economic* OR energy`
  - processo: `"software process" OR "development process" OR workflow* OR governance OR "human oversight" OR "code review"`
- **T — Desenvolvedor no título:** `developer* OR programmer* OR "software development" OR "software engineer*"`
- **K — Código no título (só no ramo de custo):** `code OR software`

**String:** `(A1 AND B)` em título, resumo e palavras-chave, **ou** `(A2 AND C)` em título, resumo e palavras-chave com `T` no título, **ou** `(A2 AND custo)` em título, resumo e palavras-chave com `K` no título (ramo de custo). Só artigos de periódico e de evento.

**Por que a string mudou no piloto (09/11/2026):** a versão anterior (`A AND B AND C`, com termos genéricos de IA) retornou 11.236 registros no Scopus, volume inviável para triagem dupla. Restringir aos termos de assistente e agente (A1), mantendo o bloco C, baixou o volume, mas perdeu dois controles: Liang, Yang e Myers (2024) e Barke, James e Polikarpova (2023). Esses estudos falam de usabilidade e de interação, e não de produtividade ou qualidade. Como AI-First é processo, estudos de uso são centrais, e por isso o ramo A1 dispensa o bloco C. O ramo A2 recupera estudos que só dizem "LLM" ou "ChatGPT" quando o título trata de desenvolvedores ou de desenvolvimento.

**Por que entrou o ramo de custo (10/11/2026):** a string anterior não recuperava o controle de custo, Coignion, Quinton e Rouvoy (2025), cujo título fala de código, e não de desenvolvedores (seção 8.3). Pela regra da seção 8.3, a string foi revisada. Entre as duas revisões medidas no IEEE Xplore, o autor escolheu o ramo de custo, que acrescenta menos registros que ampliar o bloco T.

### 8.2 Strings por base

**Scopus**
```
( TITLE-ABS-KEY (
    ( "coding assistant*" OR "programming assistant*" OR "AI pair programm*" OR "AI-assisted programming"
      OR "AI-assisted software development" OR "AI-assisted coding" OR "coding agent*" OR "software engineering agent*"
      OR "LLM-based agent*" OR "LLM-based assistant*" OR "LLM assistant*" OR copilot OR "AI coding" )
    AND ( "software development" OR "software engineering" OR programming OR programmer* OR developer*
      OR "code generation" OR "generated code" ) )
  OR ( TITLE-ABS-KEY (
    ( "large language model*" OR llm OR llms OR chatgpt OR "generative AI" )
    AND ( productiv* OR efficien* OR "code quality" OR "software quality" OR defect* OR bug* OR maintainab* OR secur*
      OR vulnerab* OR cost* OR token* OR economic* OR energy OR "software process" OR "development process" OR workflow*
      OR governance OR "human oversight" OR "code review" ) )
    AND TITLE ( developer* OR programmer* OR "software development" OR "software engineer*" ) )
  OR ( TITLE-ABS-KEY (
    ( "large language model*" OR llm OR llms OR chatgpt OR "generative AI" )
    AND ( cost* OR token* OR economic* OR energy ) )
    AND TITLE ( code OR software ) ) )
AND ( DOCTYPE ( ar ) OR DOCTYPE ( cp ) )
```

**Web of Science** (Core Collection, busca avançada)
```
( TS=(
    ( "coding assistant*" OR "programming assistant*" OR "AI pair programm*" OR "AI-assisted programming"
      OR "AI-assisted software development" OR "AI-assisted coding" OR "coding agent*" OR "software engineering agent*"
      OR "LLM-based agent*" OR "LLM-based assistant*" OR "LLM assistant*" OR copilot OR "AI coding" )
    AND ( "software development" OR "software engineering" OR programming OR programmer* OR developer*
      OR "code generation" OR "generated code" ) )
  OR ( TS=(
    ( "large language model*" OR llm OR llms OR chatgpt OR "generative AI" )
    AND ( productiv* OR efficien* OR "code quality" OR "software quality" OR defect* OR bug* OR maintainab* OR secur*
      OR vulnerab* OR cost* OR token* OR economic* OR energy OR "software process" OR "development process" OR workflow*
      OR governance OR "human oversight" OR "code review" ) )
    AND TI=( developer* OR programmer* OR "software development" OR "software engineer*" ) )
  OR ( TS=(
    ( "large language model*" OR llm OR llms OR chatgpt OR "generative AI" )
    AND ( cost* OR token* OR economic* OR energy ) )
    AND TI=( code OR software ) ) )
AND DT=( Article OR Proceedings Paper )
```

**IEEE Xplore** (busca por comando): cada termo é buscado nos campos `Document Title`, `Abstract` e `Index Terms`, porque, no piloto, aplicar um campo a um grupo de termos (`"Abstract":(x OR y)`) retornou 0 resultados. Assim a string passa a ter 81 curingas (69 nos dois primeiros ramos e 12 no ramo de custo), acima do limite de 10 por busca ([Search Tips](https://ieeexplore.ieee.org/Xplorehelp/searching-ieee-xplore/search-tips)). Por isso ela foi dividida em 21 sub-buscas de no máximo 9 curingas, e o resultado é a união delas, sem duplicados (pelo número do artigo no IEEE Xplore). O filtro de tipo mantém os tipos de conteúdo de periódicos e de eventos do IEEE Xplore (*Journals*, *Conferences*, *Magazines* e *Early Access Articles*) e tira livros e cursos. As sub-buscas exatas estão em [buscas/ieee-xplore-2026-11-09.md](buscas/ieee-xplore-2026-11-09.md) e, as do ramo de custo, em [buscas/ieee-xplore-2026-11-10.md](buscas/ieee-xplore-2026-11-10.md) (RETHLEFSEN et al., 2021, item 8).

**ACM DL** (busca avançada, campo *Edit Query*, coleção *ACM Guide to Computing Literature*): cada bloco é buscado nos campos `Title`, `Abstract` e `Keyword`, como na RSL 1 (seção 7.2), com as frases que tinham curinga escritas por extenso, porque o curinga não funciona dentro de aspas na ACM DL. A string inteira numa busca só voltou com a página de resultados incompleta duas vezes. Por isso os três ramos (`A1 AND B`, `A2 AND C AND T` e o ramo de custo) foram executados separadamente, e as listas foram baixadas e unidas pelo DOI. O filtro de tipo mantém `research-article`, `short-paper`, `article` e `Work in Progress`. As strings exatas estão em [buscas/acm-dl-2026-11-09.md](buscas/acm-dl-2026-11-09.md) e, a do ramo de custo, em [buscas/acm-dl-2026-11-10.md](buscas/acm-dl-2026-11-10.md) (RETHLEFSEN et al., 2021, item 8).

**Filtros:** só artigos de periódico e de evento. Editoriais, resumos e pôsteres já sairiam pelo CE5; capítulos de livro também ficam de fora, por decisão do autor. Sem filtro de idioma nas bases: o idioma (CI4) é aplicado na triagem. Os filtros são informados, como pede o PRISMA-S (RETHLEFSEN et al., 2021, item 9).

### 8.3 Validação da string (artigos de controle)

A string precisa recuperar estes estudos primários nas bases em que estão indexados. O PRISMA 2020 cita como forma de validar a busca verificar se ela identifica um conjunto de estudos claramente elegíveis, que deve ser informado (PAGE et al., 2021b, item 7). Os estudos foram encontrados por busca na Crossref, independente da string, e R1 e R2 confirmam na calibração que atendem aos critérios CI1 a CI4:

1. PEARCE, H. et al. Asleep at the keyboard? Assessing the security of GitHub Copilot's code contributions. In: IEEE SYMPOSIUM ON SECURITY AND PRIVACY (SP), 2022. p. 754–768. DOI: [10.1109/SP46214.2022.9833571](https://doi.org/10.1109/SP46214.2022.9833571) (segurança)
2. PERRY, N. et al. Do users write more insecure code with AI assistants? In: ACM SIGSAC CONFERENCE ON COMPUTER AND COMMUNICATIONS SECURITY (CCS), 2023. p. 2785–2799. DOI: [10.1145/3576915.3623157](https://doi.org/10.1145/3576915.3623157) (segurança)
3. ASARE, O.; NAGAPPAN, M.; ASOKAN, N. Is GitHub's Copilot as bad as humans at introducing vulnerabilities in code? *Empirical Software Engineering*, v. 28, n. 6, art. 129, 2023. DOI: [10.1007/s10664-023-10380-1](https://doi.org/10.1007/s10664-023-10380-1) (qualidade e segurança)
4. BARKE, S.; JAMES, M. B.; POLIKARPOVA, N. Grounded Copilot: how programmers interact with code-generating models. *Proceedings of the ACM on Programming Languages*, v. 7, OOPSLA1, p. 85–111, 2023. DOI: [10.1145/3586030](https://doi.org/10.1145/3586030) (processo)
5. LIANG, J. T.; YANG, C.; MYERS, B. A. A large-scale survey on the usability of AI programming assistants: successes and challenges. In: INTERNATIONAL CONFERENCE ON SOFTWARE ENGINEERING (ICSE), 46., 2024. p. 1–13. DOI: [10.1145/3597503.3608128](https://doi.org/10.1145/3597503.3608128) (processo)
6. ZIEGLER, A. et al. Productivity assessment of neural code completion. In: ACM SIGPLAN INTERNATIONAL SYMPOSIUM ON MACHINE PROGRAMMING (MAPS), 6., 2022. p. 21–29. DOI: [10.1145/3520312.3534864](https://doi.org/10.1145/3520312.3534864) (produtividade; não indexado no Scopus, então é conferido nas outras bases)

7. COIGNION, T.; QUINTON, C.; ROUVOY, R. When faster isn't greener: the hidden costs of LLM-based code optimization. In: IEEE/ACM INTERNATIONAL CONFERENCE ON AUTOMATED SOFTWARE ENGINEERING (ASE), 40., 2025. DOI: [10.1109/ASE63991.2025.00139](https://doi.org/10.1109/ASE63991.2025.00139) (custo: consumo de energia)

Se algum controle não for recuperado, a string é revisada e a mudança é registrada no histórico de versões.

**Controles e o CE4:** os controles conferidos que têm participantes humanos não são só de estudantes e continuam elegíveis. Liang, Yang e Myers (2024, p. 2) tiveram 410 desenvolvedores recrutados em repositórios do GitHub. Perry et al. (2023, seção 3, p. 2787) recrutaram estudantes de graduação e de pós-graduação e profissionais de quatro empresas (66%, 19% e 15% na tabela de demografia). Barke, James e Polikarpova (2023, seção 3, p. 88) tiveram 20 participantes, 15 da academia e 5 da indústria.

**Controle de custo não recuperado (09/11/2026):** no IEEE Xplore, Coignion, Quinton e Rouvoy (2025) está indexado e atende aos blocos A2 e C, mas o título não tem nenhum termo do bloco T, e o resumo não tem termos do bloco A1. Por isso a string anterior não o recuperava. Duas revisões foram medidas no IEEE Xplore (1.174 registros, antes do filtro de tipo):
- **Ramo de custo:** acrescentar `A2 AND (cost* OR token* OR economic* OR energy) AND TITLE(code OR software)`. Resultado: 1.674 registros (+500), com o controle recuperado. Só com `code` no título: 1.560 (+386).
- **Bloco T ampliado:** acrescentar `code`, `software` e `program*` ao bloco T. Resultado: 2.991 registros (+1.817), com o controle recuperado.

Em 10/11/2026, o autor escolheu o ramo de custo com `code OR software` no título, que entrou na string (seções 8.1 e 8.2). Com ele, o controle de custo foi recuperado nas quatro bases (seção 8.5).

### 8.4 Registro (PRISMA-S)

Para cada base: nome e plataforma, data da busca, string exata executada, filtros aplicados e número de resultados (RETHLEFSEN et al., 2021, itens 1, 8, 9, 13 e 15). Os resultados são exportados em RIS/BibTeX e guardados em `rsl2/buscas/`.

### 8.5 Piloto (09/11/2026 e 10/11/2026)

| Base | String | Resultados | Controles recuperados |
|---|---|---|---|
| Scopus | Versão anterior (`A AND B AND C`, termos genéricos de IA) | 11.236 | (não testado) |
| Scopus | A1 com B e C, mais A2 com C e T | 1.820 | 3 de 5 (perdeu Barke e Liang) |
| Scopus | A1 com B e C, sem o ramo A2 | 1.206 | (não testado) |
| Scopus | Bloco C ampliado com usabilidade, interação, experiência do desenvolvedor, confiança e adoção | 2.206 | (não testado) |
| Scopus | Só A1 com B, sem o ramo A2, só artigos | 1.743 | (não testado) |
| Scopus | Sem o ramo de custo (09/11/2026) | 2.231 | 5 de 5 indexados |
| Web of Science | Sem o ramo de custo (09/11/2026) | 1.314 | 4 de 4 indexados |
| IEEE Xplore | Sem o ramo de custo (união de 19 sub-buscas, só periódicos e eventos, 09/11/2026) | 1.080 (1.174 antes do filtro de tipo) | 1 de 1 indexado (Pearce et al.) |
| ACM DL | Sem o ramo de custo (união dos 2 ramos, só periódicos e eventos, 09/11/2026) | 1.007 (1.154 antes do filtro de tipo) | 5 de 5 indexados (Perry, Asare, Barke, Liang e Ziegler) |
| Scopus | Sem o ramo de custo, rodada de novo em 10/11/2026 | 2.233 | — |
| Scopus | **Atual** (seção 8.2, 10/11/2026) | **3.148** (o ramo de custo sozinho: 1.070) | **6 de 6 indexados** (os 5 anteriores e Coignion) |
| Web of Science | **Atual** (seção 8.2, 10/11/2026) | **1.909** | **5 de 5 indexados** (os 4 anteriores e Coignion) |
| IEEE Xplore | **Atual** (união de 21 sub-buscas, só periódicos e eventos, 10/11/2026) | **1.577** (1.674 antes do filtro de tipo) | **2 de 2 indexados** (Pearce e Coignion) |
| ACM DL | **Atual** (união dos 3 ramos, só periódicos e eventos, 10/11/2026) | **1.413** (1.583 antes do filtro de tipo) | **6 de 6 indexados** (os 5 anteriores e Coignion) |

No Web of Science, o acesso foi pelo Portal de Periódicos CAPES (CAFe/UnB), na Core Collection com todas as edições. Os controles foram testados com `( string ) AND DO=(...)`. Pearce et al. (2022) e Ziegler et al. (2022) não estão indexados na Core Collection: a busca só pelos seis DOIs retornou 4 registros (Perry, Asare, Barke e Liang).

No IEEE Xplore, os controles foram procurados pelo DOI no conjunto de resultados. Só Pearce et al. (2022) está indexado: a busca `"DOI":` pelos outros cinco retornou 0. Como conferência, a string inteira numa busca só (69 curingas) também retornou 1.174 registros. Ziegler et al. (2022) não está em nenhuma dessas três bases.

Na ACM DL, o acesso foi pelo Portal de Periódicos CAPES (CAFe/UnB), no *ACM Guide to Computing Literature* (4.120.295 registros em 09/11/2026). Os ramos deram 878 e 347 registros. As listas foram baixadas ordenadas por data, porque na ordenação por relevância a paginação repetia registros entre páginas. A união deu 1.154 DOIs distintos. Os controles foram procurados pelo DOI: cinco estão indexados (todos menos Pearce et al.), e os cinco estão na união, todos do tipo `research-article`. Assim, cada um dos seis controles foi recuperado em pelo menos uma base, e Ziegler et al. só na ACM DL.

**Piloto com o ramo de custo (10/11/2026):** como o ramo de custo só acrescenta registros (é ligado aos outros por `OR`), os controles já recuperados continuam na busca; em cada base, o controle de custo foi testado pelo DOI. No Scopus, `DOI(10.1109/ASE63991.2025.00139)` retornou 1 documento, e a string atual com esse DOI também. No Web of Science, a combinação da string atual com `DO=(10.1109/ASE63991.2025.00139)` retornou 1 registro. No IEEE Xplore, o controle está na união (sub-busca 20). Na ACM DL, os ramos 1 e 2 deram de novo 878 e 347 registros, e o ramo de custo deu 520; a união tem 1.583 DOIs distintos, e o DOI de Coignion está nela, com o tipo `research-article`.

## 9. Período e idioma

- **Período:** sem limite inferior, até a data da busca definitiva. Qualquer restrição de data, idioma ou fonte é registrada com a justificativa (KITCHENHAM; MADEYSKI; BUDGEN, 2023, seção 4.3.1) e no histórico de versões.
- **Idiomas:** inglês e português, aplicados na triagem (CI4), e não como filtro nas bases.

## 10. Critérios de seleção

### Inclusão (todos devem ser atendidos)

| ID | Critério |
|---|---|
| CI1 | Estuda o uso de assistentes ou agentes baseados em LLMs em atividades de desenvolvimento de software |
| CI2 | Traz **evidência empírica** (experimento, estudo de caso, estudo de campo, *survey*, mineração de repositórios ou avaliação com *benchmark*) sobre pelo menos uma das dimensões das QP1 a QP5 |
| CI3 | Publicado em periódico ou evento com **revisão por pares** |
| CI4 | Escrito em inglês ou português |

### Exclusão (basta um)

| ID | Critério |
|---|---|
| CE1 | O LLM só é citado de passagem, sem ser objeto do estudo |
| CE2 | A contribuição é só uma técnica para melhorar o desempenho do modelo em *benchmark* (arquitetura, treino, *fine-tuning*), sem analisar nenhuma das dimensões no desenvolvimento |
| CE3 | Trata de engenharia de sistemas de IA (a IA como produto desenvolvido), e não do uso de IA para desenvolver software |
| CE4 | Trata só de ensino, com foco em resultados de aprendizagem, **ou** todos os participantes humanos do estudo são estudantes. Estudos com amostra mista (estudantes e profissionais) e estudos sem participantes humanos (por exemplo, avaliação de código gerado ou mineração de repositórios) continuam elegíveis |
| CE5 | Texto sem revisão por pares: preprint, tese, dissertação, relatório técnico, editorial, resumo, pôster ou tutorial |
| CE6 | Texto completo indisponível pela UnB/CAPES, por acesso aberto ou por pedido aos autores (pedido feito antes de excluir, com prazo registrado). Não conseguir acessar todos os relatos é uma limitação a discutir (PAGE et al., 2021b, item 23c) |
| CE7 | Duplicata (registro do mesmo relato) ou outro relato de um estudo já incluído. Os relatos de um mesmo estudo são analisados juntos, com a regra de escolha registrada (PAGE et al., 2021b, quadro 1 e item 9) |

**Estudos secundários** que atendam aos critérios são analisados à parte, como trabalhos relacionados, e servem de fonte para o *snowballing*, com a contribuição relatada (KITCHENHAM; MADEYSKI; BUDGEN, 2023, item 7 do SEGRESS).

**Literatura cinzenta e relatórios da indústria:** ficam de fora pelo CI3, por decisão do autor. Hou et al. (2024, seção 2.3) mantiveram na revisão deles os preprints do arXiv de 2023 e 2024, porque a área é emergente e muitos trabalhos ainda estavam em submissão. O efeito disso sobre a cobertura entra nas ameaças à validade (seção 15).

## 11. Processo de seleção

O mesmo da RSL 1 (seção 10):
1. Importação no Rayyan e remoção de duplicatas, com registro de quantos registros saíram antes da triagem (PAGE et al., 2021b, item 16a).
2. Calibração com os mesmos 20 a 30 registros para os dois revisores, número recomendado por Polanin et al. (2019, diretriz 3). Para o volume desta revisão, usa-se a semiautomação do Rayyan, que ordena os registros com um modelo de predição (OUZZANI et al., 2016), seguindo a recomendação de usar uma ferramenta de *text-mining* na triagem (POLANIN et al., 2019, diretriz 6). A ferramenta só ordena: os dois revisores continuam decidindo todos os registros (diretriz 7).
3. Etapa 1 (título, resumo e palavras-chave) e etapa 2 (texto completo), feitas por R1 e R2 de forma independente, com o modo cego ligado. Revisores independentes evitam o viés do pesquisador (KITCHENHAM; MADEYSKI; BUDGEN, 2023, seção 2.2), e a triagem dupla tende a ser mais confiável que a simples (PAGE et al., 2021b, item 8).
4. *Snowballing* iterativo.
5. Concordância medida e relatada, como pede o SEGRESS (itens 8 e 16a), com o kappa de Cohen (COHEN, 1960) sobre todas as decisões de cada etapa. Divergências resolvidas por consenso, com registro.

## 12. Avaliação de qualidade

O mesmo instrumento da RSL 1: os critérios de Dybå e Dingsøyr (2008, seção 3.5), respondidos com sim ou não, como no original.

**Adaptações:** o critério 1 (pesquisa empírica) não entra na nota, porque já é exigido pelo CI2. Entra um item sobre o modelo e a versão da ferramenta (AQ11). Adaptações de um instrumento existente devem ser informadas (PAGE et al., 2021b, item 11).

| ID | Pergunta | Critério de Dybå e Dingsøyr |
|---|---|---|
| AQ1 | Os objetivos estão claramente relatados, com a justificativa do estudo? | 2 |
| AQ2 | O contexto em que a pesquisa foi feita está adequadamente descrito? | 3 |
| AQ3 | O desenho da pesquisa é adequado aos objetivos? | 4 |
| AQ4 | A amostra e a forma de identificá-la e recrutá-la estão adequadamente descritas? | 5 |
| AQ5 | Houve grupo de controle para comparar tratamentos? | 6 |
| AQ6 | Os métodos de coleta de dados são adequados e estão descritos? | 7 |
| AQ7 | Os métodos de análise dos dados estão adequadamente descritos? | 8 |
| AQ8 | A relação entre pesquisador e participantes foi considerada de forma adequada? | 9 |
| AQ9 | Os achados estão claramente declarados, com resultados críveis e conclusões justificadas? | 10 |
| AQ10 | O estudo tem valor para a pesquisa ou para a prática? | 11 |
| AQ11 | O estudo informa o **modelo e a versão** (ou a data) da ferramenta usada? O desempenho e o comportamento do GPT-3.5 e do GPT-4 variaram muito entre as versões de março e de junho de 2023 (CHEN; ZAHARIA; ZOU, 2024) | — (acréscimo) |

A pontuação vai de 0 a 11. Serve para ponderar a síntese, não para excluir estudos, um dos usos da avaliação de qualidade relatados na engenharia de software; o uso pretendido precisa ser declarado (KITCHENHAM; MADEYSKI; BUDGEN, 2023, seção 2.3 e tabela 2).

## 13. Extração de dados

| Campo | Questão |
|---|---|
| Referência completa, ano, país, tipo de publicação | — |
| Tipo de estudo empírico e número de participantes ou projetos | — |
| Contexto (indústria, código aberto, academia) e tarefa de desenvolvimento | QP6 |
| Ferramenta, modelo, versão e nível de autonomia | QP6 |
| Grupo de comparação, se houver | — |
| Métricas e resultados de produtividade | QP1 |
| Métricas e resultados de qualidade | QP2 |
| Vulnerabilidades e riscos encontrados e mitigações avaliadas | QP3 |
| Custos relatados e como foram medidos | QP4 |
| Mudanças de processo, papéis, revisão humana e governança | QP5 |
| Nota de qualidade | Seção 12 |

R1 extrai os dados e R2 confere a extração de todos os estudos incluídos, uma das formas descritas no PRISMA 2020 (PAGE et al., 2021b, item 9).

## 14. Síntese

- **Mapeamento** (análise das características dos estudos, KITCHENHAM; MADEYSKI; BUDGEN, 2023, seção 4.2): distribuição por ano, contexto, tipo de estudo, ferramenta e nível de autonomia
- **Síntese por dimensão (QP1 a QP5):** tabelas com a direção do efeito relatado (positivo, negativo, misto ou nulo), as métricas usadas e a nota de qualidade de cada estudo. A contagem pela direção do efeito é uma das formas de síntese descritas no PRISMA 2020 (PAGE et al., 2021b, quadro 1). Não está prevista meta-análise: Mohamed, Assi e Guizani (2026) descrevem os estudos como metodologicamente diversos, em sua maioria exploratórios (59%), e com resultados contraditórios sobre a qualidade, que dependem do contexto e do critério de avaliação. Se o corpus permitir, essa decisão é revista e registrada
- **Rastreabilidade para o TCC:** cada achado relevante vira uma prática ou um requisito candidato para o processo de desenvolvimento do buscador

## 15. Ameaças à validade

- **Volume:** Hou et al. (2024) reuniram 395 artigos até janeiro de 2024, só sobre usos de LLMs em engenharia de software. No piloto, a string atual retornou 3.148 registros só no Scopus (seção 8.5)
- **Obsolescência:** um resultado obtido com uma versão do modelo pode não valer para a seguinte; o desempenho do GPT-3.5 e do GPT-4 variou muito em três meses (CHEN; ZAHARIA; ZOU, 2024). A AQ11 e a extração da versão do modelo permitem relativizar os achados
- **Viés de publicação:** exigir revisão por pares deixa de fora preprints e relatórios da indústria. Hou et al. (2024, seção 2.3) mantiveram preprints justamente porque muitos trabalhos da área ainda estavam em submissão. Buscas amplas são a defesa contra o viés de publicação (KITCHENHAM; MADEYSKI; BUDGEN, 2023, seção 2.2)
- **Terminologia:** termos inconsistentes fazem a busca em bases perder estudos relevantes, como no exemplo de Wohlin (2014, seção 3.1); termos amplos, como "AI agent" e "efficiency", trazem muitos artigos irrelevantes (WOHLIN, 2014, seção 2). O piloto calibra a string, e os artigos de controle verificam se ela recupera o que deve
- **Subjetividade da seleção:** mitigada pela triagem dupla e independente (KITCHENHAM; MADEYSKI; BUDGEN, 2023, seção 2.2), pela calibração e pelo kappa

## 16. Cronograma

| Data | Atividade |
|---|---|
| até 30/10 | Revisão do protocolo por R1 e R2; piloto das strings e escolha dos artigos de controle |
| 31/10 | Buscas definitivas e exportação |
| 01/11 – 05/11 | Remoção de duplicatas, calibração e etapa 1 (R1 e R2) |
| 06/11 – 10/11 | Etapa 2 (R1 e R2) e *snowballing* |
| 11/11 – 13/11 | Avaliação de qualidade e extração |
| 14/11 – 16/11 | Síntese, fluxograma PRISMA e redação da seção |

## 17. Decisões tomadas e registro do protocolo

Decisões do autor em 10/11/2026:
1. **Fontes nacionais** (seção 7.2): entram os anais do SBES (de 2024 em diante) e o JSERD, que não está no Scopus e tem busca separada.
2. **Estudos com estudantes:** ficam de fora os estudos em que todos os participantes são estudantes (CE4). Amostras mistas continuam elegíveis.
3. **Extração** (seção 13): R2 confere a extração de todos os estudos incluídos.
4. **Registro:** os protocolos das duas RSLs não são registrados em base externa. Ficam versionados no repositório do TCC, com o histórico de versões no início de cada documento. O relato declara que a revisão não foi registrada e indica onde o protocolo pode ser acessado, como pede o PRISMA 2020 (PAGE et al., 2021a, itens 24a e 24b). No SEGRESS, o registro é opcional para todos os tipos de revisão (KITCHENHAM; MADEYSKI; BUDGEN, 2023, item 24a).
5. **Acesso à busca avançada da ACM DL** pela UnB/CAPES: resolvida em 09/11/2026. Disponível pelo Portal CAPES (seção 8.5).
6. **Controle de custo e string:** entrou o ramo de custo (seções 8.1 e 8.3), e o piloto foi refeito nas quatro bases (seção 8.5).

## Referências do protocolo

Links e forma de verificação em [referencias-verificadas.md](referencias-verificadas.md).

- CHEN, L.; ZAHARIA, M.; ZOU, J. How is ChatGPT's behavior changing over time? *Harvard Data Science Review*, v. 6, n. 2, 2024. DOI: [10.1162/99608f92.5317da47](https://doi.org/10.1162/99608f92.5317da47).
- COHEN, J. A coefficient of agreement for nominal scales. *Educational and Psychological Measurement*, v. 20, n. 1, p. 37–46, 1960. DOI: [10.1177/001316446002000104](https://doi.org/10.1177/001316446002000104).
- DYBÅ, T.; DINGSØYR, T. Empirical studies of agile software development: a systematic review. *Information and Software Technology*, v. 50, n. 9–10, p. 833–859, 2008. DOI: [10.1016/j.infsof.2008.01.006](https://doi.org/10.1016/j.infsof.2008.01.006).
- HOU, X. et al. Large language models for software engineering: a systematic literature review. *ACM Transactions on Software Engineering and Methodology*, v. 33, n. 8, p. 1–79, 2024. DOI: [10.1145/3695988](https://doi.org/10.1145/3695988).
- KITCHENHAM, B.; MADEYSKI, L.; BUDGEN, D. SEGRESS: Software Engineering Guidelines for REporting Secondary Studies. *IEEE Transactions on Software Engineering*, v. 49, n. 3, p. 1273–1298, 2023. DOI: [10.1109/TSE.2022.3174092](https://doi.org/10.1109/TSE.2022.3174092).
- LIU, J. et al. Large language model-based agents for software engineering: a survey. *ACM Transactions on Software Engineering and Methodology*, 2026. DOI: [10.1145/3796507](https://doi.org/10.1145/3796507).
- MOHAMED, A.; ASSI, M.; GUIZANI, M. The impact of LLM-assistants on software developer productivity: a systematic review and mapping study. *ACM Transactions on Software Engineering and Methodology*, 2026. DOI: [10.1145/3809494](https://doi.org/10.1145/3809494).
- OUZZANI, M. et al. Rayyan — a web and mobile app for systematic reviews. *Systematic Reviews*, v. 5, art. 210, 2016. DOI: [10.1186/s13643-016-0384-4](https://doi.org/10.1186/s13643-016-0384-4).
- PAGE, M. J. et al. The PRISMA 2020 statement: an updated guideline for reporting systematic reviews. *BMJ*, v. 372, n71, 2021a. DOI: [10.1136/bmj.n71](https://doi.org/10.1136/bmj.n71).
- PAGE, M. J. et al. PRISMA 2020 explanation and elaboration: updated guidance and exemplars for reporting systematic reviews. *BMJ*, v. 372, n160, 2021b. DOI: [10.1136/bmj.n160](https://doi.org/10.1136/bmj.n160).
- POLANIN, J. R. et al. Best practice guidelines for abstract screening large-evidence systematic reviews and meta-analyses. *Research Synthesis Methods*, v. 10, n. 3, p. 330–342, 2019. DOI: [10.1002/jrsm.1354](https://doi.org/10.1002/jrsm.1354).
- RETHLEFSEN, M. L. et al. PRISMA-S: an extension to the PRISMA Statement for Reporting Literature Searches in Systematic Reviews. *Systematic Reviews*, v. 10, art. 39, 2021. DOI: [10.1186/s13643-020-01542-z](https://doi.org/10.1186/s13643-020-01542-z).
- WOHLIN, C. Guidelines for snowballing in systematic literature studies and a replication in software engineering. In: INTERNATIONAL CONFERENCE ON EVALUATION AND ASSESSMENT IN SOFTWARE ENGINEERING (EASE), 18., 2014. *Proceedings* [...]. ACM, 2014. p. 1–10. DOI: [10.1145/2601248.2601268](https://doi.org/10.1145/2601248.2601268).
