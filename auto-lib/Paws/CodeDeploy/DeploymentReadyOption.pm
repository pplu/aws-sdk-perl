package Paws::CodeDeploy::DeploymentReadyOption;
  use Moose;
  has ActionOnTimeout => (is => 'ro', isa => 'Str', request_name => 'actionOnTimeout', traits => ['NameInRequest']);
  has WaitTimeInMinutes => (is => 'ro', isa => 'Int', request_name => 'waitTimeInMinutes', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::DeploymentReadyOption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::DeploymentReadyOption object:

  $service_obj->Method(Att1 => { ActionOnTimeout => $value, ..., WaitTimeInMinutes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::DeploymentReadyOption object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionOnTimeout

=head1 DESCRIPTION

Information about how traffic is rerouted to instances in a replacement
environment in a blue/green deployment.

=head1 ATTRIBUTES


=head2 ActionOnTimeout => Str

  Information about when to reroute traffic from an original environment
to a replacement environment in a blue/green deployment.

=over

=item *

CONTINUE_DEPLOYMENT: Register new instances with the load balancer
immediately after the new application revision is installed on the
instances in the replacement environment.

=item *

STOP_DEPLOYMENT: Do not register new instances with a load balancer
unless traffic rerouting is started using ContinueDeployment. If
traffic rerouting is not started before the end of the specified wait
period, the deployment status is changed to Stopped.

=back



=head2 WaitTimeInMinutes => Int

  The number of minutes to wait before the status of a blue/green
deployment is changed to Stopped if rerouting is not started manually.
Applies only to the STOP_DEPLOYMENT option for actionOnTimeout



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

