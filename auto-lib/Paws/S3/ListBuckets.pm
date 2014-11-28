
package Paws::S3::ListBuckets {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBuckets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::ListBucketsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListBucketsResult');
}
1;