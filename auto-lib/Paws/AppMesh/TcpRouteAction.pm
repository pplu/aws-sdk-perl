package Paws::AppMesh::TcpRouteAction;
  use Moose;
  has WeightedTargets => (is => 'ro', isa => 'ArrayRef[Paws::AppMesh::WeightedTarget]', request_name => 'weightedTargets', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::TcpRouteAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::TcpRouteAction object:

  $service_obj->Method(Att1 => { WeightedTargets => $value, ..., WeightedTargets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::TcpRouteAction object:

  $result = $service_obj->Method(...);
  $result->Att1->WeightedTargets

=head1 DESCRIPTION

An object that represents the action to take if a match is determined.

=head1 ATTRIBUTES


=head2 B<REQUIRED> WeightedTargets => ArrayRef[L<Paws::AppMesh::WeightedTarget>]

  An object that represents the targets that traffic is routed to when a
request matches the route.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

