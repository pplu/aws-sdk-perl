
package Paws::SSOAdmin::ListPermissionSetsProvisionedToAccount;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ProvisioningStatus => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPermissionSetsProvisionedToAccount');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::ListPermissionSetsProvisionedToAccountResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ListPermissionSetsProvisionedToAccount - Arguments for method ListPermissionSetsProvisionedToAccount on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPermissionSetsProvisionedToAccount on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method ListPermissionSetsProvisionedToAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPermissionSetsProvisionedToAccount.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $ListPermissionSetsProvisionedToAccountResponse =
      $sso->ListPermissionSetsProvisionedToAccount(
      AccountId          => 'MyAccountId',
      InstanceArn        => 'MyInstanceArn',
      MaxResults         => 1,                                      # OPTIONAL
      NextToken          => 'MyToken',                              # OPTIONAL
      ProvisioningStatus => 'LATEST_PERMISSION_SET_PROVISIONED',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListPermissionSetsProvisionedToAccountResponse->NextToken;
    my $PermissionSets =
      $ListPermissionSetsProvisionedToAccountResponse->PermissionSets;

# Returns a L<Paws::SSOAdmin::ListPermissionSetsProvisionedToAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/ListPermissionSetsProvisionedToAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The identifier of the AWS account from which to list the assignments.



=head2 B<REQUIRED> InstanceArn => Str

The ARN of the SSO instance under which the operation will be executed.
For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces in the I<AWS General Reference>.



=head2 MaxResults => Int

The maximum number of results to display for the assignment.



=head2 NextToken => Str

The pagination token for the list API. Initially the value is null. Use
the output of previous API calls to make subsequent calls.



=head2 ProvisioningStatus => Str

The status object for the permission set provisioning operation.

Valid values are: C<"LATEST_PERMISSION_SET_PROVISIONED">, C<"LATEST_PERMISSION_SET_NOT_PROVISIONED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPermissionSetsProvisionedToAccount in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

