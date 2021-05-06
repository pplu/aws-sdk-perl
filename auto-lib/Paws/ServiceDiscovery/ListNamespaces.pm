
package Paws::ServiceDiscovery::ListNamespaces;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ServiceDiscovery::NamespaceFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListNamespaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::ListNamespacesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::ListNamespaces - Arguments for method ListNamespaces on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListNamespaces on the
L<AWS Cloud Map|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method ListNamespaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListNamespaces.

=head1 SYNOPSIS

    my $servicediscovery = Paws->service('ServiceDiscovery');
    my $ListNamespacesResponse = $servicediscovery->ListNamespaces(
      Filters => [
        {
          Name   => 'TYPE',    # values: TYPE
          Values => [
            'MyFilterValue', ...    # min: 1, max: 255
          ],
          Condition => 'EQ',        # values: EQ, IN, BETWEEN; OPTIONAL
        },
        ...
      ],                            # OPTIONAL
      MaxResults => 1,              # OPTIONAL
      NextToken  => 'MyNextToken',  # OPTIONAL
    );

    # Results:
    my $Namespaces = $ListNamespacesResponse->Namespaces;
    my $NextToken  = $ListNamespacesResponse->NextToken;

    # Returns a L<Paws::ServiceDiscovery::ListNamespacesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery/ListNamespaces>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::ServiceDiscovery::NamespaceFilter>]

A complex type that contains specifications for the namespaces that you
want to list.

If you specify more than one filter, a namespace must match all filters
to be returned by C<ListNamespaces>.



=head2 MaxResults => Int

The maximum number of namespaces that you want AWS Cloud Map to return
in the response to a C<ListNamespaces> request. If you don't specify a
value for C<MaxResults>, AWS Cloud Map returns up to 100 namespaces.



=head2 NextToken => Str

For the first C<ListNamespaces> request, omit this value.

If the response contains C<NextToken>, submit another C<ListNamespaces>
request to get the next group of results. Specify the value of
C<NextToken> from the previous response in the next request.

AWS Cloud Map gets C<MaxResults> namespaces and then filters them based
on the specified criteria. It's possible that no namespaces in the
first C<MaxResults> namespaces matched the specified criteria but that
subsequent groups of C<MaxResults> namespaces do contain namespaces
that match the criteria.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListNamespaces in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

