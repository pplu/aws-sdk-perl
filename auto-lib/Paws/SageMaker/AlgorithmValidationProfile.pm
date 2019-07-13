package Paws::SageMaker::AlgorithmValidationProfile;
  use Moose;
  has ProfileName => (is => 'ro', isa => 'Str', required => 1);
  has TrainingJobDefinition => (is => 'ro', isa => 'Paws::SageMaker::TrainingJobDefinition', required => 1);
  has TransformJobDefinition => (is => 'ro', isa => 'Paws::SageMaker::TransformJobDefinition');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AlgorithmValidationProfile

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::AlgorithmValidationProfile object:

  $service_obj->Method(Att1 => { ProfileName => $value, ..., TransformJobDefinition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::AlgorithmValidationProfile object:

  $result = $service_obj->Method(...);
  $result->Att1->ProfileName

=head1 DESCRIPTION

Defines a training job and a batch transform job that Amazon SageMaker
runs to validate your algorithm.

The data provided in the validation profile is made available to your
buyers on AWS Marketplace.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfileName => Str

  The name of the profile for the algorithm. The name must have 1 to 63
characters. Valid characters are a-z, A-Z, 0-9, and - (hyphen).


=head2 B<REQUIRED> TrainingJobDefinition => L<Paws::SageMaker::TrainingJobDefinition>

  The C<TrainingJobDefinition> object that describes the training job
that Amazon SageMaker runs to validate your algorithm.


=head2 TransformJobDefinition => L<Paws::SageMaker::TransformJobDefinition>

  The C<TransformJobDefinition> object that describes the transform job
that Amazon SageMaker runs to validate your algorithm.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

