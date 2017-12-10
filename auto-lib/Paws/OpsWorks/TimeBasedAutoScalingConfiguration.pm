package Paws::OpsWorks::TimeBasedAutoScalingConfiguration;
  use Moose;
  has AutoScalingSchedule => (is => 'ro', isa => 'Paws::OpsWorks::WeeklyAutoScalingSchedule');
  has InstanceId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::TimeBasedAutoScalingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::TimeBasedAutoScalingConfiguration object:

  $service_obj->Method(Att1 => { AutoScalingSchedule => $value, ..., InstanceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::TimeBasedAutoScalingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScalingSchedule

=head1 DESCRIPTION

Describes an instance's time-based auto scaling configuration.

=head1 ATTRIBUTES


=head2 AutoScalingSchedule => L<Paws::OpsWorks::WeeklyAutoScalingSchedule>

  A C<WeeklyAutoScalingSchedule> object with the instance schedule.


=head2 InstanceId => Str

  The instance ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

