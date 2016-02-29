
package Paws::GameLift::ListAliasesOutput;
  use Moose;
  has Aliases => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Alias]');
  has NextToken => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ListAliasesOutput

=head1 ATTRIBUTES


=head2 Aliases => ArrayRef[L<Paws::GameLift::Alias>]

Collection of alias records that match the list request.



=head2 NextToken => Str

Token indicating where to resume retrieving results on the next call to
this action. If no token is returned, these results represent the end
of the list.

If a request has a limit that exactly matches the number of remaining
results, a token is returned even though there are no more results to
retrieve.




=cut

1;