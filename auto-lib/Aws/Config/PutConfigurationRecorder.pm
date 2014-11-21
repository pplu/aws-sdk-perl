
package Aws::Config::PutConfigurationRecorder {
  use Moose;
  has ConfigurationRecorder => (is => 'ro', isa => 'Aws::Config::ConfigurationRecorder', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutConfigurationRecorder');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;