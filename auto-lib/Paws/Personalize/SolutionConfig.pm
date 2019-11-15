package Paws::Personalize::SolutionConfig;
  use Moose;
  has AlgorithmHyperParameters => (is => 'ro', isa => 'Paws::Personalize::HyperParameters', request_name => 'algorithmHyperParameters', traits => ['NameInRequest']);
  has AutoMLConfig => (is => 'ro', isa => 'Paws::Personalize::AutoMLConfig', request_name => 'autoMLConfig', traits => ['NameInRequest']);
  has EventValueThreshold => (is => 'ro', isa => 'Str', request_name => 'eventValueThreshold', traits => ['NameInRequest']);
  has FeatureTransformationParameters => (is => 'ro', isa => 'Paws::Personalize::FeatureTransformationParameters', request_name => 'featureTransformationParameters', traits => ['NameInRequest']);
  has HpoConfig => (is => 'ro', isa => 'Paws::Personalize::HPOConfig', request_name => 'hpoConfig', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::SolutionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::SolutionConfig object:

  $service_obj->Method(Att1 => { AlgorithmHyperParameters => $value, ..., HpoConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::SolutionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AlgorithmHyperParameters

=head1 DESCRIPTION

Describes the configuration properties for the solution.

=head1 ATTRIBUTES


=head2 AlgorithmHyperParameters => L<Paws::Personalize::HyperParameters>

  Lists the hyperparameter names and ranges.


=head2 AutoMLConfig => L<Paws::Personalize::AutoMLConfig>

  The AutoMLConfig object containing a list of recipes to search when
AutoML is performed.


=head2 EventValueThreshold => Str

  Only events with a value greater than or equal to this threshold are
used for training a model.


=head2 FeatureTransformationParameters => L<Paws::Personalize::FeatureTransformationParameters>

  Lists the feature transformation parameters.


=head2 HpoConfig => L<Paws::Personalize::HPOConfig>

  Describes the properties for hyperparameter optimization (HPO).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

