package Paws::CodeDeploy::TargetGroupPairInfo;
  use Moose;
  has ProdTrafficRoute => (is => 'ro', isa => 'Paws::CodeDeploy::TrafficRoute', request_name => 'prodTrafficRoute', traits => ['NameInRequest']);
  has TargetGroups => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::TargetGroupInfo]', request_name => 'targetGroups', traits => ['NameInRequest']);
  has TestTrafficRoute => (is => 'ro', isa => 'Paws::CodeDeploy::TrafficRoute', request_name => 'testTrafficRoute', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::TargetGroupPairInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::TargetGroupPairInfo object:

  $service_obj->Method(Att1 => { ProdTrafficRoute => $value, ..., TestTrafficRoute => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::TargetGroupPairInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ProdTrafficRoute

=head1 DESCRIPTION

Information about two target groups and how traffic is routed during an
Amazon ECS deployment. An optional test traffic route can be specified.

=head1 ATTRIBUTES


=head2 ProdTrafficRoute => L<Paws::CodeDeploy::TrafficRoute>

  The path used by a load balancer to route production traffic when an
Amazon ECS deployment is complete.


=head2 TargetGroups => ArrayRef[L<Paws::CodeDeploy::TargetGroupInfo>]

  One pair of target groups. One is associated with the original task
set. The second is associated with the task set that serves traffic
after the deployment is complete.


=head2 TestTrafficRoute => L<Paws::CodeDeploy::TrafficRoute>

  An optional path used by a load balancer to route test traffic after an
Amazon ECS deployment. Validation can occur while test traffic is
served during a deployment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

