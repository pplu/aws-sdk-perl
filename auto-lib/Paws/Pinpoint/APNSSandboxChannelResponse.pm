
package Paws::Pinpoint::APNSSandboxChannelResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has DefaultAuthenticationMethod => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has HasCredential => (is => 'ro', isa => 'Bool');
  has HasTokenKey => (is => 'ro', isa => 'Bool');
  has Id => (is => 'ro', isa => 'Str');
  has IsArchived => (is => 'ro', isa => 'Bool');
  has LastModifiedBy => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has Platform => (is => 'ro', isa => 'Str', required => 1);
  has Version => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::APNSSandboxChannelResponse

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The unique identifier for the application that the APNs sandbox channel
applies to.


=head2 CreationDate => Str

The date and time when the APNs sandbox channel was enabled.


=head2 DefaultAuthenticationMethod => Str

The default authentication method that Amazon Pinpoint uses to
authenticate with the APNs sandbox environment for this channel, key or
certificate.


=head2 Enabled => Bool

Specifies whether the APNs sandbox channel is enabled for the
application.


=head2 HasCredential => Bool

(Not used) This property is retained only for backward compatibility.


=head2 HasTokenKey => Bool

Specifies whether the APNs sandbox channel is configured to communicate
with APNs by using APNs tokens. To provide an authentication key for
APNs tokens, set the TokenKey property of the channel.


=head2 Id => Str

(Deprecated) An identifier for the APNs sandbox channel. This property
is retained only for backward compatibility.


=head2 IsArchived => Bool

Specifies whether the APNs sandbox channel is archived.


=head2 LastModifiedBy => Str

The user who last modified the APNs sandbox channel.


=head2 LastModifiedDate => Str

The date and time when the APNs sandbox channel was last modified.


=head2 B<REQUIRED> Platform => Str

The type of messaging or notification platform for the channel. For the
APNs sandbox channel, this value is APNS_SANDBOX.


=head2 Version => Int

The current version of the APNs sandbox channel.


=head2 _request_id => Str


=cut

