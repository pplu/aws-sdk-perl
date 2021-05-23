
package Paws::EMRContainers::ListManagedEndpoints;
  use Moose;
  has CreatedAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdAfter');
  has CreatedBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdBefore');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has States => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'states');
  has Types => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'types');
  has VirtualClusterId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'virtualClusterId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListManagedEndpoints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/virtualclusters/{virtualClusterId}/endpoints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMRContainers::ListManagedEndpointsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::ListManagedEndpoints - Arguments for method ListManagedEndpoints on L<Paws::EMRContainers>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListManagedEndpoints on the
L<Amazon EMR Containers|Paws::EMRContainers> service. Use the attributes of this class
as arguments to method ListManagedEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListManagedEndpoints.

=head1 SYNOPSIS

    my $emr-containers = Paws->service('EMRContainers');
    my $ListManagedEndpointsResponse = $emr -containers->ListManagedEndpoints(
      VirtualClusterId => 'MyResourceIdString',
      CreatedAfter     => '1970-01-01T01:00:00',    # OPTIONAL
      CreatedBefore    => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults       => 1,                        # OPTIONAL
      NextToken        => 'MyNextToken',            # OPTIONAL
      States           => [
        'CREATING',
        ... # values: CREATING, ACTIVE, TERMINATING, TERMINATED, TERMINATED_WITH_ERRORS
      ],    # OPTIONAL
      Types => [
        'MyEndpointType', ...    # min: 1, max: 64
      ],                         # OPTIONAL
    );

    # Results:
    my $Endpoints = $ListManagedEndpointsResponse->Endpoints;
    my $NextToken = $ListManagedEndpointsResponse->NextToken;

    # Returns a L<Paws::EMRContainers::ListManagedEndpointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-containers/ListManagedEndpoints>

=head1 ATTRIBUTES


=head2 CreatedAfter => Str

The date and time after which the endpoints are created.



=head2 CreatedBefore => Str

The date and time before which the endpoints are created.



=head2 MaxResults => Int

The maximum number of managed endpoints that can be listed.



=head2 NextToken => Str

The token for the next set of managed endpoints to return.



=head2 States => ArrayRef[Str|Undef]

The states of the managed endpoints.



=head2 Types => ArrayRef[Str|Undef]

The types of the managed endpoints.



=head2 B<REQUIRED> VirtualClusterId => Str

The ID of the virtual cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListManagedEndpoints in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

