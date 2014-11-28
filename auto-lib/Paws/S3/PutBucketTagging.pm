
package Paws::S3::PutBucketTagging {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str');
  has Tagging => (is => 'ro', isa => 'Paws::S3::Tagging', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketTagging');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;