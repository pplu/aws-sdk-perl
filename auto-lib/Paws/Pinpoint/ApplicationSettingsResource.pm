package Paws::Pinpoint::ApplicationSettingsResource;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
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


=head2 LastModifiedDate => Str

  The date that the settings were last updated in ISO 8601 format.


=head2 Limits => L<Paws::Pinpoint::CampaignLimits>

  The default campaign limits for the app. These limits apply to each
campaign for the app, unless the campaign overrides the default with
limits of its own.


=head2 QuietTime => L<Paws::Pinpoint::QuietTime>

  The default quiet time for the app. Each campaign for this app sends no
messages during this time unless the campaign overrides the default
with a quiet time of its own.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

