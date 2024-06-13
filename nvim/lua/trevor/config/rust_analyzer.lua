return {
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        buildScripts = {
          enable = true,
        },
        extraEnv = {
          ["CARGO_PROFILE_RUST_ANALYZER_INHERITS"] = "dev",
        },
        extraArgs = { "--profile", "rust-analyzer" },
        features = "all",
      },
    },
    check = {
      overrideCommand = { "cargo", "clippy", "--message-format=json", "--all-targets", "--all-features" },
      extraEnv = {
        ["A"] = "envvar",
      },
    },
    rustfmt = {
      extraArgs = { "+nightly" },
    },
    procMacro = {
      attributes = {
        enable = true,
      },
    },
  },
}
