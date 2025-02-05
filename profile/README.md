# Virtual Patient AI

Medical AI platform evolving from clinically-tested AR surgery systems into AI-powered patient care. Built on MedlibreGPT technology with secure local and cloud LLM integration.

# Austrian Research Promotion Agency (FFG)
# [Community Hub Project Link](https://communityhub.tec-connect.at/participations/442979)

The Virtual Patient AI System comprises a suite of integrated technologies designed to deliver comprehensive healthcare solutions. It augments clinical decision-making while preserving practitioner autonomy and patient privacy. Central to this system is the Virtual Patient BRAIN integrating the patients medical history, powered by the on-premises LLM model, ensuring enhanced control and security. Clinical guidelines are seamlessly incorporated through Retrieval-Augmented Generation (RAG) via locally-hosted MedlibreGPT, our specialized adaptation of PrivateGPT. Online patient consultations are facilitated by AI-Twin Chatbots, which accurately emulate healthcare practitioners' expertise.

## Core Components

### MedlibreGPT Engine
- Built on PrivateGPT foundation
- Integrated with Nextcloud for secure data management
- Hybrid model supporting both cloud (OpenAI, Mistral) and local LLM deployment
- RAG-enhanced medical literature processing

### AI-Twin Technology
- Physician-specific knowledge modeling
- Custom chatbot creation based on individual medical expertise
- Enhanced virtual consultation capabilities

### Security & Privacy
- On-premises Nextcloud storage
- Local LLM operation capability
- Domain-specific medical processing
- Network-independent operation option

## System Architecture

### 1. Interaction Layer
- Email/SMS communication
- QR + PIN authentication
- Encrypted data transmission
- Activity logging

### 2. Patient Layer
- Medlibre Copilot web widget
- Real-time assessment tools
- Structured data collection
- Natural language interface

### 3. Solutions Layer
- Nextcloud prompt management
- Dynamic AI response system
- Clinical protocol integration

### 4. AI Layer
- Local Mistral deployment
- GPT-4 cloud integration
- Medical literature RAG
- Parallel query processing

### 5. Data Layer
- PostgreSQL + Nextcloud integration
- HIPAA-compliant storage
- Flexible deployment options

## Technical Requirements

- Docker + Docker Compose
- PostgreSQL 13+
- Python 3.9+
- Node.js 16+
- Nextcloud server
- Optional: GPU for local LLM

## Contact

EURODOC Telemedizin Forschungsgesellschaft mbH
Albertgasse 3/6
1080 Wien
Österreich

Unternehmensgegenstand: IT Dienstleistungen
UID-Nummer: ATU43902700
Firmenbuchnummer: FN 161768 w
Firmenbuchgericht: Wien
Firmensitz: Wien

Tel.: +43 1 4089500
E-Mail: office@eurodoc.at


