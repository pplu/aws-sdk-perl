package Paws::SageMaker::LabelCounters;
  use Moose;
  has FailedNonRetryableError => (is => 'ro', isa => 'Int');
  has HumanLabeled => (is => 'ro', isa => 'Int');
  has MachineLabeled => (is => 'ro', isa => 'Int');
  has TotalLabeled => (is => 'ro', isa => 'Int');
  has Unlabeled => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::LabelCounters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::LabelCounters object:

  $service_obj->Method(Att1 => { FailedNonRetryableError => $value, ..., Unlabeled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::LabelCounters object:

  $result = $service_obj->Method(...);
  $result->Att1->FailedNonRetryableError

=head1 DESCRIPTION

Provides a breakdown of the number of objects labeled.

=head1 ATTRIBUTES


=head2 FailedNonRetryableError => Int

  The total number of objects that could not be labeled due to an error.


=head2 HumanLabeled => Int

  The total number of objects labeled by a human worker.


=head2 MachineLabeled => Int

  The total number of objects labeled by automated data labeling.


=head2 TotalLabeled => Int

  The total number of objects labeled.


=head2 Unlabeled => Int

  The total number of objects not yet labeled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

