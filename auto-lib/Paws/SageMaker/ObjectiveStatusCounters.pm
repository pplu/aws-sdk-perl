package Paws::SageMaker::ObjectiveStatusCounters;
  use Moose;
  has Failed => (is => 'ro', isa => 'Int');
  has Pending => (is => 'ro', isa => 'Int');
  has Succeeded => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ObjectiveStatusCounters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ObjectiveStatusCounters object:

  $service_obj->Method(Att1 => { Failed => $value, ..., Succeeded => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ObjectiveStatusCounters object:

  $result = $service_obj->Method(...);
  $result->Att1->Failed

=head1 DESCRIPTION

Specifies the number of training jobs that this hyperparameter tuning
job launched, categorized by the status of their objective metric. The
objective metric status shows whether the final objective metric for
the training job has been evaluated by the tuning job and used in the
hyperparameter tuning process.

=head1 ATTRIBUTES


=head2 Failed => Int

  The number of training jobs whose final objective metric was not
evaluated and used in the hyperparameter tuning process. This typically
occurs when the training job failed or did not emit an objective
metric.


=head2 Pending => Int

  The number of training jobs that are in progress and pending evaluation
of their final objective metric.


=head2 Succeeded => Int

  The number of training jobs whose final objective metric was evaluated
by the hyperparameter tuning job and used in the hyperparameter tuning
process.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

