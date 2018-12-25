package Paws::SageMaker::AlgorithmStatusItem;
  use Moose;
  has FailureReason => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AlgorithmStatusItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::AlgorithmStatusItem object:

  $service_obj->Method(Att1 => { FailureReason => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::AlgorithmStatusItem object:

  $result = $service_obj->Method(...);
  $result->Att1->FailureReason

=head1 DESCRIPTION

Represents the overall status of an algorithm.

=head1 ATTRIBUTES


=head2 FailureReason => Str

  if the overall status is C<Failed>, the reason for the failure.


=head2 B<REQUIRED> Name => Str

  The name of the algorithm for which the overall status is being
reported.


=head2 B<REQUIRED> Status => Str

  The current status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

