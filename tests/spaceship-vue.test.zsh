#!/usr/bin/env zsh

# Required for shunit2 to run correctly
CWD="${${(%):-%x}:A:h}"
setopt shwordsplit
SHUNIT_PARENT=$0

# Use system Spaceship or fallback to Spaceship Docker on CI
typeset -g SPACESHIP_ROOT="${SPACESHIP_ROOT:=/spaceship}"

setupVue() {
  mkdir -p $SHUNIT_TMPDIR/node_modules/vue
  cp $CWD/package.vue.json $SHUNIT_TMPDIR/node_modules/vue/package.json

  # Enter the test directory
  cd $SHUNIT_TMPDIR
}

# ------------------------------------------------------------------------------
# SHUNIT2 HOOKS
# ------------------------------------------------------------------------------

setUp() {
  # Enter the test directory
  cd $SHUNIT_TMPDIR
}

oneTimeSetUp() {
  export TERM="xterm-256color"

  source "$SPACESHIP_ROOT/spaceship.zsh"
  source "$(dirname $CWD)/spaceship-vue.plugin.zsh"

  SPACESHIP_PROMPT_ASYNC=false
  SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=true
  SPACESHIP_PROMPT_ADD_NEWLINE=false
  SPACESHIP_PROMPT_ORDER=(vue)

  echo "Spaceship version: $(spaceship --version)"
}

oneTimeTearDown() {
  unset SPACESHIP_PROMPT_ASYNC
  unset SPACESHIP_PROMPT_FIRST_PREFIX_SHOW
  unset SPACESHIP_PROMPT_ADD_NEWLINE
  unset SPACESHIP_PROMPT_ORDER
}

# ------------------------------------------------------------------------------
# TEST CASES
# ------------------------------------------------------------------------------

test_no_package() {
  local expected=""
  local actual="$(spaceship::testkit::render_prompt)"

  assertEquals "do not render system version" "$expected" "$actual"
}

test_mocked_version() {
  setupVue

  local mocked_version="16.0.0-mocked"
  # FIXME: Remove this mock when updated docker image is released
  spaceship::datafile() {
    echo $mocked_version
  }

  local prefix="%{%B%}$SPACESHIP_VUE_PREFIX%{%b%}"
  local content="%{%B%F{$SPACESHIP_VUE_COLOR}%}${SPACESHIP_VUE_SYMBOL}v$mocked_version%{%b%f%}"
  local suffix="%{%B%}$SPACESHIP_VUE_SUFFIX%{%b%}"

  local expected="$prefix$content$suffix"
  local actual="$(spaceship::testkit::render_prompt)"

  assertEquals "render mocked version" "$expected" "$actual"
}

# ------------------------------------------------------------------------------
# SHUNIT2
# Run tests with shunit2
# ------------------------------------------------------------------------------

source "$SPACESHIP_ROOT/tests/shunit2/shunit2"
