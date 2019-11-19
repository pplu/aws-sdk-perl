# Generated from default/object.tt
package Paws::Personalize::CategoricalHyperParameterRange;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::Personalize::Types qw//;
  has Name => (is => 'ro', isa => Str);
  has Values => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Values' => 'values',
                       'Name' => 'name'
                     },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'Values' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CategoricalHyperParameterRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::CategoricalHyperParameterRange object:

  $service_obj->Method(Att1 => { Name => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::CategoricalHyperParameterRange object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Provides the name and range of a categorical hyperparameter.

=head1 ATTRIBUTES


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

