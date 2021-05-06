
package Paws::IoT::ListMitigationActionsResponse;
  use Moose;
  has ActionIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::IoT::MitigationActionIdentifier]', traits => ['NameInRequest'], request_name => 'actionIdentifiers');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListMitigationActionsResponse

=head1 ATTRIBUTES


=head2 ActionIdentifiers => ArrayRef[L<Paws::IoT::MitigationActionIdentifier>]

A set of actions that matched the specified filter criteria.


=head2 NextToken => Str

The token for the next set of results.


=head2 _request_id => Str


=cut

