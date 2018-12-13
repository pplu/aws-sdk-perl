package Paws::EKS::Cluster;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CertificateAuthority => (is => 'ro', isa => 'Paws::EKS::Certificate', request_name => 'certificateAuthority', traits => ['NameInRequest']);
  has ClientRequestToken => (is => 'ro', isa => 'Str', request_name => 'clientRequestToken', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has Endpoint => (is => 'ro', isa => 'Str', request_name => 'endpoint', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has PlatformVersion => (is => 'ro', isa => 'Str', request_name => 'platformVersion', traits => ['NameInRequest']);
  has ResourcesVpcConfig => (is => 'ro', isa => 'Paws::EKS::VpcConfigResponse', request_name => 'resourcesVpcConfig', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);
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


=head2 CertificateAuthority => L<Paws::EKS::Certificate>

  The C<certificate-authority-data> for your cluster.


=head2 ClientRequestToken => Str

  Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.


=head2 CreatedAt => Str

  The Unix epoch timestamp in seconds for when the cluster was created.


=head2 Endpoint => Str

  The endpoint for your Kubernetes API server.


=head2 Name => Str

  The name of the cluster.


=head2 PlatformVersion => Str

  The platform version of your Amazon EKS cluster. For more information,
see Platform Versions
(http://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html)
in the I< I<Amazon EKS User Guide> >.


=head2 ResourcesVpcConfig => L<Paws::EKS::VpcConfigResponse>

  The VPC subnets and security groups used by the cluster control plane.
Amazon EKS VPC resources have specific requirements to work properly
with Kubernetes. For more information, see Cluster VPC Considerations
(http://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html) and
Cluster Security Group Considerations
(http://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html)
in the I<Amazon EKS User Guide>.


=head2 RoleArn => Str

  The Amazon Resource Name (ARN) of the IAM role that provides
permissions for the Kubernetes control plane to make calls to AWS API
operations on your behalf.


=head2 Status => Str

  The current status of the cluster.


=head2 Version => Str

  The Kubernetes server version for the cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

