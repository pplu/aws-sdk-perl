package Paws::SageMaker::ScheduleConfig;
  use Moose;
  has ScheduleExpression => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ScheduleConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ScheduleConfig object:

  $service_obj->Method(Att1 => { ScheduleExpression => $value, ..., ScheduleExpression => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ScheduleConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ScheduleExpression

=head1 DESCRIPTION

Configuration details about the monitoring schedule.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScheduleExpression => Str

  A cron expression that describes details about the monitoring schedule.

Currently the only supported cron expressions are:

=over

=item *

If you want to set the job to start every hour, please use the
following:

C<Hourly: cron(0 * ? * * *)>

=item *

If you want to start the job daily:

C<cron(0 [00-23] ? * * *)>

=back

For example, the following are valid cron expressions:

=over

=item *

Daily at noon UTC: C<cron(0 12 ? * * *)>

=item *

Daily at midnight UTC: C<cron(0 0 ? * * *)>

=back

To support running every 6, 12 hours, the following are also supported:

C<cron(0 [00-23]/[01-24] ? * * *)>

For example, the following are valid cron expressions:

=over

=item *

Every 12 hours, starting at 5pm UTC: C<cron(0 17/12 ? * * *)>

=item *

Every two hours starting at midnight: C<cron(0 0/2 ? * * *)>

=back

=over

=item *

Even though the cron expression is set to start at 5PM UTC, note that
there could be a delay of 0-20 minutes from the actual requested time
to run the execution.

=item *

We recommend that if you would like a daily schedule, you do not
provide this parameter. Amazon SageMaker will pick a time for running
every day.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

