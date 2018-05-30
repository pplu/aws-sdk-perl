package Paws::CodeDeploy::BlueInstanceTerminationOption;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', request_name => 'action', traits => ['NameInRequest']);
  has TerminationWaitTimeInMinutes => (is => 'ro', isa => 'Int', request_name => 'terminationWaitTimeInMinutes', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BlueInstanceTerminationOption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::BlueInstanceTerminationOption object:

  $service_obj->Method(Att1 => { Action => $value, ..., TerminationWaitTimeInMinutes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::BlueInstanceTerminationOption object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Information about whether instances in the original environment are
terminated when a blue/green deployment is successful.

=head1 ATTRIBUTES


=head2 Action => Str

  The action to take on instances in the original environment after a
successful blue/green deployment.

=over

=item *

TERMINATE: Instances are terminated after a specified wait time.

=item *

KEEP_ALIVE: Instances are left running after they are deregistered from
the load balancer and removed from the deployment group.

=back



=head2 TerminationWaitTimeInMinutes => Int

  The number of minutes to wait after a successful blue/green deployment
before terminating instances from the original environment. The maximum
setting is 2880 minutes (2 days).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

