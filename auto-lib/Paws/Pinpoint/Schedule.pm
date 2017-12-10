package Paws::Pinpoint::Schedule;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has Frequency => (is => 'ro', isa => 'Str');
  has IsLocalTime => (is => 'ro', isa => 'Bool');
  has QuietTime => (is => 'ro', isa => 'Paws::Pinpoint::QuietTime');
  has StartTime => (is => 'ro', isa => 'Str');
  has Timezone => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::Schedule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::Schedule object:

  $service_obj->Method(Att1 => { EndTime => $value, ..., Timezone => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::Schedule object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTime

=head1 DESCRIPTION

Shcedule that defines when a campaign is run.

=head1 ATTRIBUTES


=head2 EndTime => Str

  The scheduled time that the campaign ends in ISO 8601 format.


=head2 Frequency => Str

  How often the campaign delivers messages. Valid values: ONCE, HOURLY,
DAILY, WEEKLY, MONTHLY


=head2 IsLocalTime => Bool

  Indicates whether the campaign schedule takes effect according to each
user's local time.


=head2 QuietTime => L<Paws::Pinpoint::QuietTime>

  The time during which the campaign sends no messages.


=head2 StartTime => Str

  The scheduled time that the campaign begins in ISO 8601 format.


=head2 Timezone => Str

  The starting UTC offset for the schedule if the value for isLocalTime
is true Valid values: UTC UTC+01 UTC+02 UTC+03 UTC+03:30 UTC+04
UTC+04:30 UTC+05 UTC+05:30 UTC+05:45 UTC+06 UTC+06:30 UTC+07 UTC+08
UTC+09 UTC+09:30 UTC+10 UTC+10:30 UTC+11 UTC+12 UTC+13 UTC-02 UTC-03
UTC-04 UTC-05 UTC-06 UTC-07 UTC-08 UTC-09 UTC-10 UTC-11



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

