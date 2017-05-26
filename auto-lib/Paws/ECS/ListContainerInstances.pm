
package Paws::ECS::ListContainerInstances;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has Filter => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filter' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListContainerInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::ListContainerInstancesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListContainerInstances - Arguments for method ListContainerInstances on Paws::ECS

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListContainerInstances on the 
Amazon EC2 Container Service service. Use the attributes of this class
as arguments to method ListContainerInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListContainerInstances.

As an example:

  $service_obj->ListContainerInstances(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the container instances to list. If you do not specify a cluster,
the default cluster is assumed.



=head2 Filter => Str

You can filter the results of a C<ListContainerInstances> operation
with cluster query language statements. For more information, see
Cluster Query Language in the I<Amazon EC2 Container Service Developer
Guide>.



=head2 MaxResults => Int

The maximum number of container instance results returned by
C<ListContainerInstances> in paginated output. When this parameter is
used, C<ListContainerInstances> only returns C<maxResults> results in a
single page along with a C<nextToken> response element. The remaining
results of the initial request can be seen by sending another
C<ListContainerInstances> request with the returned C<nextToken> value.
This value can be between 1 and 100. If this parameter is not used,
then C<ListContainerInstances> returns up to 100 results and a
C<nextToken> value if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListContainerInstances> request where C<maxResults> was used and the
results exceeded the value of that parameter. Pagination continues from
the end of the previous results that returned the C<nextToken> value.
This value is C<null> when there are no more results to return.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.



=head2 Status => Str

Filters the container instances by status. For example, if you specify
the C<DRAINING> status, the results include only container instances
that have been set to C<DRAINING> using UpdateContainerInstancesState.
If you do not specify this parameter, the default is to include
container instances set to C<ACTIVE> and C<DRAINING>.

Valid values are: C<"ACTIVE">, C<"DRAINING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListContainerInstances in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

