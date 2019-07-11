
package Paws::GroundStation::ListConfigsResponse;
  use Moose;
  has ConfigList => (is => 'ro', isa => 'ArrayRef[Paws::GroundStation::ConfigListItem]', traits => ['NameInRequest'], request_name => 'configList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ListConfigsResponse

=head1 ATTRIBUTES


=head2 ConfigList => ArrayRef[L<Paws::GroundStation::ConfigListItem>]

List of C<Config> items.


=head2 NextToken => Str

Next token returned in the response of a previous C<ListConfigs> call.
Used to get the next page of results.


=head2 _request_id => Str


=cut

