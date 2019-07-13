package Paws::ECS::PlacementConstraint;
  use Moose;
  has Expression => (is => 'ro', isa => 'Str', request_name => 'expression', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::PlacementConstraint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::PlacementConstraint object:

  $service_obj->Method(Att1 => { Expression => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::PlacementConstraint object:

  $result = $service_obj->Method(...);
  $result->Att1->Expression

=head1 DESCRIPTION

An object representing a constraint on task placement. For more
information, see Task Placement Constraints
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html)
in the I<Amazon Elastic Container Service Developer Guide>.

=head1 ATTRIBUTES


=head2 Expression => Str

  A cluster query language expression to apply to the constraint. You
cannot specify an expression if the constraint type is
C<distinctInstance>. For more information, see Cluster Query Language
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 Type => Str

  The type of constraint. Use C<distinctInstance> to ensure that each
task in a particular group is running on a different container
instance. Use C<memberOf> to restrict the selection to a group of valid
candidates. The value C<distinctInstance> is not supported in task
definitions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

