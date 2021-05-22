
package Paws::CodeStarConnections::ListHostsOutput;
  use Moose;
  has Hosts => (is => 'ro', isa => 'ArrayRef[Paws::CodeStarConnections::Host]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::ListHostsOutput

=head1 ATTRIBUTES


=head2 Hosts => ArrayRef[L<Paws::CodeStarConnections::Host>]

A list of hosts and the details for each host, such as status,
endpoint, and provider type.


=head2 NextToken => Str

A token that can be used in the next C<ListHosts> call. To view all
items in the list, continue to call this operation with each subsequent
token until no more C<nextToken> values are returned.


=head2 _request_id => Str


=cut

1;