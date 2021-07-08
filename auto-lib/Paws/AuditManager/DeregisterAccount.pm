
package Paws::AuditManager::DeregisterAccount;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/account/deregisterAccount');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::DeregisterAccountResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::DeregisterAccount - Arguments for method DeregisterAccount on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterAccount on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method DeregisterAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterAccount.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $DeregisterAccountResponse = $auditmanager->DeregisterAccount();

    # Results:
    my $Status = $DeregisterAccountResponse->Status;

    # Returns a L<Paws::AuditManager::DeregisterAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/DeregisterAccount>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterAccount in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

