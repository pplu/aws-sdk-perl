# Generated from default/object.tt
package Paws::Personalize::DefaultCategoricalHyperParameterRange;
  use Moo;
  use Types::Standard qw/Bool Str ArrayRef Undef/;
  use Paws::Personalize::Types qw//;
  has IsTunable => (is => 'ro', isa => Bool);
  has Name => (is => 'ro', isa => Str);
  has Values => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Values' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'IsTunable' => {
                                'type' => 'Bool'
                              },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Values' => 'values',
                       'IsTunable' => 'isTunable',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DefaultCategoricalHyperParameterRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::DefaultCategoricalHyperParameterRange object:

  $service_obj->Method(Att1 => { IsTunable => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::DefaultCategoricalHyperParameterRange object:

  $result = $service_obj->Method(...);
  $result->Att1->IsTunable

=head1 DESCRIPTION

Provides the name and default range of a categorical hyperparameter and
whether the hyperparameter is tunable. A tunable hyperparameter can
have its value determined during hyperparameter optimization (HPO).

=head1 ATTRIBUTES


=head2 IsTunable => Bool

  Whether the hyperparameter is tunable.


=head2 Name => Str

  The name of the hyperparameter.


=head2 Values => ArrayRef[Str|Undef]

  A list of the categories for the hyperparameter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

