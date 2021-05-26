
package Paws::Schemas::StartDiscovererResponse;
  use Moose;
  has DiscovererId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::StartDiscovererResponse

=head1 ATTRIBUTES


=head2 DiscovererId => Str

The ID of the discoverer.


=head2 State => Str

The state of the discoverer.

Valid values are: C<"STARTED">, C<"STOPPED">
=head2 _request_id => Str


=cut

