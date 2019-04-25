package Paws::AppMesh::WeightedTarget;
  use Moose;
  has VirtualNode => (is => 'ro', isa => 'Str', request_name => 'virtualNode', traits => ['NameInRequest']);
  has Weight => (is => 'ro', isa => 'Int', request_name => 'weight', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::WeightedTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::WeightedTarget object:

  $service_obj->Method(Att1 => { VirtualNode => $value, ..., Weight => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::WeightedTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->VirtualNode

=head1 DESCRIPTION

An object representing a target and its relative weight. Traffic is
distributed across targets according to their relative weight. For
example, a weighted target with a relative weight of 50 receives five
times as much traffic as one with a relative weight of 10.

=head1 ATTRIBUTES


=head2 VirtualNode => Str

  The virtual node to associate with the weighted target.


=head2 Weight => Int

  The relative weight of the weighted target.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

