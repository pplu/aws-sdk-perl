
package Paws::StepFunctions::ListExecutionsOutput;
  use Moose;
  has Executions => (is => 'ro', isa => 'ArrayRef[Paws::StepFunctions::ExecutionListItem]', traits => ['NameInRequest'], request_name => 'executions' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::ListExecutionsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Executions => ArrayRef[L<Paws::StepFunctions::ExecutionListItem>]

The list of matching executions.


=head2 NextToken => Str

If a C<nextToken> is returned by a previous call, there are more
results available. To retrieve the next page of results, make the call
again using the returned token in C<nextToken>. Keep all other
arguments unchanged.

The configured C<maxResults> determines how many results can be
returned in a single call.


=head2 _request_id => Str


=cut

1;