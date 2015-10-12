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

=head1 DESCRIPTION

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

=head1 ATTRIBUTES

=head2 Backfilling => Bool

  

Indicates whether the index is currently backfilling. I<Backfilling> is
the process of reading items from the table and determining whether
they can be added to the index. (Not all items will qualify: For
example, a hash key attribute cannot have any duplicates.) If an item
can be added to the index, DynamoDB will do so. After all items have
been processed, the backfilling operation is complete and
I<Backfilling> is false.

For indexes that were created during a I<CreateTable> operation, the
I<Backfilling> attribute does not appear in the I<DescribeTable>
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

I<CREATING> - The index is being created.

=item *

I<UPDATING> - The index is being updated.

=item *

I<DELETING> - The index is being deleted.

=item *

I<ACTIVE> - The index is ready for use.

=back










=head2 ItemCount => Int

  

The number of items in the specified index. DynamoDB updates this value
approximately every six hours. Recent changes might not be reflected in
this value.










=head2 KeySchema => ArrayRef[Paws::DynamoDB::KeySchemaElement]

  

The complete key schema for the global secondary index, consisting of
one or more pairs of attribute names and key types (C<HASH> or
C<RANGE>).










=head2 Projection => Paws::DynamoDB::Projection

  

=head2 ProvisionedThroughput => Paws::DynamoDB::ProvisionedThroughputDescription

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

