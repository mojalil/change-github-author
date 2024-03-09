# Change Git Author Script

![GitHub last commit](https://img.shields.io/github/last-commit/mojalil/change-github-author)
![GitHub issues](https://img.shields.io/github/issues/mojalil/change-github-author)
![GitHub forks](https://img.shields.io/github/forks/mojalil/change-github-author)
![GitHub stars](https://img.shields.io/github/stars/mojalil/change-github-author)
![GitHub license](https://img.shields.io/github/license/mojalil/change-github-author)

This script, `change_git_author.sh`, is designed to help you quickly and easily update the author information (name and email) for commits in a Git repository. This can be useful if you've initially committed with the wrong author details and need to correct them for the entire history of the repository.

## Warning

This script rewrites the history of your Git repository. Before running it, ensure that you understand the implications, especially if you're working in a collaborative environment. It's strongly advised to notify all collaborators since they will need to handle the rewritten history on their end. Always backup your repository before performing such operations.

## Installation

To use this script, follow these steps:

1. Clone this repository or download `change_git_author.sh` directly.
2. Give execute permission to the script:
   ```bash
   chmod +x change_git_author.sh
   ```
3. Move the script to a directory that's in your PATH for easy access, or run it directly from its download location.

## Usage

To run the script, you need to provide three parameters: your old email address, your correct name, and your correct email address. Navigate to your Git repository directory in the terminal and run:

```bash
./change_git_author.sh <old-email> <correct-name> <correct-email>
```

For example:

```bash
./change_git_author.sh oldemail@example.com "John Doe" newemail@example.com
```

The script will find all commits that match the old email address and replace them with the provided new name and email address.

## Contributing

Contributions to this script are welcome. If you have suggestions for improvement or have discovered a bug, please open an issue or a pull request in this repository.

## License

TBD

## Acknowledgements

- This script is intended for educational and recovery purposes. It's a product of collective knowledge and best practices within the Git community.
