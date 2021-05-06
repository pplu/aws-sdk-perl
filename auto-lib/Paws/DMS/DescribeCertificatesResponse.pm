
package Paws::DMS::DescribeCertificatesResponse;
  use Moose;
  has Certificates => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Certificate]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeCertificatesResponse

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[L<Paws::DMS::Certificate>]

The Secure Sockets Layer (SSL) certificates associated with the
replication instance.


=head2 Marker => Str

The pagination token.


=head2 _request_id => Str


=cut

1;