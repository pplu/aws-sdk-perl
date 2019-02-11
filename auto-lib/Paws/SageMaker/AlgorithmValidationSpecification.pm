package Paws::SageMaker::AlgorithmValidationSpecification;
  use Moose;
  has ValidationProfiles => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AlgorithmValidationProfile]', required => 1);
  has ValidationRole => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AlgorithmValidationSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::AlgorithmValidationSpecification object:

  $service_obj->Method(Att1 => { ValidationProfiles => $value, ..., ValidationRole => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::AlgorithmValidationSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->ValidationProfiles

=head1 DESCRIPTION

Specifies configurations for one or more training jobs that Amazon
SageMaker runs to test the algorithm.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ValidationProfiles => ArrayRef[L<Paws::SageMaker::AlgorithmValidationProfile>]

  An array of C<AlgorithmValidationProfile> objects, each of which
specifies a training job and batch transform job that Amazon SageMaker
runs to validate your algorithm.


=head2 B<REQUIRED> ValidationRole => Str

  The IAM roles that Amazon SageMaker uses to run the training jobs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

