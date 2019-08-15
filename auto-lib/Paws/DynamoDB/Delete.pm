package Paws::DynamoDB::Delete;
  use Moo;
  use Types::Standard qw/Str/;
  use Type::Utils qw/class_type/;
    my $ExpressionAttributeValueMap = class_type 'Paws::DynamoDB::ExpressionAttributeValueMap';
    my $ExpressionAttributeNameMap = class_type 'Paws::DynamoDB::ExpressionAttributeNameMap';
    my $Key = class_type 'Paws::DynamoDB::Key';
  
  has ConditionExpression => (is => 'ro', isa => Str);
  has ExpressionAttributeNames => (is => 'ro', isa => $ExpressionAttributeNameMap);
  has ExpressionAttributeValues => (is => 'ro', isa => $ExpressionAttributeValueMap);
  has Key => (is => 'ro', isa => $Key, required => 1);
  has ReturnValuesOnConditionCheckFailure => (is => 'ro', isa => Str);
  has TableName => (is => 'ro', isa => Str, required => 1);

  sub params_map {
    my $params1 = {
             'types' => {
                          'ReturnValuesOnConditionCheckFailure' => {
                                                                     'type' => 'Str'
                                                                   },
                          'ExpressionAttributeValues' => {
                                                           'class' => 'Paws::DynamoDB::ExpressionAttributeValueMap',
                                                           'type' => '$ExpressionAttributeValueMap'
                                                         },
                          'TableName' => {
                                           'type' => 'Str'
                                         },
                          'ExpressionAttributeNames' => {
                                                          'class' => 'Paws::DynamoDB::ExpressionAttributeNameMap',
                                                          'type' => '$ExpressionAttributeNameMap'
                                                        },
                          'Key' => {
                                     'class' => 'Paws::DynamoDB::Key',
                                     'type' => '$Key'
                                   },
                          'ConditionExpression' => {
                                                     'type' => 'Str'
                                                   }
                        }
           };

    return $params1;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::Delete

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::Delete object:

  $service_obj->Method(Att1 => { ConditionExpression => $value, ..., TableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::Delete object:

  $result = $service_obj->Method(...);
  $result->Att1->ConditionExpression

=head1 DESCRIPTION

Represents a request to perform a C<DeleteItem> operation.

=head1 ATTRIBUTES


=head2 ConditionExpression => Str

  A condition that must be satisfied in order for a conditional delete to
succeed.


=head2 ExpressionAttributeNames => $ExpressionAttributeNameMap

  One or more substitution tokens for attribute names in an expression.


=head2 ExpressionAttributeValues => $ExpressionAttributeValueMap

  One or more values that can be substituted in an expression.


=head2 B<REQUIRED> Key => $Key

  The primary key of the item to be deleted. Each element consists of an
attribute name and a value for that attribute.


=head2 ReturnValuesOnConditionCheckFailure => Str

  Use C<ReturnValuesOnConditionCheckFailure> to get the item attributes
if the C<Delete> condition fails. For
C<ReturnValuesOnConditionCheckFailure>, the valid values are: NONE and
ALL_OLD.


=head2 B<REQUIRED> TableName => Str

  Name of the table in which the item to be deleted resides.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

