package Aws::Config::ConfigurationRecorder {
  use Moose;
  has name => (is => 'ro', isa => 'Str');
  has roleARN => (is => 'ro', isa => 'Str');
}
1;
