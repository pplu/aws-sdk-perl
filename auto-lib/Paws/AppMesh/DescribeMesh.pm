
package Paws::AppMesh::DescribeMesh;
  use Moose;
  has MeshName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meshName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMesh');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meshes/{meshName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::DescribeMeshOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::DescribeMesh - Arguments for method DescribeMesh on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMesh on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method DescribeMesh.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMesh.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $DescribeMeshOutput = $appmesh->DescribeMesh(
      MeshName => 'MyResourceName',

    );

    # Results:
    my $Mesh = $DescribeMeshOutput->Mesh;

    # Returns a L<Paws::AppMesh::DescribeMeshOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/DescribeMesh>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MeshName => Str

The name of the service mesh to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMesh in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

