
package Paws::IAM::UploadServerCertificateResponse;
  use Moose;
  has ServerCertificateMetadata => (is => 'ro', isa => 'Paws::IAM::ServerCertificateMetadata');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IAM::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UploadServerCertificateResponse

=head1 ATTRIBUTES


=head2 ServerCertificateMetadata => L<Paws::IAM::ServerCertificateMetadata>

The meta information of the uploaded server certificate without its
certificate body, certificate chain, and private key.


=head2 Tags => ArrayRef[L<Paws::IAM::Tag>]

A list of tags that are attached to the new IAM server certificate. The
returned list of tags is sorted by tag key. For more information about
tagging, see Tagging IAM resources
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
I<IAM User Guide>.


=head2 _request_id => Str


=cut

