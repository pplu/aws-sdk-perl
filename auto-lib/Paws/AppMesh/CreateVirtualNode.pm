
package Paws::AppMesh::CreateVirtualNode;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppMesh::Types qw/AppMesh_TagRef AppMesh_VirtualNodeSpec/;
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has MeshName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Spec => (is => 'ro', isa => AppMesh_VirtualNodeSpec, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[AppMesh_TagRef], predicate => 1);
  has VirtualNodeName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateVirtualNode');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v20190125/meshes/{meshName}/virtualNodes');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AppMesh::CreateVirtualNodeOutput');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Spec' => {
                           'class' => 'Paws::AppMesh::VirtualNodeSpec',
                           'type' => 'AppMesh_VirtualNodeSpec'
                         },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'MeshName' => {
                               'type' => 'Str'
                             },
               'VirtualNodeName' => {
                                      'type' => 'Str'
                                    },
               'Tags' => {
                           'class' => 'Paws::AppMesh::TagRef',
                           'type' => 'ArrayRef[AppMesh_TagRef]'
                         }
             },
  'ParamInURI' => {
                    'MeshName' => 'meshName'
                  },
  'NameInRequest' => {
                       'Spec' => 'spec',
                       'ClientToken' => 'clientToken',
                       'VirtualNodeName' => 'virtualNodeName',
                       'Tags' => 'tags'
                     },
  'IsRequired' => {
                    'Spec' => 1,
                    'MeshName' => 1,
                    'VirtualNodeName' => 1
                  }
}
;
    return $Params_map;
  }

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
        Backends => [
          {
            VirtualService => {
              VirtualServiceName => 'MyServiceName',

            },    # OPTIONAL
          },
          ...
        ],        # max: 25; OPTIONAL
        Listeners => [
          {
            PortMapping => {
              Port     => 1,         # min: 1, max: 65535
              Protocol => 'http',    # values: http, tcp

            },
            HealthCheck => {
              HealthyThreshold   => 1,             # min: 2, max: 10
              IntervalMillis     => 1,             # min: 5000, max: 300000
              Protocol           => 'http',        # values: http, tcp
              TimeoutMillis      => 1,             # min: 2000, max: 60000
              UnhealthyThreshold => 1,             # min: 2, max: 10
              Path               => 'MyString',    # OPTIONAL
              Port               => 1,             # min: 1, max: 65535
            },    # OPTIONAL
          },
          ...
        ],        # max: 1; OPTIONAL
        Logging => {
          AccessLog => {
            File => {
              Path => 'MyFilePath',    # min: 1, max: 255

            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        ServiceDiscovery => {
          AwsCloudMap => {
            NamespaceName => 'MyAwsCloudMapName',    # min: 1, max: 1024
            ServiceName   => 'MyAwsCloudMapName',    # min: 1, max: 1024
            Attributes    => [
              {
                Key => 'MyAwsCloudMapInstanceAttributeKey',   # min: 1, max: 255
                Value =>
                  'MyAwsCloudMapInstanceAttributeValue',    # min: 1, max: 1024

              },
              ...
            ],                                              # OPTIONAL
          },    # OPTIONAL
          Dns => {
            Hostname => 'MyHostname',

          },    # OPTIONAL
        },    # OPTIONAL
      },
      VirtualNodeName => 'MyResourceName',
      ClientToken     => 'MyString',         # OPTIONAL
      Tags            => [
        {
          Key   => 'MyTagKey',               # min: 1, max: 128
          Value => 'MyTagValue',             # max: 256; OPTIONAL
        },
        ...
      ],                                     # OPTIONAL
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

The name of the service mesh to create the virtual node in.



=head2 B<REQUIRED> Spec => AppMesh_VirtualNodeSpec

The virtual node specification to apply.



=head2 Tags => ArrayRef[AppMesh_TagRef]

Optional metadata that you can apply to the virtual node to assist with
categorization and organization. Each tag consists of a key and an
optional value, both of which you define. Tag keys can have a maximum
character length of 128 characters, and tag values can have a maximum
length of 256 characters.



=head2 B<REQUIRED> VirtualNodeName => Str

The name to use for the virtual node.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVirtualNode in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

