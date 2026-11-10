# Protocolo da RSL 1 — Ferramentas OSINT para órgãos policiais e de inteligência

**Versão:** 0.9 (rascunho para revisão do autor e do orientador) · **Data:** 10/11/2026

**Revisores:** Matheus Perillo (R1) e orientador (R2)

> **Verificação das referências.** A forma de verificação de cada referência está em [referencias-verificadas.md](referencias-verificadas.md).
> - **Conferidas na página do editor:** todas as referências deste protocolo, em nova verificação feita em 06/11/2026.
> - **Fundamentação do texto (09/11/2026):** cada escolha de método e cada afirmação cita a fonte e o local (item, seção ou página) do trecho que a sustenta, conferido no texto completo. Os poucos trechos tirados só do resumo na página do editor estão indicados em [referencias-verificadas.md](referencias-verificadas.md).

## Histórico de versões

| Versão | Data | Mudança |
|---|---|---|
| 0.1 | 27/10/2026 | Primeiro rascunho, no formato de revisão rápida (*rapid review*) |
| 0.2 | 27/10/2026 | Passa a ser revisão sistemática completa: triagem dupla e independente nas duas etapas, *snowballing* iterativo, período sem recorte prévio. Só fontes revisadas por pares; sai o preprint de Palmieri et al. A diretriz SEGRESS substitui o relatório técnico de Kitchenham e Charters. Autores da revisão do *IJIS* preenchidos |
| 0.3 | 28/10/2026 | Sai a referência a Dybå e Dingsøyr (2008): os dados foram conferidos, mas o texto completo, com o checklist original, não pôde ser acessado. O checklist passa a ser apresentado como elaborado para esta revisão |
| 0.4 | 06/11/2026 | Nova verificação de todas as referências e fontes. Correções: a SEGRESS é diretriz de relato (não de condução); a revisão por pares da *AI & Society* vem das normas atuais da revista; o corpus de Ghioni et al. vai de 1992 a 2021; a ACM DL só tem busca avançada na versão Premium; o processo do SBSeg passa a citar os anais de 2026; a modalidade de revisão na RBI para artigos em preprint foi reescrita conforme a página da revista; JBCS e JISA conferidos no SCImago |
| 0.5 | 09/11/2026 | Revisão do texto do protocolo: cada escolha de método passa a citar a fonte e o trecho que a sustentam. Entram o PRISMA 2020 E&E, Polanin et al. (2019), Thomas e Harden (2008) e citações de Pastor-Galindo et al. (2020) e Browne et al. (2024). Saem afirmações sem fonte (limite de 4 páginas, nota de corte 2, limitações da busca no OJS e da ACM, Scopus no *forward*). O ciclo de inteligência ganha a fase de avaliação |
| 0.6 | 09/11/2026 | A avaliação de qualidade passa a usar os 11 critérios de Dybå e Dingsøyr (2008), conferidos no texto completo, no lugar do checklist próprio |
| 0.7 | 09/11/2026 | Piloto no Scopus: a string anterior (454 registros) perdia 2 dos 4 controles primários. O bloco B foi ampliado e entrou o ramo "OSINT no título" (882 registros, todos os controles recuperados). Controles primários definidos. Sem filtro de idioma nas bases |
| 0.8 | 09/11/2026 | Piloto no Web of Science Core Collection (494 registros, todos os controles recuperados), no IEEE Xplore (267 registros, o único controle indexado recuperado) e na ACM DL (137 registros, os 2 controles indexados recuperados). Strings das três bases registradas. A busca avançada da ACM DL ficou disponível pelo Portal CAPES |
| 0.9 | 10/11/2026 | Decisões do autor: sai a RBCP; entra a *Revista Brasileira de Criminalística* (Qualis A2 no quadriênio 2021-2024); só a Core Collection do WoS, com o SciELO buscado diretamente; sem recorte de período; R2 confere a extração de todos os estudos; protocolo sem registro externo, versionado no repositório do TCC. JBCS e JISA conferidos no Scopus |

## 1. Tipo de estudo e referenciais metodológicos

Revisão sistemática da literatura completa, sem as simplificações de uma revisão rápida.

- **Relato:** PRISMA 2020 (PAGE et al., 2021a) e, para a estratégia de busca, PRISMA-S (RETHLEFSEN et al., 2021)
- **Condução:** documento de explicação e elaboração do PRISMA 2020 (PAGE et al., 2021b), que descreve, item a item, as formas de conduzir cada etapa
- **Relato em engenharia de software:** SEGRESS (KITCHENHAM; MADEYSKI; BUDGEN, 2023a), que estende os itens do PRISMA 2020 a estudos secundários da área, inclusive estudos de mapeamento e revisões qualitativas
- **Busca complementar:** *snowballing* (WOHLIN, 2014)

## 2. Contexto e justificativa

Pastor-Galindo et al. (2020, p. 10297) consideram a inteligência de fontes abertas (OSINT) uma peça importante ("an important key") de investigações sigilosas e operações de Estado. Sobre os órgãos policiais e de inteligência da Espanha, afirmam que a OSINT, embora seja um aspecto confidencial do funcionamento desses órgãos, é um elemento crucial de suas investigações (p. 10302). Duas revisões publicadas em periódicos revisados por pares tratam de OSINT e inteligência artificial:

- **Ghioni, Taddeo e Floridi (2024)**, na *AI & Society* (pelas normas atuais da revista, revisão duplo-cega e dois pareceres completos antes do aceite), analisam 571 publicações sob a ótica das implicações de governança, ética, direito e sociedade (GELSI). O corpus foi montado com busca por título no Google Scholar e no Scopus e vai de 1992 a 2021. É uma revisão de literatura com análise bibliométrica, não uma revisão no formato PRISMA.
- **Browne, Abedin e Chowdhury (2024)**, no *International Journal of Information Security*, seguem o PRISMA e identificam 163 artigos que combinam IA e OSINT. Entre as direções futuras de pesquisa que apontam estão a integração com aplicações em uso e a aplicação no mundo real.

**Lacuna que esta revisão ataca:** Ghioni, Taddeo e Floridi tratam das implicações de governança, ética, direito e sociedade da OSINT com IA, e Browne, Abedin e Chowdhury, das aplicações de IA à OSINT em geral. Nenhuma das duas restringe o escopo ao uso por órgãos policiais e de inteligência. Esta revisão se concentra no **uso por órgãos policiais e de inteligência**: requisitos operacionais, validade da evidência, soberania de dados e segurança das próprias ferramentas. Os resultados alimentam diretamente os requisitos do buscador desenvolvido no trabalho.

## 3. Objetivo

Identificar e caracterizar, na literatura revisada por pares, as ferramentas, técnicas e requisitos de sistemas de busca OSINT voltados a órgãos policiais e de inteligência, incluindo o uso de inteligência artificial e os desafios legais, éticos e de segurança associados.

## 4. Escopo (PICOC)

O escopo segue a estrutura PICO, que o PRISMA 2020 indica para formular os objetivos de uma revisão (PAGE et al., 2021b, item 4), acrescida do contexto (C).

| Elemento | Definição |
|---|---|
| **População** | Órgãos policiais, de investigação criminal e de inteligência; analistas e investigadores |
| **Intervenção** | Ferramentas, sistemas, plataformas, arquiteturas e métodos de coleta e análise OSINT, com ou sem IA |
| **Comparação** | Não se aplica |
| **Resultados** | Funcionalidades, arquiteturas, técnicas de IA, requisitos, desafios, ameaças e formas de avaliação |
| **Contexto** | Investigação criminal, segurança pública e atividade de inteligência |

## 5. Questões de pesquisa

| ID | Questão | Motivação |
|---|---|---|
| **QP1** | Quais ferramentas, sistemas e arquiteturas de busca OSINT foram propostos ou avaliados para uso policial e de inteligência? | Estado da arte e referência para a arquitetura do buscador |
| **QP2** | Quais técnicas de IA (incluindo modelos de linguagem) são usadas, e em quais fases do ciclo de inteligência? | Onde a IA agrega valor no produto |
| **QP3** | Quais requisitos e desafios legais, éticos, de privacidade e de soberania de dados são relatados? | Requisitos não funcionais. A LGPD não se aplica à investigação criminal (art. 4º, III), mas a lei específica deve observar seus princípios (art. 4º, § 1º); ISO/IEC 27701 |
| **QP4** | Quais ameaças de segurança e riscos são identificados (inclusive contra a ferramenta e contra o investigador), e como são mitigados? | Modelo de ameaças (ISO/IEC 27090, 23894) |
| **QP5** | Como as ferramentas são avaliadas, e como garantem a validade e a preservação da evidência coletada? | Critérios de avaliação do app e cadeia de custódia (ISO/IEC 27037) |

## 6. Fontes de busca

### 6.1 Bases internacionais

| Fonte | Justificativa | Acesso |
|---|---|---|
| Scopus | Maior base de resumos e citações de literatura revisada por pares, segundo a Elsevier | Portal de Periódicos CAPES (CAFe/UnB) |
| IEEE Xplore | Publicações de engenharia elétrica, ciência da computação e áreas afins, segundo a IEEE | CAPES |
| ACM Digital Library | Plataforma de pesquisa e publicação em computação, segundo a ACM | Texto completo aberto desde 01/01/2026, mas a busca avançada só existe na versão Premium. Pelo Portal CAPES (UnB), a busca avançada abre e pesquisa o *ACM Guide to Computing Literature* (piloto de 09/11/2026) |
| Web of Science | Inclui o Social Sciences Citation Index, de periódicos de ciências sociais, segundo a Clarivate | CAPES |

### 6.2 Fontes nacionais

Busca complementar em veículos brasileiros com revisão por pares declarada na página oficial e com artigos publicados sobre inteligência policial, fontes abertas ou prova digital (um exemplo de cada na tabela, encontrado na busca do próprio site ou na Crossref em 09/11/2026). As evidências estão em [referencias-verificadas.md](referencias-verificadas.md).
- **Reconhecimento nacional:** a *Revista Brasileira de Criminalística* não está no DOAJ e não declara Scopus, WoS ou SciELO. Entra pela classificação no Qualis Periódicos da CAPES, cujos estratos são "indicativos de qualidade", de A1 (mais elevado) a C ([Plataforma Sucupira, "O que é Qualis?"](https://sucupira.capes.gov.br/avaliacao-quadrienal/sobre-o-qualis)). Ela tem A2 no quadriênio 2021-2024, com área-mãe Interdisciplinar (consulta em 10/11/2026: [Qualis Periódicos](https://sucupira-legado.capes.gov.br/sucupira/public/consultas/coleta/veiculoPublicacaoQualis/listaConsultaGeralPeriodicos.jsf), evento "Classificações de periódicos quadriênio 2021-2024", ISSN 2237-9223).
- **Indexação:** a RBDPP está no SciELO e declara, na página do SciELO, indexação no Scopus e no Web of Science (ESCI), mas entra aqui pela busca direta em português.

| Fonte | Editora | Revisão por pares | Indexação verificada | Por que entra |
|---|---|---|---|---|
| [Revista Brasileira de Inteligência (RBI)](https://rbi.abin.gov.br/RBI) | ABIN | Duplo-cega | DOAJ | Artigos sobre fontes abertas e LGPD, por exemplo "LGPD e Inteligência: os limites no tratamento de dados pessoais coletados em fontes abertas" |
| [Anais do SBSeg](https://sol.sbc.org.br/index.php/sbseg) (Simpósio Brasileiro de Cibersegurança) | SBC | Duplo-cega, em duas fases (revisão e meta-revisão), segundo os anais de 2026 | DOI próprio (10.5753) | Simpósio de cibersegurança da SBC; tem artigo de 2026 sobre OSINT e LLMs |
| [Revista Brasileira de Segurança Pública (RBSP)](https://revista.forumseguranca.org.br/rbsp) | Fórum Brasileiro de Segurança Pública | Duplo-cega | DOAJ | Artigos sobre inteligência policial, por exemplo "Direção e planejamento de inteligência policial no enfrentamento às organizações criminosas" |
| [Revista Brasileira de Direito Processual Penal (RBDPP)](https://revista.ibraspp.com.br/RBDPP) | IBRASPP | Duplo-cega | SciELO e DOAJ | Artigos sobre prova digital e cadeia de custódia (QP3 e QP5), por exemplo "Função 'hash' e a integridade da prova digital" |
| [Revista Brasileira de Criminalística (RBC)](https://revista.rbc.org.br/index.php/rbc) | Associação Brasileira de Criminalística | Duplo-cega, com pelo menos dois pareceristas *ad hoc*, segundo a [página "Sobre"](https://revista.rbc.org.br/index.php/rbc/about) | Qualis A2 (2021-2024); não está no DOAJ | Artigos sobre computação forense e prova digital (QP3 e QP5), por exemplo "A Importância da Cadeia de Custódia na Computação Forense" (DOI 10.15260/rbc.v9i2.463) |

**Sem busca separada (cobertas pelo Scopus):** *Journal of the Brazilian Computer Society* (JBCS) e *Journal of Internet Services and Applications* (JISA), ambos da SBC. O SCImago, que usa dados do Scopus, lista cobertura de 2000 a 2025 para o [JBCS](https://www.scimagojr.com/journalsearch.php?q=145262&tip=sid) e de 2010 a 2026 para o [JISA](https://www.scimagojr.com/journalsearch.php?q=19600166316&tip=sid) (consulta em 10/11/2026), e a busca `ISSN(01046500) OR ISSN(16784804)` no Scopus retornou 676 documentos do JBCS. Na Crossref, o registro mais antigo do JBCS é de 1997 e o do JISA é de 2010; os volumes do JBCS de 1997 a 1999 ficam fora do Scopus. Nenhuma das duas retornou resultados para "OSINT" ou "open source intelligence" em suas buscas internas.

**SciELO:** a SciELO Citation Index fica na plataforma do Web of Science, mas fora da Core Collection. A busca no WoS usa só a Core Collection, e a busca no SciELO é feita diretamente no site do SciELO.

**Busca nas fontes nacionais:** feita na caixa de busca de cada site. A string em português é adaptada a cada site e registrada exatamente como foi executada, com a data (RETHLEFSEN et al., 2021, itens 8 e 13).

### 6.3 Busca complementar

*Snowballing* *backward* e *forward* a partir dos estudos incluídos, **repetido até que uma iteração não traga nenhum estudo novo** (WOHLIN, 2014, seção 3.3 e Figura 1). O *forward* usa o Google Scholar (WOHLIN, 2014, seção 3.2.2).

## 7. Estratégia de busca

### 7.1 Blocos de termos

- **A — OSINT:** `"open source intelligence" OR "open-source intelligence" OR OSINT OR SOCMINT OR "social media intelligence"`
- **B — Contexto:** `police OR policing OR "law enforcement" OR "criminal investigation*" OR "digital investigation*" OR "cyber investigation*" OR "intelligence agenc*" OR "intelligence analys*" OR "public security" OR crime OR forensic* OR "national security" OR "intelligence communit*" OR "intelligence service*" OR "security communit*" OR "national intelligence" OR counterintelligence OR "counter-intelligence"`

**String:** `(A AND B)` em título, resumo e palavras-chave, **ou** `A` no título. O número de resultados de cada base é registrado (RETHLEFSEN et al., 2021, item 15).

**Por que a string mudou no piloto (09/11/2026):** a versão anterior (`A AND B`, sem os termos de segurança nacional e comunidade de inteligência) não recuperou dois dos quatro artigos de controle primários (seção 7.3):
- Omand, Bartlett e Miller (2012) falam em "security community" e "national intelligence framework", termos que não estavam no bloco B.
- Hribar, Podbregar e Ivanuša (2014) não têm resumo no Scopus, só o título "OSINT: A Grey Zone?".

O bloco B foi ampliado, e entrou o ramo "A no título". Com isso, os sete controles foram recuperados.

### 7.2 Strings por base

**Scopus**
```
TITLE-ABS-KEY ( ( "open source intelligence" OR "open-source intelligence" OR osint OR socmint OR "social media intelligence" )
AND ( police OR policing OR "law enforcement" OR "criminal investigation*" OR "digital investigation*" OR "cyber investigation*"
OR "intelligence agenc*" OR "intelligence analys*" OR "public security" OR crime OR forensic* OR "national security"
OR "intelligence communit*" OR "intelligence service*" OR "security communit*" OR "national intelligence"
OR counterintelligence OR "counter-intelligence" ) )
OR TITLE ( "open source intelligence" OR "open-source intelligence" OR osint OR socmint OR "social media intelligence" )
```

**Web of Science** (Core Collection, busca avançada)
```
TS=( ( "open source intelligence" OR "open-source intelligence" OR OSINT OR SOCMINT OR "social media intelligence" )
AND ( police OR policing OR "law enforcement" OR "criminal investigation*" OR "digital investigation*" OR "cyber investigation*"
OR "intelligence agenc*" OR "intelligence analys*" OR "public security" OR crime OR forensic* OR "national security"
OR "intelligence communit*" OR "intelligence service*" OR "security communit*" OR "national intelligence"
OR counterintelligence OR "counter-intelligence" ) )
OR TI=( "open source intelligence" OR "open-source intelligence" OR OSINT OR SOCMINT OR "social media intelligence" )
```

**IEEE Xplore** (busca por comando): cada termo é buscado nos campos `Document Title`, `Abstract` e `Index Terms`, porque, no piloto, aplicar um campo a um grupo de termos (`"Abstract":(x OR y)`) retornou 0 resultados. Assim a string passa a ter 27 curingas, acima do limite de 10 por busca ([Search Tips](https://ieeexplore.ieee.org/Xplorehelp/searching-ieee-xplore/search-tips)). Por isso ela foi dividida em 4 sub-buscas de no máximo 9 curingas, e o resultado é a união delas, sem duplicados (pelo número do artigo no IEEE Xplore). As sub-buscas exatas estão em [buscas/ieee-xplore-2026-11-09.md](buscas/ieee-xplore-2026-11-09.md) (RETHLEFSEN et al., 2021, item 8).

**ACM DL** (busca avançada, campo *Edit Query*, coleção *ACM Guide to Computing Literature*): cada bloco é buscado nos campos `Title`, `Abstract` e `Keyword` (palavras-chave dos autores), na forma `Title:( ... ) OR Abstract:( ... ) OR Keyword:( ... )`. As dicas de busca da ACM DL dizem que o curinga não funciona dentro de frase entre aspas, e o piloto confirmou: `"intelligence agenc*"` retornou 0, e `"criminal investigation*"` retornou o mesmo total de `"criminal investigation"`. Por isso as frases com curinga são escritas com as variantes (por exemplo, `"intelligence agency" OR "intelligence agencies"`). As strings exatas estão em [buscas/acm-dl-2026-11-09.md](buscas/acm-dl-2026-11-09.md) (RETHLEFSEN et al., 2021, item 8).

**Sem filtro de idioma nas bases:** o idioma (CI4) é aplicado na triagem. Assim as quatro bases ficam com os mesmos filtros, e a ausência de limite é informada, como pede o PRISMA-S (RETHLEFSEN et al., 2021, item 9).

**Fontes nacionais (busca simples nos sites):** `OSINT`, `"fontes abertas"` e `"inteligência de fontes abertas"`, executadas separadamente em cada fonte da seção 6.2. Os resultados são somados e os duplicados removidos. A redação exata é ajustada no piloto.

### 7.3 Validação da string (artigos de controle)

A string precisa recuperar estes estudos nas bases em que estão indexados. O PRISMA 2020 cita como forma de validar a busca verificar se ela identifica um conjunto de estudos claramente elegíveis, que deve ser informado (PAGE et al., 2021b, item 7).

Os controles principais são **estudos primários**, porque são eles que a revisão vai analisar; as revisões não entram como estudos primários (seção 9). Foram encontrados por busca na Crossref, independente da string, e R1 e R2 confirmam na calibração que atendem aos critérios CI1 a CI4:

1. LARSEN, O. H.; NGO, H. Q.; LE-KHAC, N.-A. A quantitative study of the law enforcement in using open source intelligence techniques through undergraduate practical training. *Forensic Science International: Digital Investigation*, v. 47, art. 301622, 2023. DOI: [10.1016/j.fsidi.2023.301622](https://doi.org/10.1016/j.fsidi.2023.301622)
2. TROTTIER, D. Open source intelligence, social media and law enforcement: visions, constraints and critiques. *European Journal of Cultural Studies*, v. 18, n. 4–5, p. 530–547, 2015. DOI: [10.1177/1367549415577396](https://doi.org/10.1177/1367549415577396)
3. HRIBAR, G.; PODBREGAR, I.; IVANUŠA, T. OSINT: a "grey zone"? *International Journal of Intelligence and CounterIntelligence*, v. 27, n. 3, p. 529–549, 2014. DOI: [10.1080/08850607.2014.900295](https://doi.org/10.1080/08850607.2014.900295)
4. OMAND, D.; BARTLETT, J.; MILLER, C. Introducing social media intelligence (SOCMINT). *Intelligence and National Security*, v. 27, n. 6, p. 801–823, 2012. DOI: [10.1080/02684527.2012.716965](https://doi.org/10.1080/02684527.2012.716965)

Também são conferidas as três revisões da seção 2: Ghioni, Taddeo e Floridi (2024), Browne, Abedin e Chowdhury (2024) e Pastor-Galindo et al. (2020).

Se algum controle não for recuperado, a string é revisada e a mudança é registrada no histórico de versões.

### 7.4 Registro (PRISMA-S)

Para cada base: nome e plataforma, data da busca, string exata executada, filtros aplicados e número de resultados (RETHLEFSEN et al., 2021, itens 1, 8, 9, 13 e 15). Os resultados são exportados em RIS/BibTeX e guardados em `rsl1/buscas/`.

### 7.5 Piloto (Scopus e Web of Science, 09/11/2026)

| Base | String | Resultados | Controles recuperados |
|---|---|---|---|
| Scopus | Versão anterior (`A AND B`) | 454 | 2 de 4 primários |
| Scopus | Só o bloco A | 1.496 | (não testado) |
| Scopus | **Atual** (seção 7.2) | **882** | **4 de 4 primários e 3 de 3 revisões** |
| Web of Science | **Atual** (seção 7.2) | **494** | **4 de 4 primários e 3 de 3 revisões** (os 7 estão indexados) |
| IEEE Xplore | **Atual** (união de 4 sub-buscas) | **267** | **1 de 1 indexado** (Pastor-Galindo et al.) |
| ACM DL | **Atual** (seção 7.2) | **137** | **2 de 2 indexados** (Ghioni et al. e Browne et al.) |

No Web of Science, o acesso foi pelo Portal de Periódicos CAPES (CAFe/UnB), na Core Collection com todas as edições. Os controles foram testados com `( string ) AND DO=(...)`.

No IEEE Xplore, os controles foram procurados pelo DOI no conjunto de resultados. Só Pastor-Galindo et al. (2020) está indexado: a busca `"DOI":` pelos outros seis retornou 0. Como conferência, a string inteira numa busca só (27 curingas) também retornou 267 registros.

Na ACM DL, o acesso foi pelo Portal de Periódicos CAPES (CAFe/UnB). A busca avançada rodou no *ACM Guide to Computing Literature* (4.120.295 registros em 09/11/2026). Os controles foram testados com `( string ) AND DOI:( ... )`. A busca só pelos sete DOIs retornou 2 registros (Ghioni et al. e Browne et al.), e os dois foram recuperados. Como conferência, os ramos deram 79 (A e B) e 89 (A no título), coerentes com a união de 137.

## 8. Período e idioma

- **Período:** sem limite inferior, até a data da busca definitiva. Qualquer restrição de data, idioma ou fonte é registrada com a justificativa (KITCHENHAM; MADEYSKI; BUDGEN, 2023a, seção 4.3.1) e no histórico de versões.
- **Idiomas:** inglês e português, aplicados na triagem (CI4), e não como filtro nas bases.

## 9. Critérios de seleção

### Inclusão (todos devem ser atendidos)

| ID | Critério |
|---|---|
| CI1 | Trata de OSINT aplicada a investigação criminal, segurança pública ou atividade de inteligência |
| CI2 | Apresenta ferramenta, sistema, arquitetura ou método **ou** analisa requisitos, desafios ou riscos dessas ferramentas |
| CI3 | Publicado em periódico ou evento com **revisão por pares** |
| CI4 | Escrito em inglês ou português |

### Exclusão (basta um)

| ID | Critério |
|---|---|
| CE1 | OSINT apenas citada de passagem, sem ser objeto do estudo |
| CE2 | OSINT exclusivamente comercial ou de marketing, sem finalidade investigativa ou de inteligência |
| CE3 | Texto sem revisão por pares: preprint, tese, dissertação, relatório técnico, editorial, resumo, pôster ou tutorial |
| CE4 | Texto completo indisponível pela UnB/CAPES, por acesso aberto ou por pedido aos autores (pedido feito antes de excluir, com prazo registrado). Não conseguir acessar todos os relatos é uma limitação a discutir (PAGE et al., 2021b, item 23c) |
| CE5 | Duplicata (registro do mesmo relato) ou outro relato de um estudo já incluído. Os relatos de um mesmo estudo são analisados juntos, com a regra de escolha registrada (PAGE et al., 2021b, quadro 1 e item 9) |

**Verificação do CI3 artigo por artigo:** nas fontes nacionais e em eventos, o tipo do texto é conferido na triagem, porque um mesmo veículo pode ter mais de uma modalidade de revisão. Na RBI, a página de submissões declara arbitragem duplo-cega, "exceto no caso de artigos depositados em servidor de preprints", e o DOAJ registra para a revista revisão duplo-anônima e revisão aberta. Para esses artigos, a modalidade de revisão é conferida caso a caso.

**Estudos secundários** (revisões) que atendam aos critérios não entram como estudos primários: são analisados à parte, como trabalhos relacionados, e o relatório explica como contribuíram para a busca (KITCHENHAM; MADEYSKI; BUDGEN, 2023a, item 7 do SEGRESS).

**Literatura cinzenta.** Kitchenham, Madeyski e Budgen (2023b) argumentam que as diretrizes de revisão sistemática nunca excluíram a literatura cinzenta por princípio. A decisão cabe aos critérios de elegibilidade de cada revisão, e um estudo sem garantia de disponibilidade pública a longo prazo não deve ser usado como estudo primário. Esta revisão exige revisão por pares (CI3), por decisão do autor. O efeito disso sobre a cobertura entra nas ameaças à validade (seção 14).

## 10. Processo de seleção

1. Importar os resultados para o **Rayyan** (OUZZANI et al., 2016)
2. Remover duplicatas e registrar quantos registros saíram antes da triagem (PAGE et al., 2021b, item 16a)
3. **Calibração:** os dois revisores aplicam os critérios aos mesmos 20 a 30 registros, número recomendado por Polanin et al. (2019, diretriz 3), e discutem as divergências. Se necessário, os critérios são ajustados e registrados no histórico de versões
4. **Etapa 1:** R1 e R2 fazem a triagem de **todos** os registros por título, resumo e palavras-chave, de forma independente. Revisores independentes em busca, seleção, extração e avaliação de qualidade evitam o viés do pesquisador (KITCHENHAM; MADEYSKI; BUDGEN, 2023a, seção 2.2), e a triagem dupla tende a ser mais confiável que a simples (PAGE et al., 2021b, item 8). O Rayyan fica no modo cego (*Blind Mode*), que impede cada revisor de ver as decisões do outro e só é desligado depois que os dois terminam ([documentação do Rayyan](https://help.rayyan.ai/hc/en-us/articles/17460918624145-How-to-Use-Blind-Mode-in-Rayyan))
5. **Etapa 2:** R1 e R2 leem o texto completo de todos os estudos que passaram na etapa 1, também de forma independente
6. *Snowballing* iterativo (seção 6.3), com a mesma triagem dupla e independente
7. Registrar o motivo de cada exclusão na etapa 2, como exige o fluxograma PRISMA

**Concordância:** o SEGRESS pede que se informe como a concordância foi medida e que ela seja relatada (KITCHENHAM; MADEYSKI; BUDGEN, 2023a, itens 8 e 16a). Em cada etapa, a medida é o kappa de Cohen (COHEN, 1960), calculado sobre todas as decisões. As divergências são resolvidas por consenso entre R1 e R2, e cada uma é registrada.

## 11. Avaliação de qualidade

Instrumento de Dybå e Dingsøyr (2008, seção 3.5): 11 critérios baseados no *Critical Appraisal Skills Programme* (CASP) e em boas práticas de pesquisa empírica em engenharia de software, cobrindo rigor, credibilidade e relevância. Cada critério é respondido com sim ou não, como no original.

**Adaptação:** no original, o critério 1 serve para excluir estudos que não relatam pesquisa empírica. Aqui ele é só um item da nota, porque o CI2 admite propostas de ferramenta sem avaliação empírica. Adaptações de um instrumento existente devem ser informadas (PAGE et al., 2021b, item 11).

| ID | Pergunta | Critério de Dybå e Dingsøyr |
|---|---|---|
| AQ1 | O estudo relata pesquisa empírica, e não apenas lições aprendidas baseadas em opinião de especialista? | 1 |
| AQ2 | Os objetivos estão claramente relatados, com a justificativa do estudo? | 2 |
| AQ3 | O contexto em que a pesquisa foi feita está adequadamente descrito? | 3 |
| AQ4 | O desenho da pesquisa é adequado aos objetivos? | 4 |
| AQ5 | A amostra e a forma de identificá-la e recrutá-la estão adequadamente descritas? | 5 |
| AQ6 | Houve grupo de controle para comparar tratamentos? | 6 |
| AQ7 | Os métodos de coleta de dados são adequados e estão descritos? | 7 |
| AQ8 | Os métodos de análise dos dados estão adequadamente descritos? | 8 |
| AQ9 | A relação entre pesquisador e participantes foi considerada de forma adequada? | 9 |
| AQ10 | Os achados estão claramente declarados, com resultados críveis e conclusões justificadas? | 10 |
| AQ11 | O estudo tem valor para a pesquisa ou para a prática? | 11 |

R1 e R2 avaliam cada estudo de forma independente e resolvem as divergências por consenso. A pontuação (0 a 11) serve para **ponderar** a síntese, não para excluir estudos. Ponderar a importância de cada estudo na síntese é um dos usos da avaliação de qualidade relatados na engenharia de software, e o uso pretendido precisa ser declarado (KITCHENHAM; MADEYSKI; BUDGEN, 2023a, seção 2.3 e tabela 2).

## 12. Extração de dados

R1 extrai os dados de todos os estudos incluídos, e R2 confere a extração de todos eles, uma das formas descritas no PRISMA 2020 (PAGE et al., 2021b, item 9).

| Campo | Questão |
|---|---|
| Referência completa, ano, país, tipo de publicação | — |
| Tipo de estudo (proposta de ferramenta, estudo empírico, revisão, análise legal/ética) | — |
| Ferramenta ou sistema descrito e sua arquitetura | QP1 |
| Fontes de dados OSINT utilizadas | QP1 |
| Técnicas de IA e fase do ciclo de inteligência (planejamento, coleta, processamento, análise, difusão e avaliação, segundo Browne, Abedin e Chowdhury, 2024, seção 1) | QP2 |
| Requisitos e desafios legais, éticos, de privacidade e soberania | QP3 |
| Ameaças e riscos identificados e mitigações | QP4 |
| Método de avaliação e métricas | QP5 |
| Tratamento da evidência (preservação, cadeia de custódia, rastreabilidade) | QP5 |
| Nota de qualidade | Seção 11 |

## 13. Síntese

- **Mapeamento** (análise das características dos estudos, KITCHENHAM; MADEYSKI; BUDGEN, 2023a, seção 4.2): distribuição por ano, país, tipo de estudo, técnica de IA e fase do ciclo de inteligência (tabelas e gráficos)
- **Síntese temática** para cada questão de pesquisa, nas três etapas de Thomas e Harden (2008): codificação linha a linha, temas descritivos e temas analíticos
- **Rastreabilidade para o produto:** cada achado relevante vira um requisito candidato do buscador, ligando a revisão ao desenvolvimento

## 14. Ameaças à validade

- **Viés de publicação:** Pastor-Galindo et al. (2020, p. 10302) descrevem o uso de OSINT pelos órgãos policiais e de inteligência como aspecto confidencial do funcionamento desses órgãos, o que pode deixar ferramentas sem publicação. Exigir revisão por pares (CI3) também deixa de fora o que só sai fora desses veículos. Buscas amplas são a defesa contra o viés de publicação (KITCHENHAM; MADEYSKI; BUDGEN, 2023a, seção 2.2). A mitigação é triangular os resultados com a entrevista com o delegado
- **Terminologia:** termos inconsistentes fazem a busca em bases perder estudos relevantes, como no exemplo de Wohlin (2014, seção 3.1). O piloto calibra a string, e os artigos de controle verificam se ela recupera o que deve
- **Subjetividade da seleção:** mitigada pela triagem dupla e independente em todas as etapas (KITCHENHAM; MADEYSKI; BUDGEN, 2023a, seção 2.2), pela calibração e pelo kappa
- **Idioma:** só inglês e português; produção relevante em outros idiomas pode ficar de fora. A restrição de idioma é uma limitação do processo a discutir (PAGE et al., 2021b, item 23c)

## 15. Cronograma

| Data | Atividade |
|---|---|
| até 29/10 | Revisão do protocolo por R1 e R2; piloto das strings e dos artigos de controle |
| 30/10 | Buscas definitivas e exportação |
| 31/10 – 04/11 | Remoção de duplicatas, calibração e etapa 1 (R1 e R2) |
| 05/11 – 09/11 | Etapa 2 (R1 e R2) e *snowballing* |
| 10/11 – 12/11 | Avaliação de qualidade e extração |
| 13/11 – 15/11 | Síntese, fluxograma PRISMA e redação da seção |

## 16. Decisões tomadas e registro do protocolo

Decisões do autor em 10/11/2026:
1. Fontes nacionais (seção 6.2): sai a RBCP; entra a *Revista Brasileira de Criminalística*. No WoS, só a Core Collection, com o SciELO buscado diretamente.
2. Período (seção 8): sem recorte.
3. Extração (seção 12): R2 confere a extração de todos os estudos incluídos.
4. Registro: o protocolo não é registrado em base externa. Fica versionado no repositório do TCC, com o histórico de versões no início deste documento. O relato declara que a revisão não foi registrada e indica onde o protocolo pode ser acessado, como pede o PRISMA 2020 (PAGE et al., 2021a, itens 24a e 24b). No SEGRESS, o registro é opcional para todos os tipos de revisão (KITCHENHAM; MADEYSKI; BUDGEN, 2023a, item 24a).
5. Acesso à busca avançada da ACM DL pela UnB/CAPES: resolvida em 09/11/2026. Pelo Portal CAPES, a busca avançada abre e pesquisa o *ACM Guide to Computing Literature* (seção 7.5).

## Referências do protocolo

Links e forma de verificação em [referencias-verificadas.md](referencias-verificadas.md).

- BROWNE, T. O.; ABEDIN, M.; CHOWDHURY, M. J. M. A systematic review on research utilising artificial intelligence for open source intelligence (OSINT) applications. *International Journal of Information Security*, v. 23, n. 4, p. 2911–2938, 2024. DOI: [10.1007/s10207-024-00868-2](https://doi.org/10.1007/s10207-024-00868-2).
- COHEN, J. A coefficient of agreement for nominal scales. *Educational and Psychological Measurement*, v. 20, n. 1, p. 37–46, 1960. DOI: [10.1177/001316446002000104](https://doi.org/10.1177/001316446002000104).
- DYBÅ, T.; DINGSØYR, T. Empirical studies of agile software development: a systematic review. *Information and Software Technology*, v. 50, n. 9–10, p. 833–859, 2008. DOI: [10.1016/j.infsof.2008.01.006](https://doi.org/10.1016/j.infsof.2008.01.006).
- GHIONI, R.; TADDEO, M.; FLORIDI, L. Open source intelligence and AI: a systematic review of the GELSI literature. *AI & Society*, v. 39, n. 4, p. 1827–1842, 2024. DOI: [10.1007/s00146-023-01628-x](https://doi.org/10.1007/s00146-023-01628-x).
- KITCHENHAM, B.; MADEYSKI, L.; BUDGEN, D. SEGRESS: Software Engineering Guidelines for REporting Secondary Studies. *IEEE Transactions on Software Engineering*, v. 49, n. 3, p. 1273–1298, 2023a. DOI: [10.1109/TSE.2022.3174092](https://doi.org/10.1109/TSE.2022.3174092).
- KITCHENHAM, B.; MADEYSKI, L.; BUDGEN, D. How should software engineering secondary studies include grey material? *IEEE Transactions on Software Engineering*, v. 49, n. 2, p. 872–882, 2023b. DOI: [10.1109/TSE.2022.3165938](https://doi.org/10.1109/TSE.2022.3165938).
- OUZZANI, M. et al. Rayyan — a web and mobile app for systematic reviews. *Systematic Reviews*, v. 5, art. 210, 2016. DOI: [10.1186/s13643-016-0384-4](https://doi.org/10.1186/s13643-016-0384-4).
- PAGE, M. J. et al. The PRISMA 2020 statement: an updated guideline for reporting systematic reviews. *BMJ*, v. 372, n71, 2021a. DOI: [10.1136/bmj.n71](https://doi.org/10.1136/bmj.n71).
- PAGE, M. J. et al. PRISMA 2020 explanation and elaboration: updated guidance and exemplars for reporting systematic reviews. *BMJ*, v. 372, n160, 2021b. DOI: [10.1136/bmj.n160](https://doi.org/10.1136/bmj.n160).
- PASTOR-GALINDO, J. et al. The not yet exploited goldmine of OSINT: opportunities, open challenges and future trends. *IEEE Access*, v. 8, p. 10282–10304, 2020. DOI: [10.1109/ACCESS.2020.2965257](https://doi.org/10.1109/ACCESS.2020.2965257).
- POLANIN, J. R. et al. Best practice guidelines for abstract screening large-evidence systematic reviews and meta-analyses. *Research Synthesis Methods*, v. 10, n. 3, p. 330–342, 2019. DOI: [10.1002/jrsm.1354](https://doi.org/10.1002/jrsm.1354).
- RETHLEFSEN, M. L. et al. PRISMA-S: an extension to the PRISMA Statement for Reporting Literature Searches in Systematic Reviews. *Systematic Reviews*, v. 10, art. 39, 2021. DOI: [10.1186/s13643-020-01542-z](https://doi.org/10.1186/s13643-020-01542-z).
- THOMAS, J.; HARDEN, A. Methods for the thematic synthesis of qualitative research in systematic reviews. *BMC Medical Research Methodology*, v. 8, art. 45, 2008. DOI: [10.1186/1471-2288-8-45](https://doi.org/10.1186/1471-2288-8-45).
- WOHLIN, C. Guidelines for snowballing in systematic literature studies and a replication in software engineering. In: INTERNATIONAL CONFERENCE ON EVALUATION AND ASSESSMENT IN SOFTWARE ENGINEERING (EASE), 18., 2014. *Proceedings* [...]. ACM, 2014. p. 1–10. DOI: [10.1145/2601248.2601268](https://doi.org/10.1145/2601248.2601268).
