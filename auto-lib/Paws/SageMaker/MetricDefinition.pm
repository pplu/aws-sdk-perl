package Paws::SageMaker::MetricDefinition;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Regex => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::MetricDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::MetricDefinition object:

  $service_obj->Method(Att1 => { Name => $value, ..., Regex => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::MetricDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Specifies a metric that the training algorithm writes to C<stderr> or
C<stdout>. Amazon SageMakerhyperparameter tuning captures all defined
metrics. You specify one metric that a hyperparameter tuning job uses
as its objective metric to choose the best training job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the metric.


=head2 B<REQUIRED> Regex => Str

  A regular expression that searches the output of a training job and
gets the value of the metric. For more information about using regular
expressions to define metrics, see Defining Objective Metrics
(http://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-define-metrics.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

