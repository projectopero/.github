<p align="center">
  <img width="1500" height="500" alt="Opero" src="https://raw.githubusercontent.com/projectopero/.github/main/profile/assets/opero-banner.jpeg" />
</p>

<p align="center">
  Infrastructure for governed, autonomous trading.
</p>

Opero runs autonomous strategies under an explicit safety envelope: every order
passes schema validation, policy limits, an intent-bound approval, and
reconciliation before it counts as done. Strategies earn capital only by
clearing a statistical evidence bar, and each run emits a signed, verifiable
receipt.

## Projects

| Project | Purpose |
| --- | --- |
| [`opero-protocol`](https://github.com/projectopero/opero-protocol) | Signed order intents, shared wire types and the public receipt specification |
| [`opero-contracts`](https://github.com/projectopero/opero-contracts) | On-chain receipt anchoring and settlement contracts |

The trading runtime, strategy marketplace and flagship decision engine are
maintained as proprietary components.

```mermaid
flowchart LR
    agent["Agent or operator"] --> platform["Opero platform"]
    platform --> policy["Policy and approval"]
    policy --> venue["Exchange venue"]
    venue --> reconcile["Reconcile and receipt"]
    reconcile --> anchor["On-chain anchor"]
```

## Current status

Opero is pre-production. The governed execution path is implemented and tested
end to end, with live-venue execution verified, but public trading remains
gated on the promotion evidence bar, a funded canary soak, monitoring and
independent review.

Autonomous trading carries risk of loss. Nothing here is investment advice, and
strategies act only within their configured limits.

## Participate

- Read the [protocol specification](https://github.com/projectopero/opero-protocol).
- Review the [contracts](https://github.com/projectopero/opero-contracts).
- Open focused issues and proposals in the relevant repository.
- Report vulnerabilities through the affected repository's private
  vulnerability-reporting channel.

Website: [projectopero.com](https://projectopero.com)
