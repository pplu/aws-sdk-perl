# Generated from default/object.tt
package Paws::SageMaker::HyperParameterSpecification;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::SageMaker::Types qw/SageMaker_ParameterRange/;
  has DefaultValue => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has IsRequired => (is => 'ro', isa => Bool);
  has IsTunable => (is => 'ro', isa => Bool);
  has Name => (is => 'ro', isa => Str, required => 1);
  has Range => (is => 'ro', isa => SageMaker_ParameterRange);
  has Type => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Type' => 1,
                    'Name' => 1
                  },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'IsTunable' => {
                                'type' => 'Bool'
                              },
               'DefaultValue' => {
                                   'type' => 'Str'
                                 },
               'Description' => {
                                  'type' => 'Str'
                                },
               'IsRequired' => {
                                 'type' => 'Bool'
                               },
               'Range' => {
                            'class' => 'Paws::SageMaker::ParameterRange',
                            'type' => 'SageMaker_ParameterRange'
                          },
               'Type' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::HyperParameterSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::HyperParameterSpecification object:

  $service_obj->Method(Att1 => { DefaultValue => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::HyperParameterSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultValue

=head1 DESCRIPTION

Defines a hyperparameter to be used by an algorithm.

=head1 ATTRIBUTES


=head2 DefaultValue => Str

  The default value for this hyperparameter. If a default value is
specified, a hyperparameter cannot be required.


=head2 Description => Str

  A brief description of the hyperparameter.


=head2 IsRequired => Bool

  Indicates whether this hyperparameter is required.


=head2 IsTunable => Bool

  Indicates whether this hyperparameter is tunable in a hyperparameter
tuning job.


=head2 B<REQUIRED> Name => Str

  The name of this hyperparameter. The name must be unique.


=head2 Range => SageMaker_ParameterRange

  The allowed range for this hyperparameter.


=head2 B<REQUIRED> Type => Str

  The type of this hyperparameter. The valid types are C<Integer>,
C<Continuous>, C<Categorical>, and C<FreeText>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

