
package Aws::RedShift::DisableLogging {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableLogging');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::DisableLoggingResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DisableLoggingResult');
}
1;
