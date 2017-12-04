package Paws::Organizations::Handshake;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has ExpirationTimestamp => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Parties => (is => 'ro', isa => 'ArrayRef[Paws::Organizations::HandshakeParty]');
  has RequestedTimestamp => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::Organizations::HandshakeResource]');
  has State => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::Handshake

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Organizations::Handshake object:

  $service_obj->Method(Att1 => { Action => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Organizations::Handshake object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Contains information that must be exchanged to securely establish a
relationship between two accounts (an I<originator> and a
I<recipient>). For example, when a master account (the originator)
invites another account (the recipient) to join its organization, the
two accounts exchange information as a series of handshake requests and
responses.

B<Note:> Handshakes that are CANCELED, ACCEPTED, or DECLINED show up in
lists for only 30 days after entering that state After that they are
deleted.

=head1 ATTRIBUTES


=head2 Action => Str

  The type of handshake, indicating what action occurs when the recipient
accepts the handshake. The following handshake types are supported:

=over

=item *

B<INVITE>: This type of handshake represents a request to join an
organization. It is always sent from the master account to only
non-member accounts.

=item *

B<ENABLE_ALL_FEATURES>: This type of handshake represents a request to
enable all features in an organization. It is always sent from the
master account to only I<invited> member accounts. Created accounts do
not receive this because those accounts were created by the
organization's master account and approval is inferred.

=item *

B<APPROVE_ALL_FEATURES>: This type of handshake is sent from the
Organizations service when all member accounts have approved the
C<ENABLE_ALL_FEATURES> invitation. It is sent only to the master
account and signals the master that it can finalize the process to
enable all features.

=back



=head2 Arn => Str

  The Amazon Resource Name (ARN) of a handshake.

For more information about ARNs in Organizations, see ARN Formats
Supported by Organizations
(http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns)
in the I<AWS Organizations User Guide>.


=head2 ExpirationTimestamp => Str

  The date and time that the handshake expires. If the recipient of the
handshake request fails to respond before the specified date and time,
the handshake becomes inactive and is no longer valid.


=head2 Id => Str

  The unique identifier (ID) of a handshake. The originating account
creates the ID when it initiates the handshake.

The regex pattern (http://wikipedia.org/wiki/regex) for handshake ID
string requires "h-" followed by from 8 to 32 lower-case letters or
digits.


=head2 Parties => ArrayRef[L<Paws::Organizations::HandshakeParty>]

  Information about the two accounts that are participating in the
handshake.


=head2 RequestedTimestamp => Str

  The date and time that the handshake request was made.


=head2 Resources => ArrayRef[L<Paws::Organizations::HandshakeResource>]

  Additional information that is needed to process the handshake.


=head2 State => Str

  The current state of the handshake. Use the state to trace the flow of
the handshake through the process from its creation to its acceptance.
The meaning of each of the valid values is as follows:

=over

=item *

B<REQUESTED>: This handshake was sent to multiple recipients
(applicable to only some handshake types) and not all recipients have
responded yet. The request stays in this state until all recipients
respond.

=item *

B<OPEN>: This handshake was sent to multiple recipients (applicable to
only some policy types) and all recipients have responded, allowing the
originator to complete the handshake action.

=item *

B<CANCELED>: This handshake is no longer active because it was canceled
by the originating account.

=item *

B<ACCEPTED>: This handshake is complete because it has been accepted by
the recipient.

=item *

B<DECLINED>: This handshake is no longer active because it was declined
by the recipient account.

=item *

B<EXPIRED>: This handshake is no longer active because the originator
did not receive a response of any kind from the recipient before the
expiration time (15 days).

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

