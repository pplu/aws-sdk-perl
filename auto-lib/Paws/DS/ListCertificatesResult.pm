
package Paws::DS::ListCertificatesResult;
  use Moose;
  has CertificatesInfo => (is => 'ro', isa => 'ArrayRef[Paws::DS::CertificateInfo]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::ListCertificatesResult

=head1 ATTRIBUTES


=head2 CertificatesInfo => ArrayRef[L<Paws::DS::CertificateInfo>]

A list of certificates with basic details including certificate ID,
certificate common name, certificate state.


=head2 NextToken => Str

Indicates whether another page of certificates is available when the
number of available certificates exceeds the page limit.


=head2 _request_id => Str


=cut

1;