
package Paws::DynamoDB::BatchExecuteStatementOutput;
  use Moose;
  has Responses => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::BatchStatementResponse]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::BatchExecuteStatementOutput

=head1 ATTRIBUTES


=head2 Responses => ArrayRef[L<Paws::DynamoDB::BatchStatementResponse>]

The response to each PartiQL statement in the batch.


=head2 _request_id => Str


=cut

1;