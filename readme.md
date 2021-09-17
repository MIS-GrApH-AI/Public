![GrApH AI](img/thumbnail_group_name.png)  

<!-- TABLE OF CONTENTS -->
1. [Introduction](#introduction)
2. [Critical Path](#critical-path)

***
<a name="introduction"></a>

## 1. Introduction
The emerging uses of artificial intelligence are transforming many industries, but the healthcare sector lags behind this progress partly because the production databases holding patient data are too poorly organized to run artificial intelligence algorithms online. Instead, research centers are creating isolated, curated databases to develop proof-of-concept algorithms. This work is daily producing impressive results that demonstrate the potential utility of artificial intelligence in healthcare, but these results rarely make it from the research database to be applied to the online databases that support day-to-day patient care. To address this problem, we have organized an open, sharing community of physicians, data scientists, data engineers, software engineers, students, and others inspired by a common vision: to make healthcare data AI-friendly from the ground up.

We are working use-case by use-case with real patient data to build a foundation of knowledge, a toolkit, and a corps of colleagues to act as a springboard for real-world implementations. In addition to use cases, we work to address global issues such as human-machine interfaces and knowledge graphing. 

We currently have a single shared [Neo4j](https://github.com/MIS-GrApH-AI/Public/wiki/Coding-standards-&-Conventions) database holding anonymized patient data and the early stages of a knowledge graph, hosted in San Diego, California. We communicate through Slack and regularly scheduled working group meetings. Our code is pushed to GitHub under the MIT license, which means we allow anyone to build upon our work even in proprietary, commercial products. We support those who want to go out and make things happen in the real world, and we would love to have you join us.

You can also visit our [website](https://www.misociety.org/graph-working-group). 

***
<a name="critical-path"></a>

## 2. Critical Path  
### Overall Mission:  
Apply graph technology to make the world's medical data AI-friendly from the ground up 
  
---
### Program: Embed the world's medical knowledge into a knowledge graph
- Program infrastructure
  - Database hosting
  - Collaboration tools
  - Governance
  - Team leadership, skill resourcing, participation

#### [Project: Incorporate existing data sources into a UMLS-based knowledge graph](https://github.com/MIS-GrApH-AI/Public/projects/1)  
- Milestones (chunks of work completable in ~2-weeks):   
  - Develop a data model that maps RxNorm, MED-RT, and MeSH relationships onto a base of UMLS concepts
  - Identify a core of unique logical relationship types independent of spoken language, and map synonyms from multiple languages to these unique relationship types
  - Import RxNorm, MED-RT, and MeSH
  - Fulfill 1 or more use cases that become possible given the new knowledge graph
  - Package the knowledge graph creation process in a conventiently repeatable way
  - Create an API for public access to the knowledge graph
  - Reflect on and publish lessons learned 

#### [Project: Extract relationships among UMLS concepts from the world's medical literature](https://github.com/MIS-GrApH-AI/Public/projects/2)  
- Milestones:
  - Create a deep learning model to extract subject-predicate-object triples from the sentences in SemMedDB
    1. Pre-train a deep learning model using SemMedDB
    2. Have the DL model annotate subject-predicate-object triples
    3. Crowdsource human corrections to the model’s annotations (ask medical schools, pre-med student groups/clubs, for help with annotation)
    4. Retrain the model on new data coming in from the human crowd
    5. Repeat steps 2-4 until human annotators no longer need to correct the DL model’s annotations

  - Apply the deep learning model to all of the world's medical literature and assess performance
  - Incorporate the subject-predicate-object identified by the deep learning model into the main knowledge graph
  - Fulfill 1 or more use cases that become possible given the improved knowledge graph
  - Package the deep learning model for scraping medical literature in a conventiently repeatable way
  - Reflect on and publish lessons learned 

#### Project: Create a public interface for the knowledge graph that allows users to review, discuss, and make edits. Professional reviewers can validate user edits. 

#### Project: Apply causal inference to derive causal relationships from patient data

---
### Program: Build a graph model for patient data that supports interoperability
- Program infrastructure and project enablement
  - Database hosting
  - Collaboration tools
  - Governance
  - Team leadership, skill resourcing, participation

#### Project: Place MIMIC-III data in OMOP format in a graph
- Milestones:
  - Use what has already been built by: https://github.com/MIT-LCP/mimic-omop and https://github.com/NUSCRIPT/OMOP_to_Graph to create an early prototype
  - Roadmap key deliverables necessary to complete the project
  - Coordinate with NUSCRIPT and MIT-LCP to complete the deliverables
  - Fulfill 1 or more use cases that become possible given the new data model in graph form
  - Package the import code and the database in a conventiently reusable way
  - Reflect on and publish lessons learned 

---
### Program: Incorporate multi-modal data including imaging, time-series data, genomics, metabolomics, etc.
- Program infrastructure and project enablement
  - Database hosting
  - Collaboration tools
  - Governance
  - Team leadership, skill resourcing, participation

---
### Program: Process medical data in streaming form in addition to batch to deal with real-time work

---
### Program: Partner to apply a clinical use case in a real-world clinical setting
- Program infrastructure
  - Database hosting
  - Collaboration tools
  - Governance
  - Partnerships
  - Funding

---
### Continuous contributions:  
- Identify the world's best tools for any given task
- Share experiences of healthcare and health data from diverse locations around the world
- Lower the barriers for participation
