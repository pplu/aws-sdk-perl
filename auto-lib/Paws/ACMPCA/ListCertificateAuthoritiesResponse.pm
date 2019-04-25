
package Paws::ACMPCA::ListCertificateAuthoritiesResponse;
  use Moose;
  has CertificateAuthorities => (is => 'ro', isa => 'ArrayRef[Paws::ACMPCA::CertificateAuthority]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::ListCertificateAuthoritiesResponse

=head1 ATTRIBUTES


=head2 CertificateAuthorities => ArrayRef[L<Paws::ACMPCA::CertificateAuthority>]

Summary information about each certificate authority you have created.


=head2 NextToken => Str

When the list is truncated, this value is present and should be used
for the C<NextToken> parameter in a subsequent pagination request.


=head2 _request_id => Str


=cut

1;