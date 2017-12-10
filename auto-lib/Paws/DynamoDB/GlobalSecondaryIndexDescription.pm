package Paws::DynamoDB::GlobalSecondaryIndexDescription;
  use Moose;
  has Backfilling => (is => 'ro', isa => 'Bool');
  has IndexArn => (is => 'ro', isa => 'Str');
  has IndexName => (is => 'ro', isa => 'Str');
  has IndexSizeBytes => (is => 'ro', isa => 'Int');
  has IndexStatus => (is => 'ro', isa => 'Str');
  has ItemCount => (is => 'ro', isa => 'Int');
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::KeySchemaElement]');
  has Projection => (is => 'ro', isa => 'Paws::DynamoDB::Projection');
  has ProvisionedThroughput => (is => 'ro', isa => 'Paws::DynamoDB::ProvisionedThroughputDescription');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::GlobalSecondaryIndexDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::GlobalSecondaryIndexDescription object:

  $service_obj->Method(Att1 => { Backfilling => $value, ..., ProvisionedThroughput => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::GlobalSecondaryIndexDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Backfilling

=head1 DESCRIPTION

Represents the properties of a global secondary index.

=head1 ATTRIBUTES


=head2 Backfilling => Bool

  Indicates whether the index is currently backfilling. I<Backfilling> is
the process of reading items from the table and determining whether
they can be added to the index. (Not all items will qualify: For
example, a partition key cannot have any duplicate values.) If an item
can be added to the index, DynamoDB will do so. After all items have
been processed, the backfilling operation is complete and
C<Backfilling> is false.

For indexes that were created during a C<CreateTable> operation, the
C<Backfilling> attribute does not appear in the C<DescribeTable>
output.


=head2 IndexArn => Str

  The Amazon Resource Name (ARN) that uniquely identifies the index.


=head2 IndexName => Str

  The name of the global secondary index.


=head2 IndexSizeBytes => Int

  The total size of the specified index, in bytes. DynamoDB updates this
value approximately every six hours. Recent changes might not be
reflected in this value.


=head2 IndexStatus => Str

  The current state of the global secondary index:

=over

=item *

C<CREATING> - The index is being created.

=item *

C<UPDATING> - The index is being updated.

=item *

C<DELETING> - The index is being deleted.

=item *

C<ACTIVE> - The index is ready for use.

=back



=head2 ItemCount => Int

  The number of items in the specified index. DynamoDB updates this value
approximately every six hours. Recent changes might not be reflected in
this value.


=head2 KeySchema => ArrayRef[L<Paws::DynamoDB::KeySchemaElement>]

  The complete key schema for a global secondary index, which consists of
one or more pairs of attribute names and key types:

=over

=item *

C<HASH> - partition key

=item *

C<RANGE> - sort key

=back

The partition key of an item is also known as its I<hash attribute>.
The term "hash attribute" derives from DynamoDB' usage of an internal
hash function to evenly distribute data items across partitions, based
on their partition key values.

The sort key of an item is also known as its I<range attribute>. The
term "range attribute" derives from the way DynamoDB stores items with
the same partition key physically close together, in sorted order by
the sort key value.


=head2 Projection => L<Paws::DynamoDB::Projection>

  Represents attributes that are copied (projected) from the table into
the global secondary index. These are in addition to the primary key
attributes and index key attributes, which are automatically projected.


=head2 ProvisionedThroughput => L<Paws::DynamoDB::ProvisionedThroughputDescription>

  Represents the provisioned throughput settings for the specified global
secondary index.

For current minimum and maximum provisioned throughput values, see
Limits
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html)
in the I<Amazon DynamoDB Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

