
package Paws::AppMesh::CreateVirtualNode;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has MeshName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meshName', required => 1);
  has Spec => (is => 'ro', isa => 'Paws::AppMesh::VirtualNodeSpec', traits => ['NameInRequest'], request_name => 'spec', required => 1);
  has VirtualNodeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualNodeName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVirtualNode');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meshes/{meshName}/virtualNodes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::CreateVirtualNodeOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::CreateVirtualNode - Arguments for method CreateVirtualNode on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVirtualNode on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method CreateVirtualNode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVirtualNode.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $CreateVirtualNodeOutput = $appmesh->CreateVirtualNode(
      MeshName => 'MyResourceName',
      Spec     => {
        Backends => [ 'MyServiceName', ... ],    # OPTIONAL
        Listeners => [
          {
            HealthCheck => {
              HealthyThreshold   => 1,            # min: 2, max: 10
              IntervalMillis     => 1,            # min: 5000, max: 300000
              Protocol           => 'http',       # values: http, tcp
              TimeoutMillis      => 1,            # min: 2000, max: 60000
              UnhealthyThreshold => 1,            # min: 2, max: 10
              Path               => 'MyString',   # OPTIONAL
              Port               => 1,            # min: 1, max: 65535; OPTIONAL
            },    # OPTIONAL
            PortMapping => {
              Port     => 1,         # min: 1, max: 65535; OPTIONAL
              Protocol => 'http',    # values: http, tcp
            },    # OPTIONAL
          },
          ...
        ],        # OPTIONAL
        ServiceDiscovery => {
          Dns => { ServiceName => 'MyServiceName', },    # OPTIONAL
        },    # OPTIONAL
      },
      VirtualNodeName => 'MyResourceName',
      ClientToken     => 'MyString',         # OPTIONAL
    );

    # Results:
    my $VirtualNode = $CreateVirtualNodeOutput->VirtualNode;

    # Returns a L<Paws::AppMesh::CreateVirtualNodeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/CreateVirtualNode>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.



=head2 B<REQUIRED> MeshName => Str

The name of the service mesh in which to create the virtual node.



=head2 B<REQUIRED> Spec => L<Paws::AppMesh::VirtualNodeSpec>

The virtual node specification to apply.



=head2 B<REQUIRED> VirtualNodeName => Str

The name to use for the virtual node.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVirtualNode in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

