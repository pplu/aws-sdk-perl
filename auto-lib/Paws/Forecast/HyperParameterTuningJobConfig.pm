package Paws::Forecast::HyperParameterTuningJobConfig;
  use Moose;
  has ParameterRanges => (is => 'ro', isa => 'Paws::Forecast::ParameterRanges');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::HyperParameterTuningJobConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::HyperParameterTuningJobConfig object:

  $service_obj->Method(Att1 => { ParameterRanges => $value, ..., ParameterRanges => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::HyperParameterTuningJobConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ParameterRanges

=head1 DESCRIPTION

Configuration information for a hyperparameter tuning job. This object
is specified in the CreatePredictor request.

A hyperparameter is a parameter that governs the model training process
and is set before training starts. This is as opposed to a model
parameter that is determined during training. The values of the
hyperparameters have an effect on the chosen model parameters.

A hyperparameter tuning job is the process of choosing the optimum set
of hyperparameter values that optimize a specified metric. This is
accomplished by running many training jobs over a range of
hyperparameter values. The optimum set of values is dependent on the
algorithm, the training data, and the given metric objective.

=head1 ATTRIBUTES


=head2 ParameterRanges => L<Paws::Forecast::ParameterRanges>

  Specifies the ranges of valid values for the hyperparameters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

