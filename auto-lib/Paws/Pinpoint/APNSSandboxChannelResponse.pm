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
  has Platform => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::APNSSandboxChannelResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::APNSSandboxChannelResponse object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::APNSSandboxChannelResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Apple Development Push Notification Service channel definition.

=head1 ATTRIBUTES


=head2 ApplicationId => Str

  The ID of the application to which the channel applies.


=head2 CreationDate => Str

  When was this segment created


=head2 DefaultAuthenticationMethod => Str

  The default authentication method used for APNs.


=head2 Enabled => Bool

  If the channel is enabled for sending messages.


=head2 HasCredential => Bool

  Not used. Retained for backwards compatibility.


=head2 HasTokenKey => Bool

  Indicates whether the channel is configured with a key for APNs token
authentication. Provide a token key by setting the TokenKey attribute.


=head2 Id => Str

  Channel ID. Not used, only for backwards compatibility.


=head2 IsArchived => Bool

  Is this channel archived


=head2 LastModifiedBy => Str

  Who last updated this entry


=head2 LastModifiedDate => Str

  Last date this was updated


=head2 Platform => Str

  The platform type. Will be APNS_SANDBOX.


=head2 Version => Int

  Version of channel



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

