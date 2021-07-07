
package Paws::Macie2::AcceptInvitation;
  use Moose;
  has AdministratorAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'administratorAccountId');
  has InvitationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'invitationId', required => 1);
  has MasterAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'masterAccount');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcceptInvitation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/invitations/accept');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::AcceptInvitationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::AcceptInvitation - Arguments for method AcceptInvitation on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcceptInvitation on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method AcceptInvitation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcceptInvitation.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $AcceptInvitationResponse = $macie2->AcceptInvitation(
      InvitationId           => 'My__string',
      AdministratorAccountId => 'My__string',    # OPTIONAL
      MasterAccount          => 'My__string',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/AcceptInvitation>

=head1 ATTRIBUTES


=head2 AdministratorAccountId => Str

The Amazon Web Services account ID for the account that sent the
invitation.



=head2 B<REQUIRED> InvitationId => Str

The unique identifier for the invitation to accept.



=head2 MasterAccount => Str

(Deprecated) The Amazon Web Services account ID for the account that
sent the invitation. This property has been replaced by the
administratorAccountId property and is retained only for backward
compatibility.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptInvitation in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

