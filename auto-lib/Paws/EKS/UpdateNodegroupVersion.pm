
package Paws::EKS::UpdateNodegroupVersion;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Force => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'force');
  has NodegroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'nodegroupName', required => 1);
  has ReleaseVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'releaseVersion');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateNodegroupVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/node-groups/{nodegroupName}/update-version');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::UpdateNodegroupVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::UpdateNodegroupVersion - Arguments for method UpdateNodegroupVersion on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNodegroupVersion on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method UpdateNodegroupVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNodegroupVersion.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $UpdateNodegroupVersionResponse = $eks->UpdateNodegroupVersion(
      ClusterName        => 'MyString',
      NodegroupName      => 'MyString',
      ClientRequestToken => 'MyString',    # OPTIONAL
      Force              => 1,             # OPTIONAL
      ReleaseVersion     => 'MyString',    # OPTIONAL
      Version            => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Update = $UpdateNodegroupVersionResponse->Update;

    # Returns a L<Paws::EKS::UpdateNodegroupVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/UpdateNodegroupVersion>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> ClusterName => Str

The name of the Amazon EKS cluster that is associated with the managed
node group to update.



=head2 Force => Bool

Force the update if the existing node group's pods are unable to be
drained due to a pod disruption budget issue. If an update fails
because pods could not be drained, you can force the update after it
fails to terminate the old node whether or not any pods are running on
the node.



=head2 B<REQUIRED> NodegroupName => Str

The name of the managed node group to update.



=head2 ReleaseVersion => Str

The AMI version of the Amazon EKS-optimized AMI to use for the update.
By default, the latest available AMI version for the node group's
Kubernetes version is used. For more information, see Amazon
EKS-Optimized Linux AMI Versions
(https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html)
in the I<Amazon EKS User Guide>.



=head2 Version => Str

The Kubernetes version to update to. If no version is specified, then
the Kubernetes version of the node group does not change. You can
specify the Kubernetes version of the cluster to update the node group
to the latest AMI version of the cluster's Kubernetes version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateNodegroupVersion in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

