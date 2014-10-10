
package Aws::S3::ListMultipartUploads {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Delimiter => (is => 'ro', isa => 'Str');
  has EncodingType => (is => 'ro', isa => 'Str');
  has KeyMarker => (is => 'ro', isa => 'Str');
  has MaxUploads => (is => 'ro', isa => 'Int');
  has Prefix => (is => 'ro', isa => 'Str');
  has UploadIdMarker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMultipartUploads');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::S3::ListMultipartUploadsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListMultipartUploadsResult');
}
1;
