
package Paws::ACM::ImportCertificateResponse;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ACM::ImportCertificateResponse

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The Amazon Resource Name (ARN)
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the imported certificate.


=head2 _request_id => Str


=cut

1;