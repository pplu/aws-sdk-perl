
package Paws::GameLift::ListAliasesOutput;
  use Moose;
  has Aliases => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Alias]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ListAliasesOutput

=head1 ATTRIBUTES


=head2 Aliases => ArrayRef[L<Paws::GameLift::Alias>]

A collection of alias resources that match the request parameters.


=head2 NextToken => Str

A token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 _request_id => Str


=cut

1;