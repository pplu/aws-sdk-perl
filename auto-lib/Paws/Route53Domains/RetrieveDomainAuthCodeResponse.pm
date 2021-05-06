
package Paws::Route53Domains::RetrieveDomainAuthCodeResponse;
  use Moose;
  has AuthCode => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::RetrieveDomainAuthCodeResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthCode => Str

The authorization code for the domain.


=head2 _request_id => Str


=cut

1;