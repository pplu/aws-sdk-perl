package Paws::CodeDeploy::TargetGroupInfo;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::TargetGroupInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::TargetGroupInfo object:

  $service_obj->Method(Att1 => { Name => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::TargetGroupInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Information about a target group in Elastic Load Balancing to use in a
deployment. Instances are registered as targets in a target group, and
traffic is routed to the target group.

=head1 ATTRIBUTES


=head2 Name => Str

  For blue/green deployments, the name of the target group that instances
in the original environment are deregistered from, and instances in the
replacement environment are registered with. For in-place deployments,
the name of the target group that instances are deregistered from, so
they are not serving traffic during a deployment, and then
re-registered with after the deployment is complete.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

