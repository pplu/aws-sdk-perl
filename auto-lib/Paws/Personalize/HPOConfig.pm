# Generated from default/object.tt
package Paws::Personalize::HPOConfig;
  use Moo;
  use Types::Standard qw//;
  use Paws::Personalize::Types qw/Personalize_HPOResourceConfig Personalize_HPOObjective Personalize_HyperParameterRanges/;
  has AlgorithmHyperParameterRanges => (is => 'ro', isa => Personalize_HyperParameterRanges);
  has HpoObjective => (is => 'ro', isa => Personalize_HPOObjective);
  has HpoResourceConfig => (is => 'ro', isa => Personalize_HPOResourceConfig);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AlgorithmHyperParameterRanges' => {
                                                    'class' => 'Paws::Personalize::HyperParameterRanges',
                                                    'type' => 'Personalize_HyperParameterRanges'
                                                  },
               'HpoResourceConfig' => {
                                        'class' => 'Paws::Personalize::HPOResourceConfig',
                                        'type' => 'Personalize_HPOResourceConfig'
                                      },
               'HpoObjective' => {
                                   'class' => 'Paws::Personalize::HPOObjective',
                                   'type' => 'Personalize_HPOObjective'
                                 }
             },
  'NameInRequest' => {
                       'AlgorithmHyperParameterRanges' => 'algorithmHyperParameterRanges',
                       'HpoResourceConfig' => 'hpoResourceConfig',
                       'HpoObjective' => 'hpoObjective'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::HPOConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::HPOConfig object:

  $service_obj->Method(Att1 => { AlgorithmHyperParameterRanges => $value, ..., HpoResourceConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::HPOConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AlgorithmHyperParameterRanges

=head1 DESCRIPTION

Describes the properties for hyperparameter optimization (HPO). For use
with the bring-your-own-recipe feature. Do not use for Amazon
Personalize native recipes.

=head1 ATTRIBUTES


=head2 AlgorithmHyperParameterRanges => Personalize_HyperParameterRanges

  The hyperparameters and their allowable ranges.


=head2 HpoObjective => Personalize_HPOObjective

  The metric to optimize during HPO.


=head2 HpoResourceConfig => Personalize_HPOResourceConfig

  Describes the resource configuration for HPO.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

