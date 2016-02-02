
package Paws::ACM::ListCertificatesResponse;
  use Moose;
  has CertificateSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::ACM::CertificateSummary]');
  has NextToken => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::ACM::ListCertificatesResponse

=head1 ATTRIBUTES


=head2 CertificateSummaryList => ArrayRef[L<Paws::ACM::CertificateSummary>]

A list of the certificate ARNs.



=head2 NextToken => Str

If the list has been truncated, this value is present and should be
used for the C<NextToken> input parameter on your next call to
C<ListCertificates>.




=cut

1;