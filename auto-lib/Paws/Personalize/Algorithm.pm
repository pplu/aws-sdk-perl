# Generated from default/object.tt
package Paws::Personalize::Algorithm;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw/Personalize_AlgorithmImage Personalize_ResourceConfig Personalize_DefaultHyperParameterRanges Personalize_HyperParameters/;
  has AlgorithmArn => (is => 'ro', isa => Str);
  has AlgorithmImage => (is => 'ro', isa => Personalize_AlgorithmImage);
  has CreationDateTime => (is => 'ro', isa => Str);
  has DefaultHyperParameterRanges => (is => 'ro', isa => Personalize_DefaultHyperParameterRanges);
  has DefaultHyperParameters => (is => 'ro', isa => Personalize_HyperParameters);
  has DefaultResourceConfig => (is => 'ro', isa => Personalize_ResourceConfig);
  has LastUpdatedDateTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str);
  has TrainingInputMode => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DefaultHyperParameters' => {
                                             'class' => 'Paws::Personalize::HyperParameters',
                                             'type' => 'Personalize_HyperParameters'
                                           },
               'DefaultResourceConfig' => {
                                            'class' => 'Paws::Personalize::ResourceConfig',
                                            'type' => 'Personalize_ResourceConfig'
                                          },
               'LastUpdatedDateTime' => {
                                          'type' => 'Str'
                                        },
               'CreationDateTime' => {
                                       'type' => 'Str'
                                     },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'TrainingInputMode' => {
                                        'type' => 'Str'
                                      },
               'DefaultHyperParameterRanges' => {
                                                  'class' => 'Paws::Personalize::DefaultHyperParameterRanges',
                                                  'type' => 'Personalize_DefaultHyperParameterRanges'
                                                },
               'AlgorithmImage' => {
                                     'class' => 'Paws::Personalize::AlgorithmImage',
                                     'type' => 'Personalize_AlgorithmImage'
                                   },
               'Name' => {
                           'type' => 'Str'
                         },
               'AlgorithmArn' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'DefaultHyperParameters' => 'defaultHyperParameters',
                       'DefaultResourceConfig' => 'defaultResourceConfig',
                       'LastUpdatedDateTime' => 'lastUpdatedDateTime',
                       'CreationDateTime' => 'creationDateTime',
                       'RoleArn' => 'roleArn',
                       'TrainingInputMode' => 'trainingInputMode',
                       'DefaultHyperParameterRanges' => 'defaultHyperParameterRanges',
                       'AlgorithmImage' => 'algorithmImage',
                       'Name' => 'name',
                       'AlgorithmArn' => 'algorithmArn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::Algorithm

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::Algorithm object:

  $service_obj->Method(Att1 => { AlgorithmArn => $value, ..., TrainingInputMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::Algorithm object:

  $result = $service_obj->Method(...);
  $result->Att1->AlgorithmArn

=head1 DESCRIPTION

Describes a custom algorithm.

=head1 ATTRIBUTES


=head2 AlgorithmArn => Str

  The Amazon Resource Name (ARN) of the algorithm.


=head2 AlgorithmImage => Personalize_AlgorithmImage

  The URI of the Docker container for the algorithm image.


=head2 CreationDateTime => Str

  The date and time (in Unix time) that the algorithm was created.


=head2 DefaultHyperParameterRanges => Personalize_DefaultHyperParameterRanges

  Specifies the default hyperparameters, their ranges, and whether they
are tunable. A tunable hyperparameter can have its value determined
during hyperparameter optimization (HPO).


=head2 DefaultHyperParameters => Personalize_HyperParameters

  Specifies the default hyperparameters.


=head2 DefaultResourceConfig => Personalize_ResourceConfig

  Specifies the default maximum number of training jobs and parallel
training jobs.


=head2 LastUpdatedDateTime => Str

  The date and time (in Unix time) that the algorithm was last updated.


=head2 Name => Str

  The name of the algorithm.


=head2 RoleArn => Str

  The Amazon Resource Name (ARN) of the role.


=head2 TrainingInputMode => Str

  The training input mode.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

