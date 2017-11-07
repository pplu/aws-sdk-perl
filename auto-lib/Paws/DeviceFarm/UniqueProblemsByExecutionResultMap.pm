package Paws::DeviceFarm::UniqueProblemsByExecutionResultMap;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has ERRORED => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::UniqueProblem]');
  has FAILED => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::UniqueProblem]');
  has PASSED => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::UniqueProblem]');
  has PENDING => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::UniqueProblem]');
  has SKIPPED => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::UniqueProblem]');
  has STOPPED => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::UniqueProblem]');
  has WARNED => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::UniqueProblem]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::UniqueProblemsByExecutionResultMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::UniqueProblemsByExecutionResultMap object:

  $service_obj->Method(Att1 => { ERRORED => $value, ..., WARNED => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::UniqueProblemsByExecutionResultMap object:

  $result = $service_obj->Method(...);
  $result->Att1->ERRORED

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ERRORED => ArrayRef[L<Paws::DeviceFarm::UniqueProblem>]


=head2 FAILED => ArrayRef[L<Paws::DeviceFarm::UniqueProblem>]


=head2 PASSED => ArrayRef[L<Paws::DeviceFarm::UniqueProblem>]


=head2 PENDING => ArrayRef[L<Paws::DeviceFarm::UniqueProblem>]


=head2 SKIPPED => ArrayRef[L<Paws::DeviceFarm::UniqueProblem>]


=head2 STOPPED => ArrayRef[L<Paws::DeviceFarm::UniqueProblem>]


=head2 WARNED => ArrayRef[L<Paws::DeviceFarm::UniqueProblem>]



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

