# Generated from default/object.tt
package Paws::DynamoDB::Put;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_ExpressionAttributeValueMap DynamoDB_ExpressionAttributeNameMap DynamoDB_PutItemInputAttributeMap/;
  has ConditionExpression => (is => 'ro', isa => Str);
  has ExpressionAttributeNames => (is => 'ro', isa => DynamoDB_ExpressionAttributeNameMap);
  has ExpressionAttributeValues => (is => 'ro', isa => DynamoDB_ExpressionAttributeValueMap);
  has Item => (is => 'ro', isa => DynamoDB_PutItemInputAttributeMap, required => 1);
  has ReturnValuesOnConditionCheckFailure => (is => 'ro', isa => Str);
  has TableName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Item' => 1,
                    'TableName' => 1
                  },
  'types' => {
               'ReturnValuesOnConditionCheckFailure' => {
                                                          'type' => 'Str'
                                                        },
               'ConditionExpression' => {
                                          'type' => 'Str'
                                        },
               'TableName' => {
                                'type' => 'Str'
                              },
               'Item' => {
                           'class' => 'Paws::DynamoDB::PutItemInputAttributeMap',
                           'type' => 'DynamoDB_PutItemInputAttributeMap'
                         },
               'ExpressionAttributeValues' => {
                                                'class' => 'Paws::DynamoDB::ExpressionAttributeValueMap',
                                                'type' => 'DynamoDB_ExpressionAttributeValueMap'
                                              },
               'ExpressionAttributeNames' => {
                                               'type' => 'DynamoDB_ExpressionAttributeNameMap',
                                               'class' => 'Paws::DynamoDB::ExpressionAttributeNameMap'
                                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::Put

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::Put object:

  $service_obj->Method(Att1 => { ConditionExpression => $value, ..., TableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::Put object:

  $result = $service_obj->Method(...);
  $result->Att1->ConditionExpression

=head1 DESCRIPTION

Represents a request to perform a C<PutItem> operation.

=head1 ATTRIBUTES


=head2 ConditionExpression => Str

  A condition that must be satisfied in order for a conditional update to
succeed.


=head2 ExpressionAttributeNames => DynamoDB_ExpressionAttributeNameMap

  One or more substitution tokens for attribute names in an expression.


=head2 ExpressionAttributeValues => DynamoDB_ExpressionAttributeValueMap

  One or more values that can be substituted in an expression.


=head2 B<REQUIRED> Item => DynamoDB_PutItemInputAttributeMap

  A map of attribute name to attribute values, representing the primary
key of the item to be written by C<PutItem>. All of the table's primary
key attributes must be specified, and their data types must match those
of the table's key schema. If any attributes are present in the item
that are part of an index key schema for the table, their types must
match the index key schema.


=head2 ReturnValuesOnConditionCheckFailure => Str

  Use C<ReturnValuesOnConditionCheckFailure> to get the item attributes
if the C<Put> condition fails. For
C<ReturnValuesOnConditionCheckFailure>, the valid values are: NONE and
ALL_OLD.


=head2 B<REQUIRED> TableName => Str

  Name of the table in which to write the item.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

