#
# Vue.js
#
# Vue.js is an approachable, performant and versatile framework for building web user interfaces.
# Link: https://vuejs.org

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_VUE_SHOW="${SPACESHIP_VUE_SHOW=true}"
SPACESHIP_VUE_ASYNC="${SPACESHIP_VUE_ASYNC=true}"
SPACESHIP_VUE_PREFIX="${SPACESHIP_VUE_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_VUE_SUFFIX="${SPACESHIP_VUE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_VUE_SYMBOL="${SPACESHIP_VUE_SYMBOL="𝗩 "}"
SPACESHIP_VUE_COLOR="${SPACESHIP_VUE_COLOR="114"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

spaceship_vue() {
  [[ $SPACESHIP_VUE_SHOW == false ]] && return

  # Upsearch for vue package.json file
  local vue_package="$(spaceship::upsearch node_modules/vue/package.json)"

  # If package.json file is not found, exit
  [[ -z "$vue_package" ]] && return

  # Get vue version from package.json file
  local vue_version="$(spaceship::datafile --json $vue_package version)"

  # Check if tool version is correct
  [[ -z $vue_version || "$vue_version" == "null" || "$vue_version" == "undefined" ]] && return

  # Display vue section
  spaceship::section::v4 \
    --color "$SPACESHIP_VUE_COLOR" \
    --prefix "$SPACESHIP_VUE_PREFIX" \
    --suffix "$SPACESHIP_VUE_SUFFIX" \
    --symbol "$SPACESHIP_VUE_SYMBOL" \
    "v$vue_version"
}
