package Paws::DynamoDB::ConsumedCapacity;
  use Moo;
  use Types::Standard qw/Num Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_Capacity DynamoDB_SecondaryIndexesCapacityMap/;
  has CapacityUnits => (is => 'ro', isa => Num);
  has GlobalSecondaryIndexes => (is => 'ro', isa => DynamoDB_SecondaryIndexesCapacityMap);
  has LocalSecondaryIndexes => (is => 'ro', isa => DynamoDB_SecondaryIndexesCapacityMap);
  has ReadCapacityUnits => (is => 'ro', isa => Num);
  has Table => (is => 'ro', isa => DynamoDB_Capacity);
  has TableName => (is => 'ro', isa => Str);
  has WriteCapacityUnits => (is => 'ro', isa => Num);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Table' => {
                            'class' => 'Paws::DynamoDB::Capacity',
                            'type' => 'DynamoDB_Capacity'
                          },
               'ReadCapacityUnits' => {
                                        'type' => 'Num'
                                      },
               'TableName' => {
                                'type' => 'Str'
                              },
               'GlobalSecondaryIndexes' => {
                                             'class' => 'Paws::DynamoDB::SecondaryIndexesCapacityMap',
                                             'type' => 'DynamoDB_SecondaryIndexesCapacityMap'
                                           },
               'LocalSecondaryIndexes' => {
                                            'class' => 'Paws::DynamoDB::SecondaryIndexesCapacityMap',
                                            'type' => 'DynamoDB_SecondaryIndexesCapacityMap'
                                          },
               'WriteCapacityUnits' => {
                                         'type' => 'Num'
                                       },
               'CapacityUnits' => {
                                    'type' => 'Num'
                                  }
             }
}
;
      return $Params_map;
    }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ConsumedCapacity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::ConsumedCapacity object:

  $service_obj->Method(Att1 => { CapacityUnits => $value, ..., WriteCapacityUnits => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::ConsumedCapacity object:

  $result = $service_obj->Method(...);
  $result->Att1->CapacityUnits

=head1 DESCRIPTION

The capacity units consumed by an operation. The data returned includes
the total provisioned throughput consumed, along with statistics for
the table and any indexes involved in the operation.
C<ConsumedCapacity> is only returned if the request asked for it. For
more information, see Provisioned Throughput
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html)
in the I<Amazon DynamoDB Developer Guide>.

=head1 ATTRIBUTES


=head2 CapacityUnits => Num

  The total number of capacity units consumed by the operation.


=head2 GlobalSecondaryIndexes => DynamoDB_SecondaryIndexesCapacityMap

  The amount of throughput consumed on each global index affected by the
operation.


=head2 LocalSecondaryIndexes => DynamoDB_SecondaryIndexesCapacityMap

  The amount of throughput consumed on each local index affected by the
operation.


=head2 ReadCapacityUnits => Num

  The total number of read capacity units consumed by the operation.


=head2 Table => DynamoDB_Capacity

  The amount of throughput consumed on the table affected by the
operation.


=head2 TableName => Str

  The name of the table that was affected by the operation.


=head2 WriteCapacityUnits => Num

  The total number of write capacity units consumed by the operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

