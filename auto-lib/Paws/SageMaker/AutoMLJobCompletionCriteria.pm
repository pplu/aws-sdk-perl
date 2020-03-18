package Paws::SageMaker::AutoMLJobCompletionCriteria;
  use Moose;
  has MaxAutoMLJobRuntimeInSeconds => (is => 'ro', isa => 'Int');
  has MaxCandidates => (is => 'ro', isa => 'Int');
  has MaxRuntimePerTrainingJobInSeconds => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AutoMLJobCompletionCriteria

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::AutoMLJobCompletionCriteria object:

  $service_obj->Method(Att1 => { MaxAutoMLJobRuntimeInSeconds => $value, ..., MaxRuntimePerTrainingJobInSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::AutoMLJobCompletionCriteria object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxAutoMLJobRuntimeInSeconds

=head1 DESCRIPTION

How long a job is allowed to run, or how many candidates a job is
allowed to generate.

=head1 ATTRIBUTES


=head2 MaxAutoMLJobRuntimeInSeconds => Int

  The maximum time, in seconds, an AutoML job is allowed to wait for a
trial to complete. It must be equal to or greater than
MaxRuntimePerTrainingJobInSeconds.


=head2 MaxCandidates => Int

  The maximum number of times a training job is allowed to run.


=head2 MaxRuntimePerTrainingJobInSeconds => Int

  The maximum time, in seconds, a job is allowed to run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

