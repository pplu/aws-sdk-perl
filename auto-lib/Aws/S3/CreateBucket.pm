
package Aws::S3::CreateBucket {
  use Moose;
  has ACL => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has CreateBucketConfiguration => (is => 'ro', isa => 'Aws::S3::CreateBucketConfiguration');
  has GrantFullControl => (is => 'ro', isa => 'Str');
  has GrantRead => (is => 'ro', isa => 'Str');
  has GrantReadACP => (is => 'ro', isa => 'Str');
  has GrantWrite => (is => 'ro', isa => 'Str');
  has GrantWriteACP => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBucket');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::S3::CreateBucketResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateBucketResult');
}
1;
