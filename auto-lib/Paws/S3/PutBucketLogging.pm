
package Paws::S3::PutBucketLogging {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has BucketLoggingStatus => (is => 'ro', isa => 'Paws::S3::BucketLoggingStatus', required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketLogging');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;