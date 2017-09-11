require 'rubocop'
require "rubocop/forbid_csv_read/version"
require "rubocop/forbid_csv_read/inject"

PROJECT_ROOT   = Pathname.new(__dir__).parent.parent.expand_path.freeze
CONFIG_DEFAULT = PROJECT_ROOT.join('config', 'default.yml').freeze
RuboCop::ForbidCsvRead::Inject.defaults!

# cops
require 'rubocop/cop/lint/forbid_csv_read'
