
package Paws::IoT::CreateCertificateFromCsrResponse;
  use Moose;
  has certificateArn => (is => 'ro', isa => 'Str');
  has certificateId => (is => 'ro', isa => 'Str');
  has certificatePem => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateCertificateFromCsrResponse

=head1 ATTRIBUTES

=head2 certificateArn => Str

  

The Amazon Resource Name (ARN) of the certificate. You can use the ARN
as a principal for policy operations.









=head2 certificateId => Str

  

The ID of the certificate. Certificate management operations only take
a certificateId.









=head2 certificatePem => Str

  

The certificate data, in PEM format.











=cut

