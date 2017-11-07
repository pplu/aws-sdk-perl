package Paws::ELB::InstanceState;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has ReasonCode => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::InstanceState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELB::InstanceState object:

  $service_obj->Method(Att1 => { Description => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELB::InstanceState object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Information about the state of an EC2 instance.

=head1 ATTRIBUTES


=head2 Description => Str

  A description of the instance state. This string can contain one or
more of the following messages.

=over

=item *

C<N/A>

=item *

C<A transient error occurred. Please try again later.>

=item *

C<Instance has failed at least the UnhealthyThreshold number of health
checks consecutively.>

=item *

C<Instance has not passed the configured HealthyThreshold number of
health checks consecutively.>

=item *

C<Instance registration is still in progress.>

=item *

C<Instance is in the EC2 Availability Zone for which LoadBalancer is
not configured to route traffic to.>

=item *

C<Instance is not currently registered with the LoadBalancer.>

=item *

C<Instance deregistration currently in progress.>

=item *

C<Disable Availability Zone is currently in progress.>

=item *

C<Instance is in pending state.>

=item *

C<Instance is in stopped state.>

=item *

C<Instance is in terminated state.>

=back



=head2 InstanceId => Str

  The ID of the instance.


=head2 ReasonCode => Str

  Information about the cause of C<OutOfService> instances. Specifically,
whether the cause is Elastic Load Balancing or the instance.

Valid values: C<ELB> | C<Instance> | C<N/A>


=head2 State => Str

  The current state of the instance.

Valid values: C<InService> | C<OutOfService> | C<Unknown>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

