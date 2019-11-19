# Generated from default/object.tt
package Paws::Personalize::HyperParameterRanges;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::Personalize::Types qw/Personalize_CategoricalHyperParameterRange Personalize_ContinuousHyperParameterRange Personalize_IntegerHyperParameterRange/;
  has CategoricalHyperParameterRanges => (is => 'ro', isa => ArrayRef[Personalize_CategoricalHyperParameterRange]);
  has ContinuousHyperParameterRanges => (is => 'ro', isa => ArrayRef[Personalize_ContinuousHyperParameterRange]);
  has IntegerHyperParameterRanges => (is => 'ro', isa => ArrayRef[Personalize_IntegerHyperParameterRange]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CategoricalHyperParameterRanges' => {
                                                      'class' => 'Paws::Personalize::CategoricalHyperParameterRange',
                                                      'type' => 'ArrayRef[Personalize_CategoricalHyperParameterRange]'
                                                    },
               'IntegerHyperParameterRanges' => {
                                                  'class' => 'Paws::Personalize::IntegerHyperParameterRange',
                                                  'type' => 'ArrayRef[Personalize_IntegerHyperParameterRange]'
                                                },
               'ContinuousHyperParameterRanges' => {
                                                     'type' => 'ArrayRef[Personalize_ContinuousHyperParameterRange]',
                                                     'class' => 'Paws::Personalize::ContinuousHyperParameterRange'
                                                   }
             },
  'NameInRequest' => {
                       'IntegerHyperParameterRanges' => 'integerHyperParameterRanges',
                       'CategoricalHyperParameterRanges' => 'categoricalHyperParameterRanges',
                       'ContinuousHyperParameterRanges' => 'continuousHyperParameterRanges'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::HyperParameterRanges

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::HyperParameterRanges object:

  $service_obj->Method(Att1 => { CategoricalHyperParameterRanges => $value, ..., IntegerHyperParameterRanges => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::HyperParameterRanges object:

  $result = $service_obj->Method(...);
  $result->Att1->CategoricalHyperParameterRanges

=head1 DESCRIPTION

Specifies the hyperparameters and their ranges. Hyperparameters can be
categorical, continuous, or integer-valued.

=head1 ATTRIBUTES


=head2 CategoricalHyperParameterRanges => ArrayRef[Personalize_CategoricalHyperParameterRange]

  The categorical hyperparameters and their ranges.


=head2 ContinuousHyperParameterRanges => ArrayRef[Personalize_ContinuousHyperParameterRange]

  The continuous hyperparameters and their ranges.


=head2 IntegerHyperParameterRanges => ArrayRef[Personalize_IntegerHyperParameterRange]

  The integer-valued hyperparameters and their ranges.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

