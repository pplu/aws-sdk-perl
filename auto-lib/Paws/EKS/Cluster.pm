# Generated from default/object.tt
package Paws::EKS::Cluster;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EKS::Types qw/EKS_Identity EKS_VpcConfigResponse EKS_TagMap EKS_Certificate EKS_Logging/;
  has Arn => (is => 'ro', isa => Str);
  has CertificateAuthority => (is => 'ro', isa => EKS_Certificate);
  has ClientRequestToken => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has Endpoint => (is => 'ro', isa => Str);
  has Identity => (is => 'ro', isa => EKS_Identity);
  has Logging => (is => 'ro', isa => EKS_Logging);
  has Name => (is => 'ro', isa => Str);
  has PlatformVersion => (is => 'ro', isa => Str);
  has ResourcesVpcConfig => (is => 'ro', isa => EKS_VpcConfigResponse);
  has RoleArn => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => EKS_TagMap);
  has Version => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'PlatformVersion' => 'platformVersion',
                       'Tags' => 'tags',
                       'Arn' => 'arn',
                       'Identity' => 'identity',
                       'Endpoint' => 'endpoint',
                       'CertificateAuthority' => 'certificateAuthority',
                       'RoleArn' => 'roleArn',
                       'CreatedAt' => 'createdAt',
                       'Version' => 'version',
                       'Status' => 'status',
                       'ResourcesVpcConfig' => 'resourcesVpcConfig',
                       'Logging' => 'logging',
                       'ClientRequestToken' => 'clientRequestToken',
                       'Name' => 'name'
                     },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'Status' => {
                             'type' => 'Str'
                           },
               'ResourcesVpcConfig' => {
                                         'type' => 'EKS_VpcConfigResponse',
                                         'class' => 'Paws::EKS::VpcConfigResponse'
                                       },
               'Logging' => {
                              'class' => 'Paws::EKS::Logging',
                              'type' => 'EKS_Logging'
                            },
               'CertificateAuthority' => {
                                           'type' => 'EKS_Certificate',
                                           'class' => 'Paws::EKS::Certificate'
                                         },
               'Version' => {
                              'type' => 'Str'
                            },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'Endpoint' => {
                               'type' => 'Str'
                             },
               'Identity' => {
                               'type' => 'EKS_Identity',
                               'class' => 'Paws::EKS::Identity'
                             },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Tags' => {
                           'class' => 'Paws::EKS::TagMap',
                           'type' => 'EKS_TagMap'
                         },
               'PlatformVersion' => {
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

Paws::EKS::Cluster

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::Cluster object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::Cluster object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An object representing an Amazon EKS cluster.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the cluster.


=head2 CertificateAuthority => EKS_Certificate

  The C<certificate-authority-data> for your cluster.


=head2 ClientRequestToken => Str

  Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.


=head2 CreatedAt => Str

  The Unix epoch timestamp in seconds for when the cluster was created.


=head2 Endpoint => Str

  The endpoint for your Kubernetes API server.


=head2 Identity => EKS_Identity

  The identity provider information for the cluster.


=head2 Logging => EKS_Logging

  The logging configuration for your cluster.


=head2 Name => Str

  The name of the cluster.


=head2 PlatformVersion => Str

  The platform version of your Amazon EKS cluster. For more information,
see Platform Versions
(https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html)
in the I< I<Amazon EKS User Guide> >.


=head2 ResourcesVpcConfig => EKS_VpcConfigResponse

  The VPC configuration used by the cluster control plane. Amazon EKS VPC
resources have specific requirements to work properly with Kubernetes.
For more information, see Cluster VPC Considerations
(https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html)
and Cluster Security Group Considerations
(https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html)
in the I<Amazon EKS User Guide>.


=head2 RoleArn => Str

  The Amazon Resource Name (ARN) of the IAM role that provides
permissions for the Kubernetes control plane to make calls to AWS API
operations on your behalf.


=head2 Status => Str

  The current status of the cluster.


=head2 Tags => EKS_TagMap

  The metadata that you apply to the cluster to assist with
categorization and organization. Each tag consists of a key and an
optional value, both of which you define. Cluster tags do not propagate
to any other resources associated with the cluster.


=head2 Version => Str

  The Kubernetes server version for the cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

