
package Paws::SSM::ListCommandInvocationsResult;
  use Moose;
  has CommandInvocations => (is => 'ro', isa => 'ArrayRef[Paws::SSM::CommandInvocation]');
  has NextToken => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListCommandInvocationsResult

=head1 ATTRIBUTES


=head2 CommandInvocations => ArrayRef[L<Paws::SSM::CommandInvocation>]

(Optional) A list of all invocations.



=head2 NextToken => Str

(Optional) The token for the next set of items to return. (You received
this token from a previous call.)




=cut

1;