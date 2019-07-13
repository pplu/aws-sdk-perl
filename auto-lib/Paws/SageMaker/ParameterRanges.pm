package Paws::SageMaker::ParameterRanges;
  use Moose;
  has CategoricalParameterRanges => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::CategoricalParameterRange]');
  has ContinuousParameterRanges => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ContinuousParameterRange]');
  has IntegerParameterRanges => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::IntegerParameterRange]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ParameterRanges

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ParameterRanges object:

  $service_obj->Method(Att1 => { CategoricalParameterRanges => $value, ..., IntegerParameterRanges => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ParameterRanges object:

  $result = $service_obj->Method(...);
  $result->Att1->CategoricalParameterRanges

=head1 DESCRIPTION

Specifies ranges of integer, continuous, and categorical
hyperparameters that a hyperparameter tuning job searches. The
hyperparameter tuning job launches training jobs with hyperparameter
values within these ranges to find the combination of values that
result in the training job with the best performance as measured by the
objective metric of the hyperparameter tuning job.

You can specify a maximum of 20 hyperparameters that a hyperparameter
tuning job can search over. Every possible value of a categorical
parameter range counts against this limit.

=head1 ATTRIBUTES


=head2 CategoricalParameterRanges => ArrayRef[L<Paws::SageMaker::CategoricalParameterRange>]

  The array of CategoricalParameterRange objects that specify ranges of
categorical hyperparameters that a hyperparameter tuning job searches.


=head2 ContinuousParameterRanges => ArrayRef[L<Paws::SageMaker::ContinuousParameterRange>]

  The array of ContinuousParameterRange objects that specify ranges of
continuous hyperparameters that a hyperparameter tuning job searches.


=head2 IntegerParameterRanges => ArrayRef[L<Paws::SageMaker::IntegerParameterRange>]

  The array of IntegerParameterRange objects that specify ranges of
integer hyperparameters that a hyperparameter tuning job searches.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

