
package Paws::DynamoDB::ExecuteTransactionOutput;
  use Moose;
  has Responses => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ItemResponse]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ExecuteTransactionOutput

=head1 ATTRIBUTES


=head2 Responses => ArrayRef[L<Paws::DynamoDB::ItemResponse>]

The response to a PartiQL transaction.


=head2 _request_id => Str


=cut

1;