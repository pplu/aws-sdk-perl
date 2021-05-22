
package Paws::AuditManager::GetOrganizationAdminAccount;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOrganizationAdminAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/account/organizationAdminAccount');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::GetOrganizationAdminAccountResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetOrganizationAdminAccount - Arguments for method GetOrganizationAdminAccount on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetOrganizationAdminAccount on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method GetOrganizationAdminAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetOrganizationAdminAccount.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $GetOrganizationAdminAccountResponse =
      $auditmanager->GetOrganizationAdminAccount();

    # Results:
    my $AdminAccountId = $GetOrganizationAdminAccountResponse->AdminAccountId;
    my $OrganizationId = $GetOrganizationAdminAccountResponse->OrganizationId;

  # Returns a L<Paws::AuditManager::GetOrganizationAdminAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/GetOrganizationAdminAccount>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetOrganizationAdminAccount in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

