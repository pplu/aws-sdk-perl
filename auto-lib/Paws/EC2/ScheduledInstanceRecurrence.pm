package Paws::EC2::ScheduledInstanceRecurrence;
  use Moose;
  has Frequency => (is => 'ro', isa => 'Str', request_name => 'frequency', traits => ['NameInRequest']);
  has Interval => (is => 'ro', isa => 'Int', request_name => 'interval', traits => ['NameInRequest']);
  has OccurrenceDaySet => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'occurrenceDaySet', traits => ['NameInRequest']);
  has OccurrenceRelativeToEnd => (is => 'ro', isa => 'Bool', request_name => 'occurrenceRelativeToEnd', traits => ['NameInRequest']);
  has OccurrenceUnit => (is => 'ro', isa => 'Str', request_name => 'occurrenceUnit', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ScheduledInstanceRecurrence

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ScheduledInstanceRecurrence object:

  $service_obj->Method(Att1 => { Frequency => $value, ..., OccurrenceUnit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ScheduledInstanceRecurrence object:

  $result = $service_obj->Method(...);
  $result->Att1->Frequency

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Frequency => Str

  The frequency (C<Daily>, C<Weekly>, or C<Monthly>).


=head2 Interval => Int

  The interval quantity. The interval unit depends on the value of
C<frequency>. For example, every 2 weeks or every 2 months.


=head2 OccurrenceDaySet => ArrayRef[Int]

  The days. For a monthly schedule, this is one or more days of the month
(1-31). For a weekly schedule, this is one or more days of the week
(1-7, where 1 is Sunday).


=head2 OccurrenceRelativeToEnd => Bool

  Indicates whether the occurrence is relative to the end of the
specified week or month.


=head2 OccurrenceUnit => Str

  The unit for C<occurrenceDaySet> (C<DayOfWeek> or C<DayOfMonth>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
