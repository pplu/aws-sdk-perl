package Paws::Personalize::HPOConfig;
  use Moose;
  has AlgorithmHyperParameterRanges => (is => 'ro', isa => 'Paws::Personalize::HyperParameterRanges', request_name => 'algorithmHyperParameterRanges', traits => ['NameInRequest']);
  has HpoObjective => (is => 'ro', isa => 'Paws::Personalize::HPOObjective', request_name => 'hpoObjective', traits => ['NameInRequest']);
  has HpoResourceConfig => (is => 'ro', isa => 'Paws::Personalize::HPOResourceConfig', request_name => 'hpoResourceConfig', traits => ['NameInRequest']);
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


=head2 AlgorithmHyperParameterRanges => L<Paws::Personalize::HyperParameterRanges>

  The hyperparameters and their allowable ranges.


=head2 HpoObjective => L<Paws::Personalize::HPOObjective>

  The metric to optimize during HPO.


=head2 HpoResourceConfig => L<Paws::Personalize::HPOResourceConfig>

  Describes the resource configuration for HPO.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

