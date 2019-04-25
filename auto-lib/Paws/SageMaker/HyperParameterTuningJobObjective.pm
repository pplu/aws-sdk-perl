package Paws::SageMaker::HyperParameterTuningJobObjective;
  use Moose;
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::HyperParameterTuningJobObjective

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::HyperParameterTuningJobObjective object:

  $service_obj->Method(Att1 => { MetricName => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::HyperParameterTuningJobObjective object:

  $result = $service_obj->Method(...);
  $result->Att1->MetricName

=head1 DESCRIPTION

Defines the objective metric for a hyperparameter tuning job.
Hyperparameter tuning uses the value of this metric to evaluate the
training jobs it launches, and returns the training job that results in
either the highest or lowest value for this metric, depending on the
value you specify for the C<Type> parameter.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetricName => Str

  The name of the metric to use for the objective metric.


=head2 B<REQUIRED> Type => Str

  Whether to minimize or maximize the objective metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

