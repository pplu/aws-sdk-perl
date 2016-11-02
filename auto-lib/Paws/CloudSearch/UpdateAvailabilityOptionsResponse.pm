
package Paws::CloudSearch::UpdateAvailabilityOptionsResponse;
  use Moose;
  has AvailabilityOptions => (is => 'ro', isa => 'Paws::CloudSearch::AvailabilityOptionsStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::UpdateAvailabilityOptionsResponse

=head1 ATTRIBUTES


=head2 AvailabilityOptions => L<Paws::CloudSearch::AvailabilityOptionsStatus>

The newly-configured availability options. Indicates whether Multi-AZ
is enabled for the domain.


=head2 _request_id => Str


=cut

