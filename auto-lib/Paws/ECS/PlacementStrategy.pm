package Paws::ECS::PlacementStrategy;
  use Moose;
  has Field => (is => 'ro', isa => 'Str', request_name => 'field', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::PlacementStrategy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::PlacementStrategy object:

  $service_obj->Method(Att1 => { Field => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::PlacementStrategy object:

  $result = $service_obj->Method(...);
  $result->Att1->Field

=head1 DESCRIPTION

The task placement strategy for a task or service. For more
information, see Task Placement Strategies
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html)
in the I<Amazon Elastic Container Service Developer Guide>.

=head1 ATTRIBUTES


=head2 Field => Str

  The field to apply the placement strategy against. For the C<spread>
placement strategy, valid values are C<instanceId> (or C<host>, which
has the same effect), or any platform or custom attribute that is
applied to a container instance, such as
C<attribute:ecs.availability-zone>. For the C<binpack> placement
strategy, valid values are C<cpu> and C<memory>. For the C<random>
placement strategy, this field is not used.


=head2 Type => Str

  The type of placement strategy. The C<random> placement strategy
randomly places tasks on available candidates. The C<spread> placement
strategy spreads placement across available candidates evenly based on
the C<field> parameter. The C<binpack> strategy places tasks on
available candidates that have the least available amount of the
resource that is specified with the C<field> parameter. For example, if
you binpack on memory, a task is placed on the instance with the least
amount of remaining memory (but still enough to run the task).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

