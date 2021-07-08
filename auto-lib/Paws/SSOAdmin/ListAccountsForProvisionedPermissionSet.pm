
package Paws::SSOAdmin::ListAccountsForProvisionedPermissionSet;
  use Moose;
  has InstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PermissionSetArn => (is => 'ro', isa => 'Str', required => 1);
  has ProvisioningStatus => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccountsForProvisionedPermissionSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::ListAccountsForProvisionedPermissionSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ListAccountsForProvisionedPermissionSet - Arguments for method ListAccountsForProvisionedPermissionSet on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAccountsForProvisionedPermissionSet on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method ListAccountsForProvisionedPermissionSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAccountsForProvisionedPermissionSet.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $ListAccountsForProvisionedPermissionSetResponse =
      $sso->ListAccountsForProvisionedPermissionSet(
      InstanceArn        => 'MyInstanceArn',
      PermissionSetArn   => 'MyPermissionSetArn',
      MaxResults         => 1,                                      # OPTIONAL
      NextToken          => 'MyToken',                              # OPTIONAL
      ProvisioningStatus => 'LATEST_PERMISSION_SET_PROVISIONED',    # OPTIONAL
      );

    # Results:
    my $AccountIds =
      $ListAccountsForProvisionedPermissionSetResponse->AccountIds;
    my $NextToken = $ListAccountsForProvisionedPermissionSetResponse->NextToken;

# Returns a L<Paws::SSOAdmin::ListAccountsForProvisionedPermissionSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/ListAccountsForProvisionedPermissionSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceArn => Str

The ARN of the SSO instance under which the operation will be executed.
For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces in the I<AWS General Reference>.



=head2 MaxResults => Int

The maximum number of results to display for the PermissionSet.



=head2 NextToken => Str

The pagination token for the list API. Initially the value is null. Use
the output of previous API calls to make subsequent calls.



=head2 B<REQUIRED> PermissionSetArn => Str

The ARN of the PermissionSet from which the associated AWS accounts
will be listed.



=head2 ProvisioningStatus => Str

The permission set provisioning status for an AWS account.

Valid values are: C<"LATEST_PERMISSION_SET_PROVISIONED">, C<"LATEST_PERMISSION_SET_NOT_PROVISIONED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAccountsForProvisionedPermissionSet in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

