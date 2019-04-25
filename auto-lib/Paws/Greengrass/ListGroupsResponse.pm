
package Paws::Greengrass::ListGroupsResponse;
  use Moose;
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::GroupInformation]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListGroupsResponse

=head1 ATTRIBUTES


=head2 Groups => ArrayRef[L<Paws::Greengrass::GroupInformation>]

Information about a group.


=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.


=head2 _request_id => Str


=cut

