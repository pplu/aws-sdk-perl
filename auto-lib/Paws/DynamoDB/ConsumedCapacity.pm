package Paws::DynamoDB::ConsumedCapacity;
  use Moose;
  has CapacityUnits => (is => 'ro', isa => 'Num');
  has GlobalSecondaryIndexes => (is => 'ro', isa => 'Paws::DynamoDB::SecondaryIndexesCapacityMap');
  has LocalSecondaryIndexes => (is => 'ro', isa => 'Paws::DynamoDB::SecondaryIndexesCapacityMap');
  has Table => (is => 'ro', isa => 'Paws::DynamoDB::Capacity');
  has TableName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ConsumedCapacity

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::ConsumedCapacity object:

  $service_obj->Method(Att1 => { CapacityUnits => $value, ..., TableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::ConsumedCapacity object:

  $result = $service_obj->Method(...);
  $result->Att1->CapacityUnits

=head1 ATTRIBUTES

=head2 CapacityUnits => Num

  The total number of capacity units consumed by the operation.

=head2 GlobalSecondaryIndexes => Paws::DynamoDB::SecondaryIndexesCapacityMap

  The amount of throughput consumed on each global index affected by the
operation.

=head2 LocalSecondaryIndexes => Paws::DynamoDB::SecondaryIndexesCapacityMap

  The amount of throughput consumed on each local index affected by the
operation.

=head2 Table => Paws::DynamoDB::Capacity

  The amount of throughput consumed on the table affected by the
operation.

=head2 TableName => Str

  The name of the table that was affected by the operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

