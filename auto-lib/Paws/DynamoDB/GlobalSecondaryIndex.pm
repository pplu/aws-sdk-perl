package Paws::DynamoDB::GlobalSecondaryIndex;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Type::Utils qw/class_type/;
    my $KeySchemaElement = class_type 'Paws::DynamoDB::KeySchemaElement';
    my $ProvisionedThroughput = class_type 'Paws::DynamoDB::ProvisionedThroughput';
    my $Projection = class_type 'Paws::DynamoDB::Projection';
  
  has IndexName => (is => 'ro', isa => Str, required => 1);
  has KeySchema => (is => 'ro', isa => ArrayRef[$KeySchemaElement], required => 1);
  has Projection => (is => 'ro', isa => $Projection, required => 1);
  has ProvisionedThroughput => (is => 'ro', isa => $ProvisionedThroughput);

  sub params_map {
    my $params1 = {
             'types' => {
                          'IndexName' => {
                                           'type' => 'Str'
                                         },
                          'KeySchema' => {
                                           'class' => 'Paws::DynamoDB::KeySchemaElement',
                                           'type' => 'ArrayRef[$KeySchemaElement]'
                                         },
                          'Projection' => {
                                            'class' => 'Paws::DynamoDB::Projection',
                                            'type' => '$Projection'
                                          },
                          'ProvisionedThroughput' => {
                                                       'class' => 'Paws::DynamoDB::ProvisionedThroughput',
                                                       'type' => '$ProvisionedThroughput'
                                                     }
                        }
           };

    return $params1;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::GlobalSecondaryIndex

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::GlobalSecondaryIndex object:

  $service_obj->Method(Att1 => { IndexName => $value, ..., ProvisionedThroughput => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::GlobalSecondaryIndex object:

  $result = $service_obj->Method(...);
  $result->Att1->IndexName

=head1 DESCRIPTION

Represents the properties of a global secondary index.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexName => Str

  The name of the global secondary index. The name must be unique among
all other indexes on this table.


=head2 B<REQUIRED> KeySchema => ArrayRef[$KeySchemaElement]

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


=head2 B<REQUIRED> Projection => $Projection

  Represents attributes that are copied (projected) from the table into
the global secondary index. These are in addition to the primary key
attributes and index key attributes, which are automatically projected.


=head2 ProvisionedThroughput => $ProvisionedThroughput

  Represents the provisioned throughput settings for the specified global
secondary index.

For current minimum and maximum provisioned throughput values, see
Limits
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html)
in the I<Amazon DynamoDB Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

