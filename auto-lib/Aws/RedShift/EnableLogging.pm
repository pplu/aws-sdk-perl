
package Aws::RedShift::EnableLogging {
  use Moose;
  has BucketName => (is => 'ro', isa => 'Str', required => 1);
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has S3KeyPrefix => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableLogging');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::EnableLoggingResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'EnableLoggingResult');
}
1;
  