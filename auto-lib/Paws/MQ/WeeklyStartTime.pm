package Paws::MQ::WeeklyStartTime;
  use Moose;
  has DayOfWeek => (is => 'ro', isa => 'Str', request_name => 'dayOfWeek', traits => ['NameInRequest']);
  has TimeOfDay => (is => 'ro', isa => 'Str', request_name => 'timeOfDay', traits => ['NameInRequest']);
  has TimeZone => (is => 'ro', isa => 'Str', request_name => 'timeZone', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::WeeklyStartTime

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::WeeklyStartTime object:

  $service_obj->Method(Att1 => { DayOfWeek => $value, ..., TimeZone => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::WeeklyStartTime object:

  $result = $service_obj->Method(...);
  $result->Att1->DayOfWeek

=head1 DESCRIPTION

The scheduled time period relative to UTC during which Amazon MQ begins
to apply pending updates or patches to the broker.

=head1 ATTRIBUTES


=head2 DayOfWeek => Str

  Required. The day of the week.


=head2 TimeOfDay => Str

  Required. The time, in 24-hour format.


=head2 TimeZone => Str

  The time zone, UTC by default, in either the Country/City format, or
the UTC offset format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

