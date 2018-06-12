package Paws::SageMaker::ResourceLimits;
  use Moose;
  has MaxNumberOfTrainingJobs => (is => 'ro', isa => 'Int', required => 1);
  has MaxParallelTrainingJobs => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ResourceLimits

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ResourceLimits object:

  $service_obj->Method(Att1 => { MaxNumberOfTrainingJobs => $value, ..., MaxParallelTrainingJobs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ResourceLimits object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxNumberOfTrainingJobs

=head1 DESCRIPTION

Specifies the maximum number of training jobs and parallel training
jobs that a hyperparameter tuning job can launch.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaxNumberOfTrainingJobs => Int

  The maximum number of training jobs that a hyperparameter tuning job
can launch.


=head2 B<REQUIRED> MaxParallelTrainingJobs => Int

  The maximum number of concurrent training jobs that a hyperparameter
tuning job can launch.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

