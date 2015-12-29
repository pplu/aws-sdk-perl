
package Paws::DynamoDB::GetItemOutput;
  use Moose;
  has ConsumedCapacity => (is => 'ro', isa => 'Paws::DynamoDB::ConsumedCapacity');
  has Item => (is => 'ro', isa => 'HashRef[Paws::DynamoDB::AttributeValue]');


### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::GetItemOutput

=head1 ATTRIBUTES


=head2 ConsumedCapacity => L<Paws::DynamoDB::ConsumedCapacity>

  

=head2 Item => HashRef[L<Paws::DynamoDB::AttributeValue>]

  A map of attribute names to I<AttributeValue> objects, as specified by
I<AttributesToGet>.


=cut

1;