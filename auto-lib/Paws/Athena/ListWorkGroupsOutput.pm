
package Paws::Athena::ListWorkGroupsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WorkGroups => (is => 'ro', isa => 'ArrayRef[Paws::Athena::WorkGroupSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::ListWorkGroupsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to be used by the next request if this request is truncated.


=head2 WorkGroups => ArrayRef[L<Paws::Athena::WorkGroupSummary>]

The list of workgroups, including their names, descriptions, creation
times, and states.


=head2 _request_id => Str


=cut

1;