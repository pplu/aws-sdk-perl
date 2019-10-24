# Generated from default/object.tt
package Paws::Personalize::DefaultContinuousHyperParameterRange;
  use Moo;
  use Types::Standard qw/Bool Num Str/;
  use Paws::Personalize::Types qw//;
  has IsTunable => (is => 'ro', isa => Bool);
  has MaxValue => (is => 'ro', isa => Num);
  has MinValue => (is => 'ro', isa => Num);
  has Name => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxValue' => {
                               'type' => 'Num'
                             },
               'IsTunable' => {
                                'type' => 'Bool'
                              },
               'MinValue' => {
                               'type' => 'Num'
                             },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'MaxValue' => 'maxValue',
                       'IsTunable' => 'isTunable',
                       'MinValue' => 'minValue',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DefaultContinuousHyperParameterRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::DefaultContinuousHyperParameterRange object:

  $service_obj->Method(Att1 => { IsTunable => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::DefaultContinuousHyperParameterRange object:

  $result = $service_obj->Method(...);
  $result->Att1->IsTunable

=head1 DESCRIPTION

Provides the name and default range of a continuous hyperparameter and
whether the hyperparameter is tunable. A tunable hyperparameter can
have its value determined during hyperparameter optimization (HPO).

=head1 ATTRIBUTES


=head2 IsTunable => Bool

  Whether the hyperparameter is tunable.


=head2 MaxValue => Num

  The maximum allowable value for the hyperparameter.


=head2 MinValue => Num

  The minimum allowable value for the hyperparameter.


=head2 Name => Str

  The name of the hyperparameter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

