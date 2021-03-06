
package Paws::SecurityHub::AcceptAdministratorInvitation;
  use Moose;
  has AdministratorId => (is => 'ro', isa => 'Str', required => 1);
  has InvitationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcceptAdministratorInvitation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/administrator');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::AcceptAdministratorInvitationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AcceptAdministratorInvitation - Arguments for method AcceptAdministratorInvitation on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcceptAdministratorInvitation on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method AcceptAdministratorInvitation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcceptAdministratorInvitation.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $AcceptAdministratorInvitationResponse =
      $securityhub->AcceptAdministratorInvitation(
      AdministratorId => 'MyNonEmptyString',
      InvitationId    => 'MyNonEmptyString',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/AcceptAdministratorInvitation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdministratorId => Str

The account ID of the Security Hub administrator account that sent the
invitation.



=head2 B<REQUIRED> InvitationId => Str

The identifier of the invitation sent from the Security Hub
administrator account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptAdministratorInvitation in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

