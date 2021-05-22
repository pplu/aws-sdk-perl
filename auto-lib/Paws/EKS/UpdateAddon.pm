
package Paws::EKS::UpdateAddon;
  use Moose;
  has AddonName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'addonName', required => 1);
  has AddonVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'addonVersion');
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has ResolveConflicts => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resolveConflicts');
  has ServiceAccountRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceAccountRoleArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAddon');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/addons/{addonName}/update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::UpdateAddonResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::UpdateAddon - Arguments for method UpdateAddon on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAddon on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method UpdateAddon.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAddon.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $UpdateAddonResponse = $eks->UpdateAddon(
      AddonName             => 'MyString',
      ClusterName           => 'MyClusterName',
      AddonVersion          => 'MyString',        # OPTIONAL
      ClientRequestToken    => 'MyString',        # OPTIONAL
      ResolveConflicts      => 'OVERWRITE',       # OPTIONAL
      ServiceAccountRoleArn => 'MyRoleArn',       # OPTIONAL
    );

    # Results:
    my $Update = $UpdateAddonResponse->Update;

    # Returns a L<Paws::EKS::UpdateAddonResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/UpdateAddon>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddonName => Str

The name of the add-on. The name must match one of the names returned
by C<ListAddons>
(https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html).



=head2 AddonVersion => Str

The version of the add-on. The version must match one of the versions
returned by C<DescribeAddonVersions>
(https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html).



=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> ClusterName => Str

The name of the cluster.



=head2 ResolveConflicts => Str

How to resolve parameter value conflicts when applying the new version
of the add-on to the cluster.

Valid values are: C<"OVERWRITE">, C<"NONE">

=head2 ServiceAccountRoleArn => Str

The Amazon Resource Name (ARN) of an existing IAM role to bind to the
add-on's service account. The role must be assigned the IAM permissions
required by the add-on. If you don't specify an existing IAM role, then
the add-on uses the permissions assigned to the node IAM role. For more
information, see Amazon EKS node IAM role
(https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html)
in the I<Amazon EKS User Guide>.

To specify an existing IAM role, you must have an IAM OpenID Connect
(OIDC) provider created for your cluster. For more information, see
Enabling IAM roles for service accounts on your cluster
(https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html)
in the I<Amazon EKS User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAddon in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

