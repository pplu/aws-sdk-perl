package Paws::Pinpoint::ApplicationSettingsResource;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
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

Provides information about an application, including the default
settings for an application.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

  The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.


=head2 CampaignHook => L<Paws::Pinpoint::CampaignHook>

  The settings for the AWS Lambda function to use by default as a code
hook for campaigns in the application.


=head2 LastModifiedDate => Str

  The date and time, in ISO 8601 format, when the application's settings
were last modified.


=head2 Limits => L<Paws::Pinpoint::CampaignLimits>

  The default sending limits for campaigns in the application.


=head2 QuietTime => L<Paws::Pinpoint::QuietTime>

  The default quiet time for campaigns in the application. Quiet time is
a specific time range when campaigns don't send messages to endpoints,
if all the following conditions are met:

=over

=item *

The EndpointDemographic.Timezone property of the endpoint is set to a
valid value.

=item *

The current time in the endpoint's time zone is later than or equal to
the time specified by the QuietTime.Start property for the application
(or a campaign that has custom quiet time settings).

=item *

The current time in the endpoint's time zone is earlier than or equal
to the time specified by the QuietTime.End property for the application
(or a campaign that has custom quiet time settings).

=back

If any of the preceding conditions isn't met, the endpoint will receive
messages from a campaign, even if quiet time is enabled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

