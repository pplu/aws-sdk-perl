package Paws::SageMaker::ModelPackageValidationProfile;
  use Moose;
  has ProfileName => (is => 'ro', isa => 'Str', required => 1);
  has TransformJobDefinition => (is => 'ro', isa => 'Paws::SageMaker::TransformJobDefinition', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ModelPackageValidationProfile

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ModelPackageValidationProfile object:

  $service_obj->Method(Att1 => { ProfileName => $value, ..., TransformJobDefinition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ModelPackageValidationProfile object:

  $result = $service_obj->Method(...);
  $result->Att1->ProfileName

=head1 DESCRIPTION

Contains data, such as the inputs and targeted instance types that are
used in the process of validating the model package.

The data provided in the validation profile is made available to your
buyers on AWS Marketplace.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfileName => Str

  The name of the profile for the model package.


=head2 B<REQUIRED> TransformJobDefinition => L<Paws::SageMaker::TransformJobDefinition>

  The C<TransformJobDefinition> object that describes the transform job
used for the validation of the model package.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

