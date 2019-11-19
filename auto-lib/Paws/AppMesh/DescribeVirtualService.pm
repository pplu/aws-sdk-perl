
package Paws::AppMesh::DescribeVirtualService;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw//;
  has MeshName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has VirtualServiceName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeVirtualService');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AppMesh::DescribeVirtualServiceOutput');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'VirtualServiceName' => 'virtualServiceName',
                    'MeshName' => 'meshName'
                  },
  'IsRequired' => {
                    'MeshName' => 1,
                    'VirtualServiceName' => 1
                  },
  'types' => {
               'MeshName' => {
                               'type' => 'Str'
                             },
               'VirtualServiceName' => {
                                         'type' => 'Str'
                                       }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::DescribeVirtualService - Arguments for method DescribeVirtualService on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVirtualService on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method DescribeVirtualService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVirtualService.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $DescribeVirtualServiceOutput = $appmesh->DescribeVirtualService(
      MeshName           => 'MyResourceName',
      VirtualServiceName => 'MyServiceName',

    );

    # Results:
    my $VirtualService = $DescribeVirtualServiceOutput->VirtualService;

    # Returns a L<Paws::AppMesh::DescribeVirtualServiceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/DescribeVirtualService>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MeshName => Str

The name of the service mesh that the virtual service resides in.



=head2 B<REQUIRED> VirtualServiceName => Str

The name of the virtual service to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVirtualService in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

