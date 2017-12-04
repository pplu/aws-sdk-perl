
package Paws::MigrationHub::ListDiscoveredResourcesResult;
  use Moose;
  has DiscoveredResourceList => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHub::DiscoveredResource]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::ListDiscoveredResourcesResult

=head1 ATTRIBUTES


=head2 DiscoveredResourceList => ArrayRef[L<Paws::MigrationHub::DiscoveredResource>]

Returned list of discovered resources associated with the given
MigrationTask.


=head2 NextToken => Str

If there are more discovered resources than the max result, return the
next token to be passed to the next call as a bookmark of where to
start from.


=head2 _request_id => Str


=cut

1;