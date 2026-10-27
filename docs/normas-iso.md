# Normas ISO/IEC aplicáveis ao TCC

Levantamento das normas que sustentam a monografia e orientam decisões no código.
Situação conferida em 27/10/2026. Antes de citar na monografia, confirmar a edição
vigente no catálogo da ISO e verificar se existe versão ABNT NBR (preferível em
trabalho brasileiro).

**Legenda de situação:** ✅ publicada e conferida · 🟡 em aprovação (FDIS/DIS), citar como projeto · 🔎 a conferir

## 1. Núcleo — trazidas pelo orientador

| Norma | Título resumido | Situação | Papel na monografia | Aplicação no código |
|---|---|---|---|---|
| ISO/IEC 42001:2023 | Sistema de gestão de IA (AIMS) | ✅ | Referencial de governança do uso de IA, tanto no produto quanto no processo AI-First | Inventário dos componentes de IA, política de uso, registro de decisões, supervisão humana |
| ISO/IEC 23894:2023 | Orientações para gestão de riscos de IA (baseada na ISO 31000) | ✅ | Método da análise de riscos do buscador | Matriz de riscos → requisitos: citação de fonte, nível de confiança, confirmação pelo analista |
| ISO/IEC 27090 | Segurança cibernética de IA: ameaças e falhas em sistemas de IA | 🟡 FDIS, em publicação | Modelo de ameaças específicas de IA (envenenamento, evasão, inferência, roubo de modelo) | Defesa contra prompt injection indireta vinda das páginas coletadas, validação de saída, isolamento do modelo |

## 2. Complementares — recomendadas

### Evidência digital e investigação (ligação direta com o uso policial)

| Norma | Título resumido | Situação | Papel na monografia | Aplicação no código |
|---|---|---|---|---|
| ISO/IEC 27037:2012 | Identificação, coleta, aquisição e preservação de evidência digital | ✅ | Requisitos para que o resultado do OSINT tenha valor probatório (cadeia de custódia) | Hash de cada item coletado, data/hora e URL de origem, captura imutável, trilha de auditoria |
| ISO/IEC 27042:2015 | Análise e interpretação de evidência digital | ✅ | Repetibilidade e reprodutibilidade das análises, inclusive as feitas por IA | Registrar modelo, versão e prompt usados em cada análise |
| ISO/IEC 27041:2015 | Garantia de adequação de métodos de investigação | ✅ | Justificar que a ferramenta é adequada ao propósito | Testes de validação do buscador |
| ISO/IEC 27043:2015 | Princípios e processos de investigação de incidentes | ✅ | Encaixe do buscador no processo investigativo | Fluxo de trabalho do analista |

### Segurança da informação e privacidade

| Norma | Título resumido | Situação | Papel na monografia | Aplicação no código |
|---|---|---|---|---|
| ISO/IEC 27001:2022 | Sistema de gestão de segurança da informação | ✅ | Base de segurança à qual a 27090 se soma | Controle de acesso, criptografia, registros |
| ISO/IEC 27002:2022 | Controles de segurança da informação | ✅ | O controle 5.7 (inteligência de ameaças) conecta OSINT a ciberataques | Checklist de controles na arquitetura |
| ISO/IEC 27701:2025 | Gestão da privacidade (agora independente da 27001) | ✅ | Dados pessoais coletados por OSINT; ponte com a LGPD | Minimização, retenção e descarte de dados |
| ISO/IEC 27091 | Privacidade em sistemas de IA | 🟡 FDIS, em aprovação | Riscos de privacidade específicos de IA | Não enviar dados pessoais desnecessários ao modelo |

### IA: conceitos, ciclo de vida, qualidade e impacto

| Norma | Título resumido | Situação | Papel na monografia | Aplicação no código |
|---|---|---|---|---|
| ISO/IEC 22989:2022 | Conceitos e terminologia de IA | ✅ | Glossário e definições formais | — |
| ISO/IEC 5338:2023 | Processos de ciclo de vida de sistemas de IA | ✅ | Base teórica do processo de engenharia AI-First | Organização das etapas de desenvolvimento |
| ISO/IEC 42005:2025 | Avaliação de impacto de sistemas de IA | ✅ | Avaliação de impacto sobre investigados e sociedade | Documento de avaliação de impacto no repositório |
| ISO/IEC 25059:2023 | Modelo de qualidade para sistemas de IA (estende a 25010) | ✅ (em revisão) | Critérios de avaliação do app: transparência, controlabilidade, robustez | Métricas de avaliação |
| ISO/IEC 38507:2022 | Governança do uso de IA pelas organizações | ✅ | Como o órgão policial deveria governar a adoção | — |

### Nuvem e soberania de dados

| Norma | Título resumido | Situação | Papel na monografia | Aplicação no código |
|---|---|---|---|---|
| ISO/IEC 27017 / 27018 | Segurança em nuvem / dados pessoais em nuvem | 🔎 conferir edição vigente | Riscos de usar LLM e infraestrutura de nuvem estrangeira | Decisão nuvem × modelo local |
| ISO/IEC 27036 | Segurança na relação com fornecedores | 🔎 conferir edição vigente | Dependência de fornecedores de IA (soberania, FinOps) | Camada de abstração para trocar de fornecedor de modelo |

## 3. Fora das ISOs, mas necessárias

- **FinOps:** não existe ISO própria. Referências: FinOps Framework e especificação FOCUS (FinOps Foundation).
- **Marco legal brasileiro:** LGPD (Lei 13.709/2018; observar a exceção do art. 4º para segurança pública), Marco Civil da Internet (Lei 12.965/2014) e o PL 2338/2023 (marco regulatório da IA). Conferir a tramitação atual antes de citar.

## Observações

- Normas ISO são pagas. Verificar se a Biblioteca Central da UnB oferece acesso (muitas universidades assinam a coleção ABNT/ISO).
- Normas em FDIS/DIS (27090, 27091) devem ser citadas como projeto de norma, com a data da versão consultada.
- Proposta de recorte: o **núcleo** e a família **27037/27042** entram com profundidade; as demais aparecem na fundamentação teórica e no mapeamento de conformidade.
