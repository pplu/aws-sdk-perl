package Paws::EMR::StepExecutionStatusDetail;
  use Moose;
  has CreationDateTime => (is => 'ro', isa => 'Str', required => 1);
  has EndDateTime => (is => 'ro', isa => 'Str');
  has LastStateChangeReason => (is => 'ro', isa => 'Str');
  has StartDateTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::StepExecutionStatusDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::StepExecutionStatusDetail object:

  $service_obj->Method(Att1 => { CreationDateTime => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::StepExecutionStatusDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDateTime

=head1 DESCRIPTION

The execution state of a step.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationDateTime => Str

  The creation date and time of the step.


=head2 EndDateTime => Str

  The completion date and time of the step.


=head2 LastStateChangeReason => Str

  A description of the step's current state.


=head2 StartDateTime => Str

  The start date and time of the step.


=head2 B<REQUIRED> State => Str

  The state of the job flow step.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

