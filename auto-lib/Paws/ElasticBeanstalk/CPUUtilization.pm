package Paws::ElasticBeanstalk::CPUUtilization;
  use Moose;
  has Idle => (is => 'ro', isa => 'Num');
  has IOWait => (is => 'ro', isa => 'Num');
  has IRQ => (is => 'ro', isa => 'Num');
  has Nice => (is => 'ro', isa => 'Num');
  has Privileged => (is => 'ro', isa => 'Num');
  has SoftIRQ => (is => 'ro', isa => 'Num');
  has System => (is => 'ro', isa => 'Num');
  has User => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::CPUUtilization

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::CPUUtilization object:

  $service_obj->Method(Att1 => { Idle => $value, ..., User => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::CPUUtilization object:

  $result = $service_obj->Method(...);
  $result->Att1->Idle

=head1 DESCRIPTION

CPU utilization metrics for an instance.

=head1 ATTRIBUTES


=head2 Idle => Num

  Percentage of time that the CPU has spent in the C<Idle> state over the
last 10 seconds.


=head2 IOWait => Num

  Available on Linux environments only.

Percentage of time that the CPU has spent in the C<I/O Wait> state over
the last 10 seconds.


=head2 IRQ => Num

  Available on Linux environments only.

Percentage of time that the CPU has spent in the C<IRQ> state over the
last 10 seconds.


=head2 Nice => Num

  Available on Linux environments only.

Percentage of time that the CPU has spent in the C<Nice> state over the
last 10 seconds.


=head2 Privileged => Num

  Available on Windows environments only.

Percentage of time that the CPU has spent in the C<Privileged> state
over the last 10 seconds.


=head2 SoftIRQ => Num

  Available on Linux environments only.

Percentage of time that the CPU has spent in the C<SoftIRQ> state over
the last 10 seconds.


=head2 System => Num

  Available on Linux environments only.

Percentage of time that the CPU has spent in the C<System> state over
the last 10 seconds.


=head2 User => Num

  Percentage of time that the CPU has spent in the C<User> state over the
last 10 seconds.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

