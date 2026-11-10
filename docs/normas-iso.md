# Normas ISO/IEC aplicáveis ao TCC

Levantamento das normas que sustentam a monografia e orientam decisões no código.

**Verificação de 27/10/2026:**
- Situação, edição e data de cada norma foram conferidas na página oficial do iso.org (link na coluna "Norma").
- As versões ABNT NBR foram conferidas no [ABNT Catálogo](https://www.abntcatalogo.com.br/). Quando há versão ABNT, ela é preferível em trabalho brasileiro.
- "ABNT: não localizada" quer dizer que a norma não apareceu na busca do catálogo, não que ela não exista.

**Legenda:** ✅ publicada e vigente · 🔄 vigente, mas em revisão sistemática ou com nova edição em preparação · 🟡 projeto de norma (FDIS/DIS), citar como projeto

## 1. Núcleo — trazidas pelo orientador

| Norma | Título resumido | Situação | ABNT | Papel na monografia | Aplicação no código |
|---|---|---|---|---|---|
| [ISO/IEC 42001:2023](https://www.iso.org/standard/81230.html) | Sistema de gestão de IA (AIMS) | ✅ publicada em 12/2023 | ABNT NBR ISO/IEC 42001:2024 | Referencial de governança do uso de IA, tanto no produto quanto no processo AI-First | Inventário dos componentes de IA, política de uso, registro de decisões, supervisão humana |
| [ISO/IEC 23894:2023](https://www.iso.org/standard/77304.html) | Orientações para gestão de riscos de IA | ✅ publicada em 02/2023 | ABNT NBR ISO/IEC 23894:2023 | Método da análise de riscos do buscador | Matriz de riscos → requisitos: citação de fonte, nível de confiança, confirmação pelo analista |
| [ISO/IEC 27090:2026](https://www.iso.org/standard/56581.html) | Segurança cibernética de IA: ameaças e comprometimentos de sistemas de IA | ✅ **publicada em 10/2026** (1ª edição) | Não localizada | Modelo de ameaças específicas de IA | Defesa contra prompt injection indireta vinda das páginas coletadas, validação de saída, isolamento do modelo |

## 2. Complementares — recomendadas

### Evidência digital e investigação (ligação direta com o uso policial)

| Norma | Título resumido | Situação | ABNT | Papel na monografia | Aplicação no código |
|---|---|---|---|---|---|
| [ISO/IEC 27037:2012](https://www.iso.org/standard/44381.html) | Identificação, coleta, aquisição e preservação de evidência digital | 🔄 vigente, em revisão sistemática (90.60) | **ABNT NBR ISO/IEC 27037:2013** | Requisitos para que o resultado do OSINT tenha valor probatório (cadeia de custódia) | Hash de cada item coletado, data/hora e URL de origem, captura imutável, trilha de auditoria |
| [ISO/IEC 27042:2015](https://www.iso.org/standard/44406.html) | Análise e interpretação de evidência digital | 🔄 vigente, em revisão sistemática (90.60) | Não localizada | Repetibilidade e reprodutibilidade das análises, inclusive as feitas por IA | Registrar modelo, versão e prompt usados em cada análise |
| [ISO/IEC 27041:2015](https://www.iso.org/standard/44405.html) | Garantia de adequação de métodos de investigação | 🔄 vigente, em revisão sistemática (90.60) | Não localizada | Justificar que a ferramenta é adequada ao propósito | Testes de validação do buscador |
| [ISO/IEC 27043:2015](https://www.iso.org/standard/44407.html) | Princípios e processos de investigação de incidentes | 🔄 vigente, em revisão sistemática (90.60) | Não localizada | Encaixe do buscador no processo investigativo | Fluxo de trabalho do analista |

### Segurança da informação e privacidade

| Norma | Título resumido | Situação | ABNT | Papel na monografia | Aplicação no código |
|---|---|---|---|---|---|
| [ISO/IEC 27001:2022](https://www.iso.org/standard/82875.html) + [Amd 1:2024](https://www.iso.org/standard/88435.html) | Sistema de gestão de segurança da informação | ✅ publicada em 10/2022; a emenda 1 (02/2024) trata de mudanças climáticas | ABNT NBR ISO/IEC 27001:2022 (versão corrigida 2023) + Emenda 1:2024 | Base de segurança à qual a 27090 se soma | Controle de acesso, criptografia, registros |
| [ISO/IEC 27002:2022](https://www.iso.org/standard/75652.html) | Controles de segurança da informação | ✅ publicada em 02/2022 | ABNT NBR ISO/IEC 27002:2022 | Checklist de controles; o controle de inteligência de ameaças liga OSINT a ciberataques (número e texto do controle **a conferir** na norma) | Checklist de controles na arquitetura |
| [ISO/IEC 27701:2025](https://www.iso.org/standard/85819.html) | Sistema de gestão da privacidade da informação | ✅ 2ª edição, publicada em 10/2025 | ABNT NBR ISO/IEC 27701:2026 | Dados pessoais coletados por OSINT; ponte com a LGPD. A edição de 2019 era uma "extensão da 27001 e da 27002"; a de 2025 especifica requisitos para um sistema de gestão da privacidade próprio | Minimização, retenção e descarte de dados |
| [ISO/IEC FDIS 27091](https://www.iso.org/standard/56582.html) | Privacidade em sistemas de IA | 🟡 FDIS registrado para aprovação (50.00) | — | Riscos de privacidade específicos de IA; citar como projeto de norma, com a data da consulta | Não enviar dados pessoais desnecessários ao modelo |

### IA: conceitos, ciclo de vida, qualidade e impacto

| Norma | Título resumido | Situação | ABNT | Papel na monografia | Aplicação no código |
|---|---|---|---|---|---|
| [ISO/IEC 22989:2022](https://www.iso.org/standard/74296.html) | Conceitos e terminologia de IA | ✅ publicada em 07/2022; a [emenda 1, sobre IA generativa](https://www.iso.org/standard/88145.html), está em FDIS (50.00) | ABNT NBR ISO/IEC 22989:2023 | Glossário e definições formais | — |
| [ISO/IEC 5338:2023](https://www.iso.org/standard/81118.html) | Processos de ciclo de vida de sistemas de IA | ✅ publicada em 12/2023 | Não localizada | Base teórica do processo de engenharia AI-First | Organização das etapas de desenvolvimento |
| [ISO/IEC 42005:2025](https://www.iso.org/standard/44545.html) | Avaliação de impacto de sistemas de IA | ✅ publicada em 05/2025 | Não localizada | Avaliação de impacto sobre investigados e sociedade | Documento de avaliação de impacto no repositório |
| [ISO/IEC 25059:2023](https://www.iso.org/standard/80655.html) | Modelo de qualidade para sistemas de IA (estende a 25010) | 🔄 vigente, mas a ISO decidiu revisá-la (90.92); a [2ª edição](https://www.iso.org/standard/88234.html) já está em FDIS (50.00) | Não localizada | Critérios de avaliação do app: transparência, controlabilidade, robustez | Métricas de avaliação |
| [ISO/IEC 38507:2022](https://www.iso.org/standard/56641.html) | Governança do uso de IA pelas organizações | ✅ publicada em 04/2022 | ABNT NBR ISO/IEC 38507:2023 | Como o órgão policial deveria governar a adoção | — |

### Nuvem e soberania de dados

| Norma | Título resumido | Situação | ABNT | Papel na monografia | Aplicação no código |
|---|---|---|---|---|---|
| [ISO/IEC 27017:2026](https://www.iso.org/standard/82878.html) | Controles de segurança para serviços em nuvem | ✅ 2ª edição, publicada em 07/2026 | A ABNT NBR ISO/IEC 27017:2016 corresponde à edição anterior | Riscos de usar LLM e infraestrutura de nuvem estrangeira | Decisão nuvem × modelo local |
| [ISO/IEC 27018:2025](https://www.iso.org/standard/88150.html) | Proteção de dados pessoais em nuvens públicas | ✅ publicada em 08/2025 | ABNT NBR ISO/IEC 27018:2026 | Dados pessoais processados por provedores de nuvem e de IA | Escolha e contrato do provedor |
| [ISO/IEC 27036-1:2021](https://www.iso.org/standard/82905.html), [-2:2022](https://www.iso.org/standard/82060.html), [-3:2023](https://www.iso.org/standard/82890.html), [-4:2016](https://www.iso.org/standard/59689.html) | Segurança na relação com fornecedores (parte 4: serviços em nuvem) | ✅ partes 2 e 3 publicadas; 🔄 parte 1 em revisão sistemática (90.20); parte 4 confirmada (90.93) | ABNT NBR ISO/IEC 27036-1:2025, 27036-2:2025 e 27036-3:2025 | Dependência de fornecedores de IA (soberania, FinOps) | Camada de abstração para trocar de fornecedor de modelo |

## 3. Fora das ISOs, mas necessárias

- **FinOps:** não existe ISO própria. Referências: [FinOps Framework](https://www.finops.org/framework/) e especificação [FOCUS](https://focus.finops.org/), da FinOps Foundation. As duas páginas foram abertas em 28/10/2026. A versão vigente do FOCUS é a 1.4 (anunciada no site oficial; lançada em 04/06/2026, segundo as [releases oficiais](https://github.com/FinOps-Open-Cost-and-Usage-Spec/FOCUS_Spec/releases)). São documentos técnicos, não acadêmicos: servem para definir termos e práticas, não como evidência científica.
- **Marco legal brasileiro** (conferido em 28/10/2026):
  - [LGPD, Lei 13.709/2018](https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709.htm): pelo art. 4º, III, a lei **não se aplica** ao tratamento de dados feito para fins exclusivos de segurança pública, defesa nacional, segurança do Estado ou investigação e repressão de infrações penais. O § 1º diz que esse tratamento "será regido por legislação específica", que deve observar os princípios gerais de proteção e os direitos do titular previstos na LGPD. Isso afeta diretamente o buscador OSINT e precisa ser discutido na monografia.
  - [Marco Civil da Internet, Lei 12.965/2014](https://www.planalto.gov.br/ccivil_03/_ato2011-2014/2014/lei/l12965.htm).
  - **PL 2338/2023** (marco legal da IA): ainda **não é lei**. Foi aprovado no [Senado](https://www25.senado.leg.br/web/atividade/materias/-/materia/157233) e remetido à Câmara em 17/03/2025. Na [Câmara](https://www.camara.leg.br/proposicoesWeb/fichadetramitacao?idProposicao=2487262), a situação em 27/10/2026 era "Aguardando Parecer". Deve ser citado como projeto de lei, com a data da consulta.

## Observações

- Normas ISO são pagas. Verificar se a Biblioteca Central da UnB oferece acesso (muitas universidades assinam a coleção ABNT/ISO).
- A 27091 está em FDIS e deve ser citada como projeto de norma, com a data da versão consultada. A 27090 já foi publicada (10/2026) e deve ser citada como norma.
- Proposta de recorte: o **núcleo** e a família **27037/27042** entram com profundidade; as demais aparecem na fundamentação teórica e no mapeamento de conformidade.
