# the24
yet another project project


# The 24 | High-Performance Trading Data Bridge

**Architect:** Charles A. Lopez  
**Stack:** C# / .NET 8, Redis Stack, Docker

## The Vision
"The 24" is a high-fidelity data bridge designed to solve the "Signal Interrupt" problem in high-frequency trading environments. 

Drawing from 25 years of mission-critical systems architecture (Con Edison, Dell, U.S. Army Corps of Engineers), this project bridges the gap between legacy infrastructure reliability and modern, low-latency engineering requirements.

## Key Architectural Features
- **The "Bulletproof Bridge":** A C# ingestion layer designed for zero-jitter data throughput.
- **Signal Continuity (LERP):** Implements Linear Interpolation logic to "fill the gaps" in intermittent data streams, ensuring a continuous 24-tick-per-second baseline for downstream consumers.
- **In-Memory Scale:** Leverages **Redis** (specifically RedisTimeSeries) for high-speed state persistence and real-time analytical queries.
- **Cloud-Agnostic Design:** Fully containerized via Docker to support seamless deployment across Azure, Oracle Cloud (OCI), or on-premise hardware.

## Why "The 24"?
The name is a nod to a legacy systems-programming milestone: achieving a cinematic 24 FPS rendering engine using Borland C++ and TASM in a resource-constrained 1990s environment. This project remasters that low-level optimization mindset for the modern distributed stack.

## Getting Started

### Prerequisites
- Docker Desktop
- A running Redis instance (or use the provided `docker-compose`)

### Local Deployment
1. **Clone the repo:**
   ```bash
   git clone https://github.com/your-username/the-24-bridge.git
