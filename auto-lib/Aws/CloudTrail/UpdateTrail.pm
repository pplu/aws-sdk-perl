
package Aws::CloudTrail::UpdateTrail {
  use Moose;
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has SnsTopicName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTrail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudTrail::UpdateTrailResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
