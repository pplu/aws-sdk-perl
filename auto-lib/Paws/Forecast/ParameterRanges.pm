# Generated from default/object.tt
package Paws::Forecast::ParameterRanges;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::Forecast::Types qw/Forecast_IntegerParameterRange Forecast_ContinuousParameterRange Forecast_CategoricalParameterRange/;
  has CategoricalParameterRanges => (is => 'ro', isa => ArrayRef[Forecast_CategoricalParameterRange]);
  has ContinuousParameterRanges => (is => 'ro', isa => ArrayRef[Forecast_ContinuousParameterRange]);
  has IntegerParameterRanges => (is => 'ro', isa => ArrayRef[Forecast_IntegerParameterRange]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IntegerParameterRanges' => {
                                             'type' => 'ArrayRef[Forecast_IntegerParameterRange]',
                                             'class' => 'Paws::Forecast::IntegerParameterRange'
                                           },
               'CategoricalParameterRanges' => {
                                                 'type' => 'ArrayRef[Forecast_CategoricalParameterRange]',
                                                 'class' => 'Paws::Forecast::CategoricalParameterRange'
                                               },
               'ContinuousParameterRanges' => {
                                                'class' => 'Paws::Forecast::ContinuousParameterRange',
                                                'type' => 'ArrayRef[Forecast_ContinuousParameterRange]'
                                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ParameterRanges

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::ParameterRanges object:

  $service_obj->Method(Att1 => { CategoricalParameterRanges => $value, ..., IntegerParameterRanges => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::ParameterRanges object:

  $result = $service_obj->Method(...);
  $result->Att1->CategoricalParameterRanges

=head1 DESCRIPTION

Specifies the categorical, continuous, and integer hyperparameters, and
their ranges of tunable values. The range of tunable values determines
which values that a hyperparameter tuning job can choose for the
specified hyperparameter. This object is part of the
HyperParameterTuningJobConfig object.

=head1 ATTRIBUTES


=head2 CategoricalParameterRanges => ArrayRef[Forecast_CategoricalParameterRange]

  Specifies the tunable range for each categorical hyperparameter.


=head2 ContinuousParameterRanges => ArrayRef[Forecast_ContinuousParameterRange]

  Specifies the tunable range for each continuous hyperparameter.


=head2 IntegerParameterRanges => ArrayRef[Forecast_IntegerParameterRange]

  Specifies the tunable range for each integer hyperparameter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

