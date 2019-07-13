package Paws::CodeDeploy::TrafficRoute;
  use Moose;
  has ListenerArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'listenerArns', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::TrafficRoute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::TrafficRoute object:

  $service_obj->Method(Att1 => { ListenerArns => $value, ..., ListenerArns => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::TrafficRoute object:

  $result = $service_obj->Method(...);
  $result->Att1->ListenerArns

=head1 DESCRIPTION

Information about a listener. The listener contains the path used to
route traffic that is received from the load balancer to a target
group.

=head1 ATTRIBUTES


=head2 ListenerArns => ArrayRef[Str|Undef]

  The ARN of one listener. The listener identifies the route between a
target group and a load balancer. This is an array of strings with a
maximum size of one.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

