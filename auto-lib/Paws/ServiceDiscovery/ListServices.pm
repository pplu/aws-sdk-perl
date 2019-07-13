
package Paws::ServiceDiscovery::ListServices;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ServiceDiscovery::ServiceFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServices');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::ListServicesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::ListServices - Arguments for method ListServices on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListServices on the
L<AWS Cloud Map|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method ListServices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListServices.

=head1 SYNOPSIS

    my $servicediscovery = Paws->service('ServiceDiscovery');
    my $ListServicesResponse = $servicediscovery->ListServices(
      Filters => [
        {
          Name   => 'NAMESPACE_ID',    # values: NAMESPACE_ID
          Values => [
            'MyFilterValue', ...       # min: 1, max: 255
          ],
          Condition => 'EQ',           # values: EQ, IN, BETWEEN; OPTIONAL
        },
        ...
      ],                               # OPTIONAL
      MaxResults => 1,                 # OPTIONAL
      NextToken  => 'MyNextToken',     # OPTIONAL
    );

    # Results:
    my $NextToken = $ListServicesResponse->NextToken;
    my $Services  = $ListServicesResponse->Services;

    # Returns a L<Paws::ServiceDiscovery::ListServicesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery/ListServices>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::ServiceDiscovery::ServiceFilter>]

A complex type that contains specifications for the namespaces that you
want to list services for.

If you specify more than one filter, an operation must match all
filters to be returned by C<ListServices>.



=head2 MaxResults => Int

The maximum number of services that you want AWS Cloud Map to return in
the response to a C<ListServices> request. If you don't specify a value
for C<MaxResults>, AWS Cloud Map returns up to 100 services.



=head2 NextToken => Str

For the first C<ListServices> request, omit this value.

If the response contains C<NextToken>, submit another C<ListServices>
request to get the next group of results. Specify the value of
C<NextToken> from the previous response in the next request.

AWS Cloud Map gets C<MaxResults> services and then filters them based
on the specified criteria. It's possible that no services in the first
C<MaxResults> services matched the specified criteria but that
subsequent groups of C<MaxResults> services do contain services that
match the criteria.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListServices in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

