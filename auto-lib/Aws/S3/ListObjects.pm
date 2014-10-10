
package Aws::S3::ListObjects {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Delimiter => (is => 'ro', isa => 'Str');
  has EncodingType => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxKeys => (is => 'ro', isa => 'Int');
  has Prefix => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListObjects');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::S3::ListObjectsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListObjectsResult');
}
1;
