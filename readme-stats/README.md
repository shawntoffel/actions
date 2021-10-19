Updates a README with GitHub user stats.

### Usage

```
- uses: shawntoffel/actions/readme-stats@v1
  with:
    github-user: shawntoffel
    github-token: ${{ secrets.GITHUB_TOKEN }}
    file: README
```

### Example output:
```
Public Repo Stats:
------------------
Stars Earned:	28
Total PRs:	188
Total Issues:	13
Contributed to:	12
```
