package Paws::Pinpoint::APNSVoipSandboxChannelResponse;
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

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::APNSVoipSandboxChannelResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::APNSVoipSandboxChannelResponse object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::APNSVoipSandboxChannelResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Provides information about the status and settings of the APNs (Apple
Push Notification service) VoIP sandbox channel for an application.

=head1 ATTRIBUTES


=head2 ApplicationId => Str

  The unique identifier for the application that the APNs VoIP sandbox
channel applies to.


=head2 CreationDate => Str

  The date and time when the APNs VoIP sandbox channel was enabled.


=head2 DefaultAuthenticationMethod => Str

  The default authentication method that Amazon Pinpoint uses to
authenticate with the APNs sandbox environment for this channel, key or
certificate.


=head2 Enabled => Bool

  Specifies whether the APNs VoIP sandbox channel is enabled for the
application.


=head2 HasCredential => Bool

  (Not used) This property is retained only for backward compatibility.


=head2 HasTokenKey => Bool

  Specifies whether the APNs VoIP sandbox channel is configured to
communicate with APNs by using APNs tokens. To provide an
authentication key for APNs tokens, set the TokenKey property of the
channel.


=head2 Id => Str

  (Deprecated) An identifier for the APNs VoIP sandbox channel. This
property is retained only for backward compatibility.


=head2 IsArchived => Bool

  Specifies whether the APNs VoIP sandbox channel is archived.


=head2 LastModifiedBy => Str

  The user who last modified the APNs VoIP sandbox channel.


=head2 LastModifiedDate => Str

  The date and time when the APNs VoIP sandbox channel was last modified.


=head2 B<REQUIRED> Platform => Str

  The type of messaging or notification platform for the channel. For the
APNs VoIP sandbox channel, this value is APNS_VOIP_SANDBOX.


=head2 Version => Int

  The current version of the APNs VoIP sandbox channel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

