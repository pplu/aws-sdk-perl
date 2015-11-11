package Paws::EMR::StepStatus;
  use Moose;
  has State => (is => 'ro', isa => 'Str');
  has StateChangeReason => (is => 'ro', isa => 'Paws::EMR::StepStateChangeReason');
  has Timeline => (is => 'ro', isa => 'Paws::EMR::StepTimeline');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::StepStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::StepStatus object:

  $service_obj->Method(Att1 => { State => $value, ..., Timeline => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::StepStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->State

=head1 DESCRIPTION

The execution status details of the cluster step.

=head1 ATTRIBUTES


=head2 State => Str

  The execution state of the cluster step.


=head2 StateChangeReason => L<Paws::EMR::StepStateChangeReason>

  The reason for the step execution status change.


=head2 Timeline => L<Paws::EMR::StepTimeline>

  The timeline of the cluster step status over time.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

