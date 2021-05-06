
package Paws::ACM::ListCertificatesResponse;
  use Moose;
  has CertificateSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::ACM::CertificateSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ACM::ListCertificatesResponse

=head1 ATTRIBUTES


=head2 CertificateSummaryList => ArrayRef[L<Paws::ACM::CertificateSummary>]

A list of ACM certificates.


=head2 NextToken => Str

When the list is truncated, this value is present and contains the
value to use for the C<NextToken> parameter in a subsequent pagination
request.


=head2 _request_id => Str


=cut

1;