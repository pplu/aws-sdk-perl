
package Paws::Organizations::DeregisterDelegatedAdministrator;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has ServicePrincipal => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterDelegatedAdministrator');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DeregisterDelegatedAdministrator - Arguments for method DeregisterDelegatedAdministrator on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterDelegatedAdministrator on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method DeregisterDelegatedAdministrator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterDelegatedAdministrator.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    $organizations->DeregisterDelegatedAdministrator(
      AccountId        => 'MyAccountId',
      ServicePrincipal => 'MyServicePrincipal',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/DeregisterDelegatedAdministrator>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The account ID number of the member account in the organization that
you want to deregister as a delegated administrator.



=head2 B<REQUIRED> ServicePrincipal => Str

The service principal name of an AWS service for which the account is a
delegated administrator.

Delegated administrator privileges are revoked for only the specified
AWS service from the member account. If the specified service is the
only service for which the member account is a delegated administrator,
the operation also revokes Organizations read action permissions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterDelegatedAdministrator in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

