package Paws::OpsWorks::ShutdownEventConfiguration;
  use Moose;
  has DelayUntilElbConnectionsDrained => (is => 'ro', isa => 'Bool');
  has ExecutionTimeout => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::ShutdownEventConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::ShutdownEventConfiguration object:

  $service_obj->Method(Att1 => { DelayUntilElbConnectionsDrained => $value, ..., ExecutionTimeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::ShutdownEventConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DelayUntilElbConnectionsDrained

=head1 DESCRIPTION

The Shutdown event configuration.

=head1 ATTRIBUTES


=head2 DelayUntilElbConnectionsDrained => Bool

  Whether to enable Elastic Load Balancing connection draining. For more
information, see Connection Draining
(http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/TerminologyandKeyConcepts.html#conn-drain)


=head2 ExecutionTimeout => Int

  The time, in seconds, that AWS OpsWorks Stacks will wait after
triggering a Shutdown event before shutting down an instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

