
package Paws::DynamoDB::BatchGetItem {
  use Moose;
  has RequestItems => (is => 'ro', isa => 'Paws::DynamoDB::BatchGetRequestMap', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetItem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::BatchGetItemOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::BatchGetItem - Arguments for method BatchGetItem on Paws::DynamoDB

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetItem on the 
Amazon DynamoDB service. Use the attributes of this class
as arguments to method BatchGetItem.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetItem.

As an example:

  $service_obj->BatchGetItem(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> RequestItems => Paws::DynamoDB::BatchGetRequestMap

  

A map of one or more table names and, for each table, the corresponding
primary keys for the items to retrieve. Each table name can be invoked
only once.

Each element in the map consists of the following:

=over

=item *

I<Keys> - An array of primary key attribute values that define specific
items in the table. For each primary key, you must provide I<all> of
the key attributes. For example, with a hash type primary key, you only
need to provide the hash attribute. For a hash-and-range type primary
key, you must provide I<both> the hash attribute and the range
attribute.

=item *

I<AttributesToGet> - One or more attributes to be retrieved from the
table. By default, all attributes are returned. If a specified
attribute is not found, it does not appear in the result.

Note that I<AttributesToGet> has no effect on provisioned throughput
consumption. DynamoDB determines capacity units consumed based on item
size, not on the amount of data that is returned to an application.

=item *

I<ConsistentRead> - If C<true>, a strongly consistent read is used; if
C<false> (the default), an eventually consistent read is used.

=back










=head2 ReturnConsumedCapacity => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for BatchGetItem in Paws::DynamoDB

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

