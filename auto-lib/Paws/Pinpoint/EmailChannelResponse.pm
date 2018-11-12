package Paws::Pinpoint::EmailChannelResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has ConfigurationSet => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has FromAddress => (is => 'ro', isa => 'Str');
  has HasCredential => (is => 'ro', isa => 'Bool');
  has Id => (is => 'ro', isa => 'Str');
  has Identity => (is => 'ro', isa => 'Str');
  has IsArchived => (is => 'ro', isa => 'Bool');
  has LastModifiedBy => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has MessagesPerSecond => (is => 'ro', isa => 'Int');
  has Platform => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EmailChannelResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EmailChannelResponse object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EmailChannelResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Email Channel Response.

=head1 ATTRIBUTES


=head2 ApplicationId => Str

  The unique ID of the application to which the email channel belongs.


=head2 ConfigurationSet => Str

  The configuration set that you want to use when you send email using
the Pinpoint Email API.


=head2 CreationDate => Str

  The date that the settings were last updated in ISO 8601 format.


=head2 Enabled => Bool

  If the channel is enabled for sending messages.


=head2 FromAddress => Str

  The email address used to send emails from.


=head2 HasCredential => Bool

  Not used. Retained for backwards compatibility.


=head2 Id => Str

  Channel ID. Not used, only for backwards compatibility.


=head2 Identity => Str

  The ARN of an identity verified with SES.


=head2 IsArchived => Bool

  Is this channel archived


=head2 LastModifiedBy => Str

  Who last updated this entry


=head2 LastModifiedDate => Str

  Last date this was updated


=head2 MessagesPerSecond => Int

  Messages per second that can be sent


=head2 Platform => Str

  Platform type. Will be "EMAIL"


=head2 RoleArn => Str

  The ARN of an IAM Role used to submit events to Mobile Analytics' event
ingestion service


=head2 Version => Int

  Version of channel



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

