package Paws::ECS::Scale;
  use Moose;
  has Unit => (is => 'ro', isa => 'Str', request_name => 'unit', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Num', request_name => 'value', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Scale

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Scale object:

  $service_obj->Method(Att1 => { Unit => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Scale object:

  $result = $service_obj->Method(...);
  $result->Att1->Unit

=head1 DESCRIPTION

A floating-point percentage of the desired number of tasks to place and
keep running in the service. This is used when a service uses the
C<CODE_DEPLOY> deployment controller type.

=head1 ATTRIBUTES


=head2 Unit => Str

  The unit of measure for the scale value.


=head2 Value => Num

  The value, specified as a percent total of a service's C<desiredCount>,
to scale the task set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

