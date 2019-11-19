# Generated from default/object.tt
package Paws::DynamoDB::LocalSecondaryIndex;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DynamoDB::Types qw/DynamoDB_Projection DynamoDB_KeySchemaElement/;
  has IndexName => (is => 'ro', isa => Str, required => 1);
  has KeySchema => (is => 'ro', isa => ArrayRef[DynamoDB_KeySchemaElement], required => 1);
  has Projection => (is => 'ro', isa => DynamoDB_Projection, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IndexName' => {
                                'type' => 'Str'
                              },
               'Projection' => {
                                 'class' => 'Paws::DynamoDB::Projection',
                                 'type' => 'DynamoDB_Projection'
                               },
               'KeySchema' => {
                                'class' => 'Paws::DynamoDB::KeySchemaElement',
                                'type' => 'ArrayRef[DynamoDB_KeySchemaElement]'
                              }
             },
  'IsRequired' => {
                    'IndexName' => 1,
                    'Projection' => 1,
                    'KeySchema' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::LocalSecondaryIndex

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::LocalSecondaryIndex object:

  $service_obj->Method(Att1 => { IndexName => $value, ..., Projection => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::LocalSecondaryIndex object:

  $result = $service_obj->Method(...);
  $result->Att1->IndexName

=head1 DESCRIPTION

Represents the properties of a local secondary index.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexName => Str

  The name of the local secondary index. The name must be unique among
all other indexes on this table.


=head2 B<REQUIRED> KeySchema => ArrayRef[DynamoDB_KeySchemaElement]

  The complete key schema for the local secondary index, consisting of
one or more pairs of attribute names and key types:

=over

=item *

C<HASH> - partition key

=item *

C<RANGE> - sort key

=back

The partition key of an item is also known as its I<hash attribute>.
The term "hash attribute" derives from DynamoDB's usage of an internal
hash function to evenly distribute data items across partitions, based
on their partition key values.

The sort key of an item is also known as its I<range attribute>. The
term "range attribute" derives from the way DynamoDB stores items with
the same partition key physically close together, in sorted order by
the sort key value.


=head2 B<REQUIRED> Projection => DynamoDB_Projection

  Represents attributes that are copied (projected) from the table into
the local secondary index. These are in addition to the primary key
attributes and index key attributes, which are automatically projected.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

