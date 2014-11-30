
package Paws::S3::CompleteMultipartUpload {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has MultipartUpload => (is => 'ro', isa => 'Paws::S3::CompletedMultipartUpload');
  has UploadId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CompleteMultipartUpload');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::CompleteMultipartUploadOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CompleteMultipartUploadResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CompleteMultipartUploadOutput

=head1 ATTRIBUTES

=head2 B<REQUIRED> Bucket => Str

  
=head2 B<REQUIRED> Key => Str

  
=head2 MultipartUpload => Paws::S3::CompletedMultipartUpload

  
=head2 B<REQUIRED> UploadId => Str

  


=cut

