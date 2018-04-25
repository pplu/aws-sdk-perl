
package Paws::ServiceDiscovery::ListOperations;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ServiceDiscovery::OperationFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOperations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::ListOperationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::ListOperations - Arguments for method ListOperations on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOperations on the 
L<Amazon Route 53 Auto Naming|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method ListOperations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOperations.

As an example:

  $service_obj->ListOperations(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::ServiceDiscovery::OperationFilter>]

A complex type that contains specifications for the operations that you
want to list, for example, operations that you started between a
specified start date and end date.

If you specify more than one filter, an operation must match all
filters to be returned by C<ListOperations>.



=head2 MaxResults => Int

The maximum number of items that you want Amazon Route 53 to return in
the response to a C<ListOperations> request. If you don't specify a
value for C<MaxResults>, Route 53 returns up to 100 operations.



=head2 NextToken => Str

For the first C<ListOperations> request, omit this value.

If the response contains C<NextToken>, submit another C<ListOperations>
request to get the next group of results. Specify the value of
C<NextToken> from the previous response in the next request.

Route 53 gets C<MaxResults> operations and then filters them based on
the specified criteria. It's possible that no operations in the first
C<MaxResults> operations matched the specified criteria but that
subsequent groups of C<MaxResults> operations do contain operations
that match the criteria.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOperations in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

