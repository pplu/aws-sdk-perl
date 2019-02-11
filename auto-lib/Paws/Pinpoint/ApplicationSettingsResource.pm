package Paws::Pinpoint::ApplicationSettingsResource;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has CampaignHook => (is => 'ro', isa => 'Paws::Pinpoint::CampaignHook');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has Limits => (is => 'ro', isa => 'Paws::Pinpoint::CampaignLimits');
  has QuietTime => (is => 'ro', isa => 'Paws::Pinpoint::QuietTime');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ApplicationSettingsResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::ApplicationSettingsResource object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., QuietTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::ApplicationSettingsResource object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Application settings.

=head1 ATTRIBUTES


=head2 ApplicationId => Str

  The unique ID for the application.


=head2 CampaignHook => L<Paws::Pinpoint::CampaignHook>

  Default campaign hook.


=head2 LastModifiedDate => Str

  The date that the settings were last updated in ISO 8601 format.


=head2 Limits => L<Paws::Pinpoint::CampaignLimits>

  The default campaign limits for the app. These limits apply to each
campaign for the app, unless the campaign overrides the default with
limits of its own.


=head2 QuietTime => L<Paws::Pinpoint::QuietTime>

  The default quiet time for the app. Campaigns in the app don't send
messages to endpoints during the quiet time. Note: Make sure that your
endpoints include the Demographics.Timezone attribute if you plan to
enable a quiet time for your app. If your endpoints don't include this
attribute, they'll receive the messages that you send them, even if
quiet time is enabled. When you set up an app to use quiet time,
campaigns in that app don't send messages during the time range you
specified, as long as all of the following are true: - The endpoint
includes a valid Demographic.Timezone attribute. - The current time in
the endpoint's time zone is later than or equal to the time specified
in the QuietTime.Start attribute for the app (or campaign, if
applicable). - The current time in the endpoint's time zone is earlier
than or equal to the time specified in the QuietTime.End attribute for
the app (or campaign, if applicable). Individual campaigns within the
app can have their own quiet time settings, which override the quiet
time settings at the app level.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

