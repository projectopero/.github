# Contributing

Opero accepts focused changes that improve safety, reliability, interoperability
or usability.

## Before opening a change

- Search the relevant repository's issues and pull requests.
- Use private vulnerability reporting for security defects.
- Keep each change scoped to one coherent outcome.
- Do not include credentials, private data, proprietary assets or deployment
  outputs.
- Open a design issue before changing a public protocol, trust boundary,
  settlement rule or compatibility contract.

## Development workflow

1. Fork the target repository and branch from `main`.
2. Install its pinned toolchain and dependencies.
3. Add tests for behavior changes.
4. Run the repository's documented validation commands.
5. Open a pull request using its template.

All commits must carry a Developer Certificate of Origin sign-off:

```sh
git commit --signoff
```

Contributions are accepted under the license declared by the target repository.
