
package Paws::AppMesh::CreateVirtualService;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has MeshName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meshName', required => 1);
  has MeshOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'meshOwner');
  has Spec => (is => 'ro', isa => 'Paws::AppMesh::VirtualServiceSpec', traits => ['NameInRequest'], request_name => 'spec', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AppMesh::TagRef]', traits => ['NameInRequest'], request_name => 'tags');
  has VirtualServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualServiceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVirtualService');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20190125/meshes/{meshName}/virtualServices');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::CreateVirtualServiceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::CreateVirtualService - Arguments for method CreateVirtualService on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVirtualService on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method CreateVirtualService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVirtualService.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $CreateVirtualServiceOutput = $appmesh->CreateVirtualService(
      MeshName => 'MyResourceName',
      Spec     => {
        Provider => {
          VirtualNode => {
            VirtualNodeName => 'MyResourceName',    # min: 1, max: 255

          },    # OPTIONAL
          VirtualRouter => {
            VirtualRouterName => 'MyResourceName',    # min: 1, max: 255

          },    # OPTIONAL
        },    # OPTIONAL
      },
      VirtualServiceName => 'MyServiceName',
      ClientToken        => 'MyString',        # OPTIONAL
      MeshOwner          => 'MyAccountId',     # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $VirtualService = $CreateVirtualServiceOutput->VirtualService;

    # Returns a L<Paws::AppMesh::CreateVirtualServiceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/CreateVirtualService>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.



=head2 B<REQUIRED> MeshName => Str

The name of the service mesh to create the virtual service in.



=head2 MeshOwner => Str

The AWS IAM account ID of the service mesh owner. If the account ID is
not your own, then the account that you specify must share the mesh
with your account before you can create the resource in the service
mesh. For more information about mesh sharing, see Working with shared
meshes
(https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html).



=head2 B<REQUIRED> Spec => L<Paws::AppMesh::VirtualServiceSpec>

The virtual service specification to apply.



=head2 Tags => ArrayRef[L<Paws::AppMesh::TagRef>]

Optional metadata that you can apply to the virtual service to assist
with categorization and organization. Each tag consists of a key and an
optional value, both of which you define. Tag keys can have a maximum
character length of 128 characters, and tag values can have a maximum
length of 256 characters.



=head2 B<REQUIRED> VirtualServiceName => Str

The name to use for the virtual service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVirtualService in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

