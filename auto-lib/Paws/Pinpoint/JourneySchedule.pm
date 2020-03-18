package Paws::Pinpoint::JourneySchedule;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Timezone => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::JourneySchedule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::JourneySchedule object:

  $service_obj->Method(Att1 => { EndTime => $value, ..., Timezone => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::JourneySchedule object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTime

=head1 DESCRIPTION

Specifies the schedule settings for a journey.

=head1 ATTRIBUTES


=head2 EndTime => Str

  The scheduled time, in ISO 8601 format, when the journey ended or will
end.


=head2 StartTime => Str

  The scheduled time, in ISO 8601 format, when the journey began or will
begin.


=head2 Timezone => Str

  The starting UTC offset for the journey schedule, if the value of the
journey's LocalTime property is true. Valid values are: UTC, UTC+01,
UTC+02, UTC+03, UTC+03:30, UTC+04, UTC+04:30, UTC+05, UTC+05:30,
UTC+05:45, UTC+06, UTC+06:30, UTC+07, UTC+08, UTC+08:45, UTC+09,
UTC+09:30, UTC+10, UTC+10:30, UTC+11, UTC+12, UTC+12:45, UTC+13,
UTC+13:45, UTC-02, UTC-02:30, UTC-03, UTC-03:30, UTC-04, UTC-05,
UTC-06, UTC-07, UTC-08, UTC-09, UTC-09:30, UTC-10, and UTC-11.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

