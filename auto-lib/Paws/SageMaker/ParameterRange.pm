package Paws::SageMaker::ParameterRange;
  use Moose;
  has CategoricalParameterRangeSpecification => (is => 'ro', isa => 'Paws::SageMaker::CategoricalParameterRangeSpecification');
  has ContinuousParameterRangeSpecification => (is => 'ro', isa => 'Paws::SageMaker::ContinuousParameterRangeSpecification');
  has IntegerParameterRangeSpecification => (is => 'ro', isa => 'Paws::SageMaker::IntegerParameterRangeSpecification');
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


=head2 CategoricalParameterRangeSpecification => L<Paws::SageMaker::CategoricalParameterRangeSpecification>

  A C<CategoricalParameterRangeSpecification> object that defines the
possible values for a categorical hyperparameter.


=head2 ContinuousParameterRangeSpecification => L<Paws::SageMaker::ContinuousParameterRangeSpecification>

  A C<ContinuousParameterRangeSpecification> object that defines the
possible values for a continuous hyperparameter.


=head2 IntegerParameterRangeSpecification => L<Paws::SageMaker::IntegerParameterRangeSpecification>

  A C<IntegerParameterRangeSpecification> object that defines the
possible values for an integer hyperparameter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

