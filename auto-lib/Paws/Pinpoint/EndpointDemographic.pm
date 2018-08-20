package Paws::Pinpoint::EndpointDemographic;
  use Moose;
  has AppVersion => (is => 'ro', isa => 'Str');
  has Locale => (is => 'ro', isa => 'Str');
  has Make => (is => 'ro', isa => 'Str');
  has Model => (is => 'ro', isa => 'Str');
  has ModelVersion => (is => 'ro', isa => 'Str');
  has Platform => (is => 'ro', isa => 'Str');
  has PlatformVersion => (is => 'ro', isa => 'Str');
  has Timezone => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EndpointDemographic

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EndpointDemographic object:

  $service_obj->Method(Att1 => { AppVersion => $value, ..., Timezone => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EndpointDemographic object:

  $result = $service_obj->Method(...);
  $result->Att1->AppVersion

=head1 DESCRIPTION

Demographic information about the endpoint.

=head1 ATTRIBUTES


=head2 AppVersion => Str

  The version of the application associated with the endpoint.


=head2 Locale => Str

  The endpoint locale in the following format: The ISO 639-1 alpha-2
code, followed by an underscore, followed by an ISO 3166-1 alpha-2
value.


=head2 Make => Str

  The manufacturer of the endpoint device, such as Apple or Samsung.


=head2 Model => Str

  The model name or number of the endpoint device, such as iPhone.


=head2 ModelVersion => Str

  The model version of the endpoint device.


=head2 Platform => Str

  The platform of the endpoint device, such as iOS or Android.


=head2 PlatformVersion => Str

  The platform version of the endpoint device.


=head2 Timezone => Str

  The timezone of the endpoint. Specified as a tz database value, such as
Americas/Los_Angeles.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

