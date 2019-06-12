package Paws::Personalize::Algorithm;
  use Moose;
  has AlgorithmArn => (is => 'ro', isa => 'Str', request_name => 'algorithmArn', traits => ['NameInRequest']);
  has AlgorithmImage => (is => 'ro', isa => 'Paws::Personalize::AlgorithmImage', request_name => 'algorithmImage', traits => ['NameInRequest']);
  has CreationDateTime => (is => 'ro', isa => 'Str', request_name => 'creationDateTime', traits => ['NameInRequest']);
  has DefaultHyperParameterRanges => (is => 'ro', isa => 'Paws::Personalize::DefaultHyperParameterRanges', request_name => 'defaultHyperParameterRanges', traits => ['NameInRequest']);
  has DefaultHyperParameters => (is => 'ro', isa => 'Paws::Personalize::HyperParameters', request_name => 'defaultHyperParameters', traits => ['NameInRequest']);
  has DefaultResourceConfig => (is => 'ro', isa => 'Paws::Personalize::ResourceConfig', request_name => 'defaultResourceConfig', traits => ['NameInRequest']);
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedDateTime', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest']);
  has TrainingInputMode => (is => 'ro', isa => 'Str', request_name => 'trainingInputMode', traits => ['NameInRequest']);
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


=head2 AlgorithmImage => L<Paws::Personalize::AlgorithmImage>

  The URI of the Docker container for the algorithm image.


=head2 CreationDateTime => Str

  The date and time (in Unix time) that the algorithm was created.


=head2 DefaultHyperParameterRanges => L<Paws::Personalize::DefaultHyperParameterRanges>

  Specifies the default hyperparameters, their ranges, and whether they
are tunable. A tunable hyperparameter can have its value determined
during hyperparameter optimization (HPO).


=head2 DefaultHyperParameters => L<Paws::Personalize::HyperParameters>

  Specifies the default hyperparameters.


=head2 DefaultResourceConfig => L<Paws::Personalize::ResourceConfig>

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

