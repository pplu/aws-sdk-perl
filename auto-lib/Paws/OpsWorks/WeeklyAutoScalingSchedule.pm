package Paws::OpsWorks::WeeklyAutoScalingSchedule;
  use Moose;
  has Friday => (is => 'ro', isa => 'Paws::OpsWorks::DailyAutoScalingSchedule');
  has Monday => (is => 'ro', isa => 'Paws::OpsWorks::DailyAutoScalingSchedule');
  has Saturday => (is => 'ro', isa => 'Paws::OpsWorks::DailyAutoScalingSchedule');
  has Sunday => (is => 'ro', isa => 'Paws::OpsWorks::DailyAutoScalingSchedule');
  has Thursday => (is => 'ro', isa => 'Paws::OpsWorks::DailyAutoScalingSchedule');
  has Tuesday => (is => 'ro', isa => 'Paws::OpsWorks::DailyAutoScalingSchedule');
  has Wednesday => (is => 'ro', isa => 'Paws::OpsWorks::DailyAutoScalingSchedule');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::WeeklyAutoScalingSchedule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::WeeklyAutoScalingSchedule object:

  $service_obj->Method(Att1 => { Friday => $value, ..., Wednesday => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::WeeklyAutoScalingSchedule object:

  $result = $service_obj->Method(...);
  $result->Att1->Friday

=head1 DESCRIPTION

Describes a time-based instance's auto scaling schedule. The schedule
consists of a set of key-value pairs.

=over

=item *

The key is the time period (a UTC hour) and must be an integer from 0 -
23.

=item *

The value indicates whether the instance should be online or offline
for the specified period, and must be set to "on" or "off"

=back

The default setting for all time periods is off, so you use the
following parameters primarily to specify the online periods. You don't
have to explicitly specify offline periods unless you want to change an
online period to an offline period.

The following example specifies that the instance should be online for
four hours, from UTC 1200 - 1600. It will be off for the remainder of
the day.

C<{ "12":"on", "13":"on", "14":"on", "15":"on" }>

=head1 ATTRIBUTES


=head2 Friday => L<Paws::OpsWorks::DailyAutoScalingSchedule>

  The schedule for Friday.


=head2 Monday => L<Paws::OpsWorks::DailyAutoScalingSchedule>

  The schedule for Monday.


=head2 Saturday => L<Paws::OpsWorks::DailyAutoScalingSchedule>

  The schedule for Saturday.


=head2 Sunday => L<Paws::OpsWorks::DailyAutoScalingSchedule>

  The schedule for Sunday.


=head2 Thursday => L<Paws::OpsWorks::DailyAutoScalingSchedule>

  The schedule for Thursday.


=head2 Tuesday => L<Paws::OpsWorks::DailyAutoScalingSchedule>

  The schedule for Tuesday.


=head2 Wednesday => L<Paws::OpsWorks::DailyAutoScalingSchedule>

  The schedule for Wednesday.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

