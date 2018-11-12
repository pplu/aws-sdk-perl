
package Paws::GuardDuty::DeclineInvitations;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeclineInvitations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/invitation/decline');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::DeclineInvitationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::DeclineInvitations - Arguments for method DeclineInvitations on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeclineInvitations on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method DeclineInvitations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeclineInvitations.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $DeclineInvitationsResponse = $guardduty->DeclineInvitations(
      AccountIds => [ 'My__string', ... ],

    );

    # Results:
    my $UnprocessedAccounts = $DeclineInvitationsResponse->UnprocessedAccounts;

    # Returns a L<Paws::GuardDuty::DeclineInvitationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/DeclineInvitations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIds => ArrayRef[Str|Undef]

A list of account IDs of the AWS accounts that sent invitations to the
current member account that you want to decline invitations from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeclineInvitations in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

