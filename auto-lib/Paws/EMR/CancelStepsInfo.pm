package Paws::EMR::CancelStepsInfo;
  use Moose;
  has Reason => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StepId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::CancelStepsInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::CancelStepsInfo object:

  $service_obj->Method(Att1 => { Reason => $value, ..., StepId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::CancelStepsInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Reason

=head1 DESCRIPTION

Specification of the status of a CancelSteps request. Available only in
Amazon EMR version 4.8.0 and later, excluding version 5.0.0.

=head1 ATTRIBUTES


=head2 Reason => Str

  The reason for the failure if the CancelSteps request fails.


=head2 Status => Str

  The status of a CancelSteps Request. The value may be SUBMITTED or
FAILED.


=head2 StepId => Str

  The encrypted StepId of a step.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

