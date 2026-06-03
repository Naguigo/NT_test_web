# NT_test_web — Automação de Busca do Blog Agibank .

Automação de testes de aceitação/end-to-end para o blog do Agibank utilizando **Robot Framework + Browser (Playwright)**.  
Este repositório usa Page Objects, captura de evidências (screenshots, vídeo, trace) e está configurado com pipeline CI via GitHub Actions.  

---

## ✅ Objetivos do Projeto

- Validar a funcionalidade de busca do blog Agibank (`https://blog.agibank.com.br`).  
- Garantir que termos válidos retornem artigos.  
- Garantir que buscas com termos inválidos mostrem mensagem de “nenhum resultado”.  
- Fornecer evidências das execuções (vídeo, screenshot, trace) para facilitar debugging e reporte.  

---

## 📁 Estrutura do Repositório

NT_test_web/
│
├── pages/ # Page Objects (seletores e keywords)
│ └── BlogHomePage.robot
│
├── tests/ # Test suites Robot Framework
│ └── blog_search.robot
│
├── .github/
│ └── workflows/
│ └── tests.yml # GitHub Actions pipeline
│
├── requirements.txt # Dependências Python / Robot
├── README.md # Este arquivo
└── output/ # Evidências da execução (screenshot, vídeo, trace)


## 🛠 Tecnologias Utilizadas

- **Robot Framework**  
- **Browser Library** (baseada no Playwright)  
- **Python 3.x**  
- **GitHub Actions** — para CI/CD  

---

## 📥 Como Configurar e Executar Localmente

1. Clone o repositório  
   ```bash
   git clone https://github.com/Naguigo/NT_test_web.git
   cd NT_test_web


2. Instale as dependências

pip install -r requirements.txt


3. Inicialize os drivers do Browser Library / Playwrigh

rfbrowser init


4. Execute os testes

robot tests/
Arquivos de saída (relatórios, vídeos, screenshots, trace) serão gerados automaticamente na pasta output/.

🧪 Cenários de Teste Automatizados
Caso de Teste	Descrição
Buscar termo existente	Valida que ao usar um termo válido (ex: “cartão”) a busca retorna pelo menos 1 artigo.
Buscar termo inexistente	Valida que ao usar um termo aleatório que não existe, é exibida mensagem de “Nenhum resultado encontrado”.

📸 Evidências e Logs
O projeto está configurado para gravar:

📷 Screenshots

🧾 Trace completo do Playwright

Essas evidências ajudam na análise de falhas e no debug de testes.

🔄 Integração Continua — GitHub Actions
O pipeline define:

Checkout do repositório

Setup do Python

Instalação de dependências + inicialização do Browser

Execução dos testes Robot

Upload de artefatos (relatórios, trace)

Arquivo de pipeline: .github/workflows/tests.yml.

✅ Boas Práticas e Recomendação
Usar Page Objects para evitar repetição de seletores.

Evitar seletores “deep & frágeis” — priorizar selectores estáveis (classes, atributos).

Garantir que testes sejam re-executáveis: limpar cache, estados, usar contextos isolados.

Manter evidências de falha para facilitar debug (screenshots, vídeos, trace).

Versionar dependências e documentar ambiente mínimo (versão Python, bibliotecas necessárias)..
