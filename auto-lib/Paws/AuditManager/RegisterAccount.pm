
package Paws::AuditManager::RegisterAccount;
  use Moose;
  has DelegatedAdminAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'delegatedAdminAccount');
  has KmsKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKey');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/account/registerAccount');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::RegisterAccountResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::RegisterAccount - Arguments for method RegisterAccount on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterAccount on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method RegisterAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterAccount.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $RegisterAccountResponse = $auditmanager->RegisterAccount(
      DelegatedAdminAccount => 'MyAccountId',    # OPTIONAL
      KmsKey                => 'MyKmsKey',       # OPTIONAL
    );

    # Results:
    my $Status = $RegisterAccountResponse->Status;

    # Returns a L<Paws::AuditManager::RegisterAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/RegisterAccount>

=head1 ATTRIBUTES


=head2 DelegatedAdminAccount => Str

The delegated administrator account for AWS Audit Manager.



=head2 KmsKey => Str

The AWS KMS key details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterAccount in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

