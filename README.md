<a id="readme-top"></a>

[![Stars][stars-shield]][stars-url]
[![Forks][forks-shield]][forks-url]
[![Watchers][watchers-shield]][watchers-url]
[![Contributors][contributors-shield]][contributors-url]
[![Commit Activity][commitactivity-shield]][commitactivity-url]
[![Last Commit][lastcommit-shield]][lastcommit-url]
[![Issues][issues-shield]][issues-url]
[![License][license-shield]][license-url]

<br />
<div align="center">
<h2 align="center">Hyperledger Besu Network Configuration</h3>
  <p align="center">
    A fully configured, ready-to-launch Docker-based Hyperledger Besu network configuration with 4 nodes
    <br />
    <a href="https://github.com/fraunhofer-iml/hyperledger-besu-network-configuration/issues/new?labels=bug&template=bug-report---.md">🐞 Report Bug</a> &middot;
    <a href="https://github.com/fraunhofer-iml/hyperledger-besu-network-configuration/issues/new?labels=enhancement&template=feature-request---.md">💡 Request Feature</a>
  </p>
</div>

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">📚 About The Project</a>
      <ul><li><a href="#description">📄 Description</a></li></ul>
      <ul><li><a href="#built-with">🛠️ Built With</a></li></ul>
    </li>
    <li>
      <a href="#getting-started">🚀 Getting Started</a>
      <ul><li><a href="#spin-up-the-network">🌐 Spin Up The Network</a></li></ul>
      <ul><li><a href="#add-a-new-node">➕ Add A New Key Pair</a></li></ul>
      <ul><li><a href="#node-configuration">⚙️ Node Configuration</a></li></ul>
      <ul><li><a href="#port-number-mapping">🔌 Port Number Mapping</a></li></ul>
      <ul><li><a href="#postman-api-collection">📦 Postman API Collection</a></li></ul>
    </li>
    <li>
      <a href="#contributing">🤝 Contributing</a>
      <ul><li><a href="#getting-involved">🌟 Getting Involved</a></li></ul>
      <ul><li><a href="#top-contributors">🏆 Top Contributors</a></li></ul>
    </li>
    <li><a href="#license">📜 License</a></li>
    <li><a href="#contact">📬 Contact</a></li>
    <li><a href="#acknowledgments">🙏 Acknowledgments</a></li>
  </ol>
</details>

## 📚 About The Project

<!--
[![Product Name Screen Shot][product-screenshot]](https://example.com)
-->

### 📄 Description

This project provides a comprehensive setup for a Hyperledger Besu network using Docker.
It includes configuration for four nodes: Alice, Bob, Carol, and Dan.
Each node is pre-configured with unique private and public keys, ensuring a ready-to-launch environment for blockchain development and testing.
This makes it an ideal starting point for developers looking to explore or build on the Ethereum blockchain.

### 🛠️ Built With

- [![Hyperledger Besu][hyperledgerbesu-shield]][hyperledgerbesu-url]
- [![Docker][docker-shield]][docker-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Getting Started

### 🌐 Spin Up The Network

```bash
docker compose down --rmi local && \
    docker compose up
```

### ➕ Add A New Key Pair

1. Create directories
   1. `besu-nodes/<NAME>/keys`
2. Create two new services in `docker-compose.yml`
3. Generate **Besu** keypair
   1. Download latest besu binary from https://github.com/hyperledger/besu/releases
   2. Execute `./bin/besu`
   3. Copy private key `key` from file into `besu-nodes/<NAME>/keys/key.priv`
   4. Copy public key `secp256k1 public key` from console into `besu-nodes/<NAME>/keys/key.pub`
   5. Copy public address `Enode URL` from console into a new entry within`besu-nodes/static-nodes.json`

### ⚙️ Node Configuration

For configuration details, refer to the [docker-compose.yml](docker-compose.yml).

The following table provides an overview of the nodes and their respective keys:

| Node  | Hostname   | IP-Address | Private Key                                                        | Public Key                                                                                                                         |
| ----- | ---------- | ---------- | ------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------- |
| Alice | besu-alice | 10.0.0.10  | 0x3581322e9d97a6dbc940af75319f3afcadfb875712e7778e94440240ba530786 | 0x798341a24e0b690ae0c7cf31783be2f6a4b638d2ec1c9699eff1d78641cc5a4482620f900d3747916c498bda242ea2db228102bc8f3644e1e2683fc7bb8b608b |
| Bob   | besu-bob   | 10.0.0.20  | 0xcf20804bcc103fd53036de7f4c26005df0fd008ed4a57b6e75590696a71b2fa7 | 0xa1cfb80fb98dd6b176048482851b7be90f26857363a3380901383b67e80f440144882294d7ba51349f36862b61282fbb8b19778d7e1f1777d6b600cc91f7084b |
| Carol | besu-carol | 10.0.0.30  | 0xf164db71231fe93e7ec03d7377756f30cbdd1a5e06c1a725a09615f5745a8a7f | 0xdbef85495799c6acb146def098980a73b9e529486abc00536748b0763933b2654f54d22cba03eedbf28c7dfbaeeb04d71f39d0dc08f170d57c7bddc10fc0b139 |
| Dan   | besu-dan   | 10.0.0.40  | 0x1ec3d2f3d02967f7df5cc90ecfe3bb352ca175551c84af2847648419dc46b20a | 0xebbae6e5888171d6227f8421b8fb37f63088eb40ea9789c5b73266e468d470494a801d4f7a1cb77461cd761d63d8839241a1621c4efa608f1ac842b836cc853f |

DO **NEVER** USE THESE KEYS IN PRODUCTION!!1

### 🔌 Port Number Mapping

This schema is used by the `docker-compose.yml` to identify the different port numbers used by the nodes in the network:

- **N**etwork
  - 90: Besu
- **P**articipant
  - 1: Alice
  - 2: Bob
  - 3: Carol
  - 4: Dan
- **I**nterface
  - 1: HTTP/Q2T
  - 2: WS/ThirdParty
  - 3: P2P

### 📦 Postman API Collection

To interact with the network, you can use the [official Postman API collection](https://www.postman.com/hyperledger/hyperledger-besu/overview) from Hyperledger.

1. Export the the collection as JSON file
2. Open your Postman-compatible application
3. Import the JSON file
4. Create a new environment
   1. Set variable `rpc-http-host` with value `10.0.0.10` (this is Alice's IP)
   2. Set variable `rpc-http-port` with value `9011` (this is Alice's HTTP port)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing

### 🌟 Getting Involved

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any
contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also
simply open an issue with the tag "enhancement".

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/amazing-feature`)
3. Commit your Changes (`git commit -m 'Add some amazing-feature'`)
4. Push to the Branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### 🏆 Top Contributors

<a href="https://github.com/fraunhofer-iml/hyperledger-besu-network-configuration/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=fraunhofer-iml/hyperledger-besu-network-configuration" alt="contrib.rocks image" />
</a>

Made with [contrib.rocks](https://contrib.rocks).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📜 License

Licensed under the Apache License 2.0. See `LICENSE` for details.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📬 Contact

Lukas Grieger: lukas.grieger@iml.fraunhofer.de

Michael Pichura: michael.pichura@iml.fraunhofer.de

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments

- [Best-README-Template](https://github.com/othneildrew/Best-README-Template)
- [Img Shields](https://shields.io)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[stars-shield]: https://img.shields.io/github/stars/fraunhofer-iml/hyperledger-besu-network-configuration.svg?style=for-the-badge
[stars-url]: https://github.com/fraunhofer-iml/hyperledger-besu-network-configuration/stargazers
[forks-shield]: https://img.shields.io/github/forks/fraunhofer-iml/hyperledger-besu-network-configuration.svg?style=for-the-badge
[forks-url]: https://github.com/fraunhofer-iml/hyperledger-besu-network-configuration/forks
[watchers-shield]: https://img.shields.io/github/watchers/fraunhofer-iml/hyperledger-besu-network-configuration?style=for-the-badge
[watchers-url]: https://github.com/fraunhofer-iml/hyperledger-besu-network-configuration/watchers
[contributors-shield]: https://img.shields.io/github/contributors/fraunhofer-iml/hyperledger-besu-network-configuration.svg?style=for-the-badge
[contributors-url]: https://github.com/fraunhofer-iml/hyperledger-besu-network-configuration/graphs/contributors
[commitactivity-shield]: https://img.shields.io/github/commit-activity/y/fraunhofer-iml/hyperledger-besu-network-configuration?style=for-the-badge
[commitactivity-url]: https://github.com/fraunhofer-iml/hyperledger-besu-network-configuration/graphs/commit-activity
[lastcommit-shield]: https://img.shields.io/github/last-commit/fraunhofer-iml/hyperledger-besu-network-configuration?style=for-the-badge
[lastcommit-url]: https://github.com/fraunhofer-iml/hyperledger-besu-network-configuration/commits/main
[issues-shield]: https://img.shields.io/github/issues/fraunhofer-iml/hyperledger-besu-network-configuration.svg?style=for-the-badge
[issues-url]: https://github.com/fraunhofer-iml/hyperledger-besu-network-configuration/issues
[license-shield]: https://img.shields.io/github/license/fraunhofer-iml/hyperledger-besu-network-configuration.svg?style=for-the-badge
[license-url]: https://github.com/fraunhofer-iml/hyperledger-besu-network-configuration/blob/main/LICENSE
[hyperledgerbesu-shield]: https://img.shields.io/badge/Blockchain-Hyperledger%20Besu-F26822?style=flat&logo=ethereum
[hyperledgerbesu-url]: https://besu.hyperledger.org/
[docker-shield]: https://img.shields.io/badge/Container-Docker-2496ED?style=flat&logo=docker
[docker-url]: https://www.docker.com/
