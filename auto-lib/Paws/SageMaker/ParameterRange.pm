# Generated from default/object.tt
package Paws::SageMaker::ParameterRange;
  use Moo;
  use Types::Standard qw//;
  use Paws::SageMaker::Types qw/SageMaker_CategoricalParameterRangeSpecification SageMaker_IntegerParameterRangeSpecification SageMaker_ContinuousParameterRangeSpecification/;
  has CategoricalParameterRangeSpecification => (is => 'ro', isa => SageMaker_CategoricalParameterRangeSpecification);
  has ContinuousParameterRangeSpecification => (is => 'ro', isa => SageMaker_ContinuousParameterRangeSpecification);
  has IntegerParameterRangeSpecification => (is => 'ro', isa => SageMaker_IntegerParameterRangeSpecification);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IntegerParameterRangeSpecification' => {
                                                         'class' => 'Paws::SageMaker::IntegerParameterRangeSpecification',
                                                         'type' => 'SageMaker_IntegerParameterRangeSpecification'
                                                       },
               'ContinuousParameterRangeSpecification' => {
                                                            'class' => 'Paws::SageMaker::ContinuousParameterRangeSpecification',
                                                            'type' => 'SageMaker_ContinuousParameterRangeSpecification'
                                                          },
               'CategoricalParameterRangeSpecification' => {
                                                             'class' => 'Paws::SageMaker::CategoricalParameterRangeSpecification',
                                                             'type' => 'SageMaker_CategoricalParameterRangeSpecification'
                                                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ParameterRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ParameterRange object:

  $service_obj->Method(Att1 => { CategoricalParameterRangeSpecification => $value, ..., IntegerParameterRangeSpecification => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ParameterRange object:

  $result = $service_obj->Method(...);
  $result->Att1->CategoricalParameterRangeSpecification

=head1 DESCRIPTION

Defines the possible values for categorical, continuous, and integer
hyperparameters to be used by an algorithm.

=head1 ATTRIBUTES


=head2 CategoricalParameterRangeSpecification => SageMaker_CategoricalParameterRangeSpecification

  A C<CategoricalParameterRangeSpecification> object that defines the
possible values for a categorical hyperparameter.


=head2 ContinuousParameterRangeSpecification => SageMaker_ContinuousParameterRangeSpecification

  A C<ContinuousParameterRangeSpecification> object that defines the
possible values for a continuous hyperparameter.


=head2 IntegerParameterRangeSpecification => SageMaker_IntegerParameterRangeSpecification

  A C<IntegerParameterRangeSpecification> object that defines the
possible values for an integer hyperparameter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

