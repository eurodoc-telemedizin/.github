# Virtual Patient AI

Medical AI platform evolving from clinically-tested AR surgery systems into AI-powered patient care. Built on MedlibreGPT technology with secure local and cloud LLM integration.

# Austrian Research Promotion Agency (FFG)
# [Community Hub Project Link](https://communityhub.tec-connect.at/participations/442979)

# AlignGuard
AlignGuard, the first practical application of the Virtual Patient AI Ecosystem, revolutionizes orthodontic and implant treatment through AI-driven precision. MedlibreGPT is an open source fork of PrivateGPT and integrates DeepSeekR1 as LLM. This end-to-end solution combines real-time symptom assessment, 3D treatment simulation and compliance monitoring (23-hour wearing of aligners) with interdisciplinary expertise for balanced esthetic and functional outcomes. It is based on a secure, five-tier open-source architecture - with GDPR/HIPAA-compliant data processing and hybrid AI (MedlibreGPT) - and integrates seamlessly into clinical workflows.

AlignGuard 是虚拟患者人工智能生态系统的首个实际应用，它通过人工智能驱动的精准度彻底改变了正畸和种植治疗。MedlibreGPT是PrivateGPT的开源分叉，集成了DeepSeekR1作为LLM。这一端到端解决方案将实时症状评估、三维治疗模拟和依从性监测（23 小时佩戴矫治器）与跨学科专业技术相结合，实现了美学与功能的平衡。它基于安全的五层开源架构--符合 GDPR/HIPAA 的数据处理和混合人工智能（MedlibreGPT）--可无缝集成到临床工作流程中。


The Virtual Patient AI System comprises a suite of integrated technologies designed to deliver comprehensive healthcare solutions. It augments clinical decision-making while preserving practitioner autonomy and patient privacy. Central to this system is the Virtual Patient BRAIN integrating the patients medical history, powered by the on-premises MISTRAL LLM model, ensuring enhanced control and security. Clinical guidelines are seamlessly incorporated through Retrieval-Augmented Generation (RAG) via locally-hosted MedlibreGPT, our specialized adaptation of PrivateGPT. Online patient consultations are facilitated by AI-Twin Chatbots, which accurately emulate healthcare practitioners' expertise.

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


