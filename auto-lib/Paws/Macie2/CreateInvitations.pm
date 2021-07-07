
package Paws::Macie2::CreateInvitations;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds', required => 1);
  has DisableEmailNotification => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'disableEmailNotification');
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInvitations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/invitations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::CreateInvitationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::CreateInvitations - Arguments for method CreateInvitations on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInvitations on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method CreateInvitations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInvitations.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $CreateInvitationsResponse = $macie2->CreateInvitations(
      AccountIds               => [ 'My__string', ... ],
      DisableEmailNotification => 1,                       # OPTIONAL
      Message                  => 'My__string',            # OPTIONAL
    );

    # Results:
    my $UnprocessedAccounts = $CreateInvitationsResponse->UnprocessedAccounts;

    # Returns a L<Paws::Macie2::CreateInvitationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/CreateInvitations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIds => ArrayRef[Str|Undef]

An array that lists Amazon Web Services account IDs, one for each
account to send the invitation to.



=head2 DisableEmailNotification => Bool

Specifies whether to send an email notification to the root user of
each account that the invitation will be sent to. This notification is
in addition to an alert that the root user receives in Personal Health
Dashboard. To send an email notification to the root user of each
account, set this value to true.



=head2 Message => Str

A custom message to include in the invitation. Amazon Macie adds this
message to the standard content that it sends for an invitation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInvitations in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

