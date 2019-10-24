# Generated from default/object.tt
package Paws::Personalize::SolutionConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw/Personalize_FeatureTransformationParameters Personalize_HPOConfig Personalize_AutoMLConfig Personalize_HyperParameters/;
  has AlgorithmHyperParameters => (is => 'ro', isa => Personalize_HyperParameters);
  has AutoMLConfig => (is => 'ro', isa => Personalize_AutoMLConfig);
  has EventValueThreshold => (is => 'ro', isa => Str);
  has FeatureTransformationParameters => (is => 'ro', isa => Personalize_FeatureTransformationParameters);
  has HpoConfig => (is => 'ro', isa => Personalize_HPOConfig);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FeatureTransformationParameters' => {
                                                      'class' => 'Paws::Personalize::FeatureTransformationParameters',
                                                      'type' => 'Personalize_FeatureTransformationParameters'
                                                    },
               'AutoMLConfig' => {
                                   'class' => 'Paws::Personalize::AutoMLConfig',
                                   'type' => 'Personalize_AutoMLConfig'
                                 },
               'HpoConfig' => {
                                'class' => 'Paws::Personalize::HPOConfig',
                                'type' => 'Personalize_HPOConfig'
                              },
               'EventValueThreshold' => {
                                          'type' => 'Str'
                                        },
               'AlgorithmHyperParameters' => {
                                               'class' => 'Paws::Personalize::HyperParameters',
                                               'type' => 'Personalize_HyperParameters'
                                             }
             },
  'NameInRequest' => {
                       'FeatureTransformationParameters' => 'featureTransformationParameters',
                       'AutoMLConfig' => 'autoMLConfig',
                       'HpoConfig' => 'hpoConfig',
                       'EventValueThreshold' => 'eventValueThreshold',
                       'AlgorithmHyperParameters' => 'algorithmHyperParameters'
                     }
}
;
    return $Params_map;
  }


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


=head2 AlgorithmHyperParameters => Personalize_HyperParameters

  Lists the hyperparameter names and ranges.


=head2 AutoMLConfig => Personalize_AutoMLConfig

  The AutoMLConfig object containing a list of recipes to search when
AutoML is performed.


=head2 EventValueThreshold => Str

  Only events with a value greater than or equal to this threshold are
used for training a model.


=head2 FeatureTransformationParameters => Personalize_FeatureTransformationParameters

  Lists the feature transformation parameters.


=head2 HpoConfig => Personalize_HPOConfig

  Describes the properties for hyperparameter optimization (HPO). For use
with the bring-your-own-recipe feature. Not used with Amazon
Personalize predefined recipes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

