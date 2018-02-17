package Paws::DynamoDB::AttributeValueUpdate;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Paws::DynamoDB::AttributeValue');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::AttributeValueUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::AttributeValueUpdate object:

  $service_obj->Method(Att1 => { Action => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::AttributeValueUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

For the C<UpdateItem> operation, represents the attributes to be
modified, the action to perform on each, and the new value for each.

You cannot use C<UpdateItem> to update any primary key attributes.
Instead, you will need to delete the item, and then use C<PutItem> to
create a new item with new attributes.

Attribute values cannot be null; string and binary type attributes must
have lengths greater than zero; and set type attributes must not be
empty. Requests with empty values will be rejected with a
C<ValidationException> exception.

=head1 ATTRIBUTES


=head2 Action => Str

  Specifies how to perform the update. Valid values are C<PUT> (default),
C<DELETE>, and C<ADD>. The behavior depends on whether the specified
primary key already exists in the table.

B<If an item with the specified I<Key> is found in the table:>

=over

=item *

C<PUT> - Adds the specified attribute to the item. If the attribute
already exists, it is replaced by the new value.

=item *

C<DELETE> - If no value is specified, the attribute and its value are
removed from the item. The data type of the specified value must match
the existing value's data type.

If a I<set> of values is specified, then those values are subtracted
from the old set. For example, if the attribute value was the set
C<[a,b,c]> and the C<DELETE> action specified C<[a,c]>, then the final
attribute value would be C<[b]>. Specifying an empty set is an error.

=item *

C<ADD> - If the attribute does not already exist, then the attribute
and its values are added to the item. If the attribute does exist, then
the behavior of C<ADD> depends on the data type of the attribute:

=over

=item *

If the existing attribute is a number, and if C<Value> is also a
number, then the C<Value> is mathematically added to the existing
attribute. If C<Value> is a negative number, then it is subtracted from
the existing attribute.

If you use C<ADD> to increment or decrement a number value for an item
that doesn't exist before the update, DynamoDB uses 0 as the initial
value.

In addition, if you use C<ADD> to update an existing item, and intend
to increment or decrement an attribute value which does not yet exist,
DynamoDB uses C<0> as the initial value. For example, suppose that the
item you want to update does not yet have an attribute named
I<itemcount>, but you decide to C<ADD> the number C<3> to this
attribute anyway, even though it currently does not exist. DynamoDB
will create the I<itemcount> attribute, set its initial value to C<0>,
and finally add C<3> to it. The result will be a new I<itemcount>
attribute in the item, with a value of C<3>.

=item *

If the existing data type is a set, and if the C<Value> is also a set,
then the C<Value> is added to the existing set. (This is a I<set>
operation, not mathematical addition.) For example, if the attribute
value was the set C<[1,2]>, and the C<ADD> action specified C<[3]>,
then the final attribute value would be C<[1,2,3]>. An error occurs if
an Add action is specified for a set attribute and the attribute type
specified does not match the existing set type.

Both sets must have the same primitive data type. For example, if the
existing data type is a set of strings, the C<Value> must also be a set
of strings. The same holds true for number sets and binary sets.

=back

This action is only valid for an existing attribute whose data type is
number or is a set. Do not use C<ADD> for any other data types.

=back

B<If no item with the specified I<Key> is found:>

=over

=item *

C<PUT> - DynamoDB creates a new item with the specified primary key,
and then adds the attribute.

=item *

C<DELETE> - Nothing happens; there is no attribute to delete.

=item *

C<ADD> - DynamoDB creates an item with the supplied primary key and
number (or set of numbers) for the attribute value. The only data types
allowed are number and number set; no other data types can be
specified.

=back



=head2 Value => L<Paws::DynamoDB::AttributeValue>

  Represents the data for an attribute.

Each attribute value is described as a name-value pair. The name is the
data type, and the value is the data itself.

For more information, see Data Types
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes)
in the I<Amazon DynamoDB Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

