require('flit').setup {
  keys = { f = 'f', F = 'F', t = 't', T = 'T' },
  -- A string like "nv", "nvo", "o", etc.
  labeled_modes = "v",
  multiline = true,
  -- Like `leap`s similar argument (call-specific overrides).
  -- E.g.: opts = { equivalence_classes = {} }
  opts = {}
}

require('leap').create_default_mappings()
require('leap').opts.labels = 'aoeuidhtns'
require('leap').opts.labels = 'qjcrwvglmzpkaoeuidhtns'
require('leap').opts.highlight_unlabeled_phase_one_targets = true
