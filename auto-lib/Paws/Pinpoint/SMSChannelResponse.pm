
package Paws::Pinpoint::SMSChannelResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has HasCredential => (is => 'ro', isa => 'Bool');
  has Id => (is => 'ro', isa => 'Str');
  has IsArchived => (is => 'ro', isa => 'Bool');
  has LastModifiedBy => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has Platform => (is => 'ro', isa => 'Str', required => 1);
  has PromotionalMessagesPerSecond => (is => 'ro', isa => 'Int');
  has SenderId => (is => 'ro', isa => 'Str');
  has ShortCode => (is => 'ro', isa => 'Str');
  has TransactionalMessagesPerSecond => (is => 'ro', isa => 'Int');
  has Version => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SMSChannelResponse

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The unique identifier for the application that the SMS channel applies
to.


=head2 CreationDate => Str

The date and time, in ISO 8601 format, when the SMS channel was
enabled.


=head2 Enabled => Bool

Specifies whether the SMS channel is enabled for the application.


=head2 HasCredential => Bool

(Not used) This property is retained only for backward compatibility.


=head2 Id => Str

(Deprecated) An identifier for the SMS channel. This property is
retained only for backward compatibility.


=head2 IsArchived => Bool

Specifies whether the SMS channel is archived.


=head2 LastModifiedBy => Str

The user who last modified the SMS channel.


=head2 LastModifiedDate => Str

The date and time, in ISO 8601 format, when the SMS channel was last
modified.


=head2 B<REQUIRED> Platform => Str

The type of messaging or notification platform for the channel. For the
SMS channel, this value is SMS.


=head2 PromotionalMessagesPerSecond => Int

The maximum number of promotional messages that you can send through
the SMS channel each second.


=head2 SenderId => Str

The identity that displays on recipients' devices when they receive
messages from the SMS channel.


=head2 ShortCode => Str

The registered short code to use when you send messages through the SMS
channel.


=head2 TransactionalMessagesPerSecond => Int

The maximum number of transactional messages that you can send through
the SMS channel each second.


=head2 Version => Int

The current version of the SMS channel.


=head2 _request_id => Str


=cut

