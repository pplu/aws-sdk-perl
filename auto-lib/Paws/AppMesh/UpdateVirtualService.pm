
package Paws::AppMesh::UpdateVirtualService;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw/AppMesh_VirtualServiceSpec/;
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has MeshName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Spec => (is => 'ro', isa => AppMesh_VirtualServiceSpec, required => 1, predicate => 1);
  has VirtualServiceName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateVirtualService');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AppMesh::UpdateVirtualServiceOutput');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Spec' => {
                           'class' => 'Paws::AppMesh::VirtualServiceSpec',
                           'type' => 'AppMesh_VirtualServiceSpec'
                         },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'MeshName' => {
                               'type' => 'Str'
                             },
               'VirtualServiceName' => {
                                         'type' => 'Str'
                                       }
             },
  'ParamInURI' => {
                    'MeshName' => 'meshName',
                    'VirtualServiceName' => 'virtualServiceName'
                  },
  'NameInRequest' => {
                       'Spec' => 'spec',
                       'ClientToken' => 'clientToken'
                     },
  'IsRequired' => {
                    'Spec' => 1,
                    'MeshName' => 1,
                    'VirtualServiceName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::UpdateVirtualService - Arguments for method UpdateVirtualService on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVirtualService on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method UpdateVirtualService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVirtualService.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $UpdateVirtualServiceOutput = $appmesh->UpdateVirtualService(
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
    );

    # Results:
    my $VirtualService = $UpdateVirtualServiceOutput->VirtualService;

    # Returns a L<Paws::AppMesh::UpdateVirtualServiceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/UpdateVirtualService>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.



=head2 B<REQUIRED> MeshName => Str

The name of the service mesh that the virtual service resides in.



=head2 B<REQUIRED> Spec => AppMesh_VirtualServiceSpec

The new virtual service specification to apply. This overwrites the
existing data.



=head2 B<REQUIRED> VirtualServiceName => Str

The name of the virtual service to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVirtualService in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

