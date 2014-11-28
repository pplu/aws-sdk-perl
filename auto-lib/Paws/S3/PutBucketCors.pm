
package Paws::S3::PutBucketCors {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str');
  has CORSConfiguration => (is => 'ro', isa => 'Paws::S3::CORSConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketCors');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;