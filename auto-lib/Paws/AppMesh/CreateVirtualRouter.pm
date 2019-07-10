
package Paws::AppMesh::CreateVirtualRouter;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has MeshName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meshName', required => 1);
  has Spec => (is => 'ro', isa => 'Paws::AppMesh::VirtualRouterSpec', traits => ['NameInRequest'], request_name => 'spec', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AppMesh::TagRef]', traits => ['NameInRequest'], request_name => 'tags');
  has VirtualRouterName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualRouterName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVirtualRouter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20190125/meshes/{meshName}/virtualRouters');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::CreateVirtualRouterOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::CreateVirtualRouter - Arguments for method CreateVirtualRouter on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVirtualRouter on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method CreateVirtualRouter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVirtualRouter.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $CreateVirtualRouterOutput = $appmesh->CreateVirtualRouter(
      MeshName => 'MyResourceName',
      Spec     => {
        Listeners => [
          {
            PortMapping => {
              Port     => 1,         # min: 1, max: 65535
              Protocol => 'http',    # values: http, tcp

            },

          },
          ...
        ],                           # min: 1, max: 1; OPTIONAL
      },
      VirtualRouterName => 'MyResourceName',
      ClientToken       => 'MyString',         # OPTIONAL
      Tags              => [
        {
          Key   => 'MyTagKey',                 # min: 1, max: 128
          Value => 'MyTagValue',               # max: 256; OPTIONAL
        },
        ...
      ],                                       # OPTIONAL
    );

    # Results:
    my $VirtualRouter = $CreateVirtualRouterOutput->VirtualRouter;

    # Returns a L<Paws::AppMesh::CreateVirtualRouterOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/CreateVirtualRouter>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.



=head2 B<REQUIRED> MeshName => Str

The name of the service mesh to create the virtual router in.



=head2 B<REQUIRED> Spec => L<Paws::AppMesh::VirtualRouterSpec>

The virtual router specification to apply.



=head2 Tags => ArrayRef[L<Paws::AppMesh::TagRef>]

Optional metadata that you can apply to the virtual router to assist
with categorization and organization. Each tag consists of a key and an
optional value, both of which you define. Tag keys can have a maximum
character length of 128 characters, and tag values can have a maximum
length of 256 characters.



=head2 B<REQUIRED> VirtualRouterName => Str

The name to use for the virtual router.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVirtualRouter in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

