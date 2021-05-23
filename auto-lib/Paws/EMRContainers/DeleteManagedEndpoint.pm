
package Paws::EMRContainers::DeleteManagedEndpoint;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'endpointId', required => 1);
  has VirtualClusterId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'virtualClusterId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteManagedEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/virtualclusters/{virtualClusterId}/endpoints/{endpointId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMRContainers::DeleteManagedEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::DeleteManagedEndpoint - Arguments for method DeleteManagedEndpoint on L<Paws::EMRContainers>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteManagedEndpoint on the
L<Amazon EMR Containers|Paws::EMRContainers> service. Use the attributes of this class
as arguments to method DeleteManagedEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteManagedEndpoint.

=head1 SYNOPSIS

    my $emr-containers = Paws->service('EMRContainers');
    my $DeleteManagedEndpointResponse = $emr -containers->DeleteManagedEndpoint(
      Id               => 'MyResourceIdString',
      VirtualClusterId => 'MyResourceIdString',

    );

    # Results:
    my $Id               = $DeleteManagedEndpointResponse->Id;
    my $VirtualClusterId = $DeleteManagedEndpointResponse->VirtualClusterId;

    # Returns a L<Paws::EMRContainers::DeleteManagedEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-containers/DeleteManagedEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the managed endpoint.



=head2 B<REQUIRED> VirtualClusterId => Str

The ID of the endpoint's virtual cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteManagedEndpoint in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

