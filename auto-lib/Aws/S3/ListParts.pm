
package Aws::S3::ListParts {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has MaxParts => (is => 'ro', isa => 'Int');
  has PartNumberMarker => (is => 'ro', isa => 'Int');
  has UploadId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListParts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::S3::ListPartsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListPartsResult');
}
1;
