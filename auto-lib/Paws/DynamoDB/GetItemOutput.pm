
package Paws::DynamoDB::GetItemOutput;
  use Moose;
  has ConsumedCapacity => (is => 'ro', isa => 'Paws::DynamoDB::ConsumedCapacity');
  has Item => (is => 'ro', isa => 'Paws::DynamoDB::AttributeMap');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::GetItemOutput

=head1 ATTRIBUTES


=head2 ConsumedCapacity => L<Paws::DynamoDB::ConsumedCapacity>




=head2 Item => L<Paws::DynamoDB::AttributeMap>

A map of attribute names to I<AttributeValue> objects, as specified by
I<AttributesToGet>.


=head2 _request_id => Str


=cut

1;