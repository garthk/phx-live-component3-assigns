# BugDemo

To demonstrate an unwanted warning when using `component/3` in a `label/3` in a `form_for/3`:

```bash
asdf install
mix deps.get
npm install --prefix assets
mix compile --warnings-as-errors
```

Result:

```plain
Compiling 11 files (.ex)
warning: variable "assigns" is unused (there is a variable with the same name in the context, use the pin operator (^) to match on it or prefix this variable with underscore if it is not meant to be used)
  lib/bug_demo_web/live/page_live.ex:23: BugDemoWeb.PageLive.render/1

Compilation failed due to warnings while using the --warnings-as-errors option
```

Issue: [`phoenixframework/phoenix_live_view#1486`](https://github.com/phoenixframework/phoenix_live_view/issues/1486)
