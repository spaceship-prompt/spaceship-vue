<h1 align="center">
  😍 + 𝗩
  <br>Spaceship Vue<br>
</h1>

<h4 align="center">
  A <a href="https://vuejs.org" target="_blank">Vue.js</a> section for Spaceship prompt
</h4>

<p align="center">
  <a href="https://github.com/spaceship-prompt/spaceship-section/releases">
    <img src="https://img.shields.io/github/v/release/spaceship-prompt/spaceship-section.svg?style=flat-square"
      alt="GitHub Release" />
  </a>

  <a href="https://github.com/spaceship-prompt/spaceship-section/actions">
    <img src="https://img.shields.io/github/actions/workflow/status/spaceship-prompt/spaceship-gradle/ci.yaml?style=flat-square"
      alt="GitHub Workflow Status" />
  </a>

  <a href="https://twitter.com/SpaceshipPrompt">
    <img src="https://img.shields.io/badge/twitter-%40SpaceshipPrompt-00ACEE.svg?style=flat-square"
      alt="Spaceship Twitter" />
  </a>

  <a href="https://discord.gg/NTQWz8Dyt9">
    <img
      src="https://img.shields.io/discord/859409950999707668?label=discord&logoColor=white&style=flat-square"
      alt="Chat on Discord"
    />
  </a>
</p>

Current Vue version, from `package.json` file found in the closest `node_modules/vue` package (`𝗩`).

## Installing

You need to source this plugin somewhere in your dotfiles. Here's how to do it with some popular tools:

### [Oh-My-Zsh]

Execute this command to clone this repo into Oh-My-Zsh plugin's folder:

```zsh
git clone https://github.com/spaceship-prompt/spaceship-vue.git $ZSH_CUSTOM/plugins/spaceship-vue
```

Include `spaceship-vue` in Oh-My-Zsh plugins list:

```zsh
plugins=($plugins spaceship-vue)
```

### [zplug]

```zsh
zplug "spaceship-prompt/spaceship-vue"
```

### [antigen]

```zsh
antigen bundle "spaceship-prompt/spaceship-vue"
```

### [antibody]

```zsh
antibody bundle "spaceship-prompt/spaceship-vue"
```

### [zinit]

```zsh
zinit light "spaceship-prompt/spaceship-vue"
```

### [zgen]

```zsh
zgen load "spaceship-prompt/spaceship-vue"
```

### [sheldon]

```toml
[plugins.spaceship-vue]
github = "spaceship-prompt/spaceship-vue"
```

### Manual

If none of the above methods works for you, you can install Spaceship manually.

1. Clone this repo somewhere, for example to `$HOME/.zsh/spaceship-vue`.
2. Source this section in your `~/.zshrc`.

### Example

```zsh
mkdir -p "$HOME/.zsh"
git clone --depth=1 https://github.com/spaceship-prompt/spaceship-vue.git "$HOME/.zsh/spaceship-vue"
```

For initializing prompt system add this to your `.zshrc`:

```zsh title=".zshrc"
source "~/.zsh/spaceship-vue/spaceship-vue.plugin.zsh"
```

## Usage

After installing, add the following line to your `.zshrc` in order to include Ember section in the prompt:

```zsh
spaceship add vue
```

## Options

This section is shown only in directories within a Vue context.

| Variable                   |              Default               | Meaning                              |
| :------------------------- | :--------------------------------: | ------------------------------------ |
| `SPACESHIP_VUE_SHOW`       |               `true`               | Show current section                 |
| `SPACESHIP_VUE_PREFIX`     | `$SPACESHIP_PROMPT_DEFAULT_PREFIX` | Prefix before section                |
| `SPACESHIP_VUE_SUFFIX`     | `$SPACESHIP_PROMPT_DEFAULT_SUFFIX` | Suffix after section                 |
| `SPACESHIP_VUE_SYMBOL`     |               `𝗩 `                 | Character to be shown before version |
| `SPACESHIP_VUE_COLOR`      |               `114`                | Color of section                     |

## Contributing

First, thanks for your interest in contributing!

Contribute to this repo by submitting a pull request. Please use [conventional commits](https://www.conventionalcommits.org/), since this project adheres to [semver](https://semver.org/) and is automatically released via [semantic-release](https://github.com/semantic-release/semantic-release).

## License

MIT © [Denys Dovhan](http://densydovhan.com) and Juha Sarkkinen

<!-- References -->

[Oh-My-Zsh]: https://ohmyz.sh/
[zplug]: https://github.com/zplug/zplug
[antigen]: https://antigen.sharats.me/
[antibody]: https://getantibody.github.io/
[zinit]: https://github.com/zdharma/zinit
[zgen]: https://github.com/tarjoilija/zgen
[sheldon]: https://sheldon.cli.rs/
