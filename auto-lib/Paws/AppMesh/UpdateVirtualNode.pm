
package Paws::AppMesh::UpdateVirtualNode;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has MeshName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'meshName', required => 1);
  has MeshOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'meshOwner');
  has Spec => (is => 'ro', isa => 'Paws::AppMesh::VirtualNodeSpec', traits => ['NameInRequest'], request_name => 'spec', required => 1);
  has VirtualNodeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'virtualNodeName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVirtualNode');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppMesh::UpdateVirtualNodeOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::UpdateVirtualNode - Arguments for method UpdateVirtualNode on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVirtualNode on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method UpdateVirtualNode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVirtualNode.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $UpdateVirtualNodeOutput = $appmesh->UpdateVirtualNode(
      MeshName => 'MyResourceName',
      Spec     => {
        BackendDefaults => {
          ClientPolicy => {
            Tls => {
              Validation => {
                Trust => {
                  Acm => {
                    CertificateAuthorityArns => [ 'MyArn', ... ]
                    ,    # min: 1, max: 3

                  },    # OPTIONAL
                  File => {
                    CertificateChain => 'MyFilePath',    # min: 1, max: 255

                  },    # OPTIONAL
                  Sds => {
                    SecretName => 'MySdsSecretName',

                  },    # OPTIONAL
                },
                SubjectAlternativeNames => {
                  Match => {
                    Exact => [
                      'MySubjectAlternativeName', ...    # min: 1, max: 254
                    ],

                  },

                },    # OPTIONAL
              },
              Certificate => {
                File => {
                  CertificateChain => 'MyFilePath',    # min: 1, max: 255
                  PrivateKey       => 'MyFilePath',    # min: 1, max: 255

                },    # OPTIONAL
                Sds => {
                  SecretName => 'MySdsSecretName',

                },    # OPTIONAL
              },    # OPTIONAL
              Enforce => 1,    # OPTIONAL
              Ports   => [
                1, ...         # min: 1, max: 65535
              ],    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Backends => [
          {
            VirtualService => {
              VirtualServiceName => 'MyServiceName',
              ClientPolicy       => {
                Tls => {
                  Validation => {
                    Trust => {
                      Acm => {
                        CertificateAuthorityArns => [ 'MyArn', ... ]
                        ,    # min: 1, max: 3

                      },    # OPTIONAL
                      File => {
                        CertificateChain => 'MyFilePath',    # min: 1, max: 255

                      },    # OPTIONAL
                      Sds => {
                        SecretName => 'MySdsSecretName',

                      },    # OPTIONAL
                    },
                    SubjectAlternativeNames => {
                      Match => {
                        Exact => [
                          'MySubjectAlternativeName', ...    # min: 1, max: 254
                        ],

                      },

                    },    # OPTIONAL
                  },
                  Certificate => {
                    File => {
                      CertificateChain => 'MyFilePath',    # min: 1, max: 255
                      PrivateKey       => 'MyFilePath',    # min: 1, max: 255

                    },    # OPTIONAL
                    Sds => {
                      SecretName => 'MySdsSecretName',

                    },    # OPTIONAL
                  },    # OPTIONAL
                  Enforce => 1,    # OPTIONAL
                  Ports   => [
                    1, ...         # min: 1, max: 65535
                  ],    # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        Listeners => [
          {
            PortMapping => {
              Port     => 1,         # min: 1, max: 65535
              Protocol => 'http',    # values: http, tcp, http2, grpc

            },
            ConnectionPool => {
              Grpc => {
                MaxRequests => 1,    # min: 1

              },    # OPTIONAL
              Http => {
                MaxConnections     => 1,    # min: 1
                MaxPendingRequests => 1,    # min: 1; OPTIONAL
              },    # OPTIONAL
              Http2 => {
                MaxRequests => 1,    # min: 1

              },    # OPTIONAL
              Tcp => {
                MaxConnections => 1,    # min: 1

              },    # OPTIONAL
            },    # OPTIONAL
            HealthCheck => {
              HealthyThreshold   => 1,          # min: 2, max: 10
              IntervalMillis     => 1,          # min: 5000, max: 300000
              Protocol           => 'http',     # values: http, tcp, http2, grpc
              TimeoutMillis      => 1,          # min: 2000, max: 60000
              UnhealthyThreshold => 1,          # min: 2, max: 10
              Path               => 'MyString', # OPTIONAL
              Port               => 1,          # min: 1, max: 65535
            },    # OPTIONAL
            OutlierDetection => {
              BaseEjectionDuration => {
                Unit  => 's',    # values: s, ms; OPTIONAL
                Value => 1,      # OPTIONAL
              },
              Interval => {
                Unit  => 's',    # values: s, ms; OPTIONAL
                Value => 1,      # OPTIONAL
              },
              MaxEjectionPercent => 1,    # max: 100
              MaxServerErrors    => 1,    # min: 1

            },    # OPTIONAL
            Timeout => {
              Grpc => {
                Idle => {
                  Unit  => 's',    # values: s, ms; OPTIONAL
                  Value => 1,      # OPTIONAL
                },
                PerRequest => {
                  Unit  => 's',    # values: s, ms; OPTIONAL
                  Value => 1,      # OPTIONAL
                },
              },    # OPTIONAL
              Http => {
                Idle => {
                  Unit  => 's',    # values: s, ms; OPTIONAL
                  Value => 1,      # OPTIONAL
                },
                PerRequest => {
                  Unit  => 's',    # values: s, ms; OPTIONAL
                  Value => 1,      # OPTIONAL
                },
              },    # OPTIONAL
              Http2 => {
                Idle => {
                  Unit  => 's',    # values: s, ms; OPTIONAL
                  Value => 1,      # OPTIONAL
                },
                PerRequest => {
                  Unit  => 's',    # values: s, ms; OPTIONAL
                  Value => 1,      # OPTIONAL
                },
              },    # OPTIONAL
              Tcp => {
                Idle => {
                  Unit  => 's',    # values: s, ms; OPTIONAL
                  Value => 1,      # OPTIONAL
                },
              },    # OPTIONAL
            },    # OPTIONAL
            Tls => {
              Certificate => {
                Acm => {
                  CertificateArn => 'MyArn',

                },    # OPTIONAL
                File => {
                  CertificateChain => 'MyFilePath',    # min: 1, max: 255
                  PrivateKey       => 'MyFilePath',    # min: 1, max: 255

                },    # OPTIONAL
                Sds => {
                  SecretName => 'MySdsSecretName',

                },    # OPTIONAL
              },
              Mode       => 'STRICT',    # values: STRICT, PERMISSIVE, DISABLED
              Validation => {
                Trust => {
                  File => {
                    CertificateChain => 'MyFilePath',    # min: 1, max: 255

                  },    # OPTIONAL
                  Sds => {
                    SecretName => 'MySdsSecretName',

                  },    # OPTIONAL
                },
                SubjectAlternativeNames => {
                  Match => {
                    Exact => [
                      'MySubjectAlternativeName', ...    # min: 1, max: 254
                    ],

                  },

                },    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # max: 1; OPTIONAL
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
                Key   => 'MyAwsCloudMapInstanceAttributeKey', # min: 1, max: 255
                Value =>
                  'MyAwsCloudMapInstanceAttributeValue',    # min: 1, max: 1024

              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
          Dns => {
            Hostname => 'MyHostname',

          },    # OPTIONAL
        },    # OPTIONAL
      },
      VirtualNodeName => 'MyResourceName',
      ClientToken     => 'MyString',         # OPTIONAL
      MeshOwner       => 'MyAccountId',      # OPTIONAL
    );

    # Results:
    my $VirtualNode = $UpdateVirtualNodeOutput->VirtualNode;

    # Returns a L<Paws::AppMesh::UpdateVirtualNodeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/UpdateVirtualNode>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 36 letters, numbers, hyphens, and
underscores are allowed.



=head2 B<REQUIRED> MeshName => Str

The name of the service mesh that the virtual node resides in.



=head2 MeshOwner => Str

The AWS IAM account ID of the service mesh owner. If the account ID is
not your own, then it's the ID of the account that shared the mesh with
your account. For more information about mesh sharing, see Working with
shared meshes
(https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html).



=head2 B<REQUIRED> Spec => L<Paws::AppMesh::VirtualNodeSpec>

The new virtual node specification to apply. This overwrites the
existing data.



=head2 B<REQUIRED> VirtualNodeName => Str

The name of the virtual node to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVirtualNode in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

