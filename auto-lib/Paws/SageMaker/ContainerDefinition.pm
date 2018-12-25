package Paws::SageMaker::ContainerDefinition;
  use Moose;
  has ContainerHostname => (is => 'ro', isa => 'Str');
  has Environment => (is => 'ro', isa => 'Paws::SageMaker::EnvironmentMap');
  has Image => (is => 'ro', isa => 'Str');
  has ModelDataUrl => (is => 'ro', isa => 'Str');
  has ModelPackageName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ContainerDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ContainerDefinition object:

  $service_obj->Method(Att1 => { ContainerHostname => $value, ..., ModelPackageName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ContainerDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerHostname

=head1 DESCRIPTION

Describes the container, as part of model definition.

=head1 ATTRIBUTES


=head2 ContainerHostname => Str

  The DNS host name for the container after Amazon SageMaker deploys it.


=head2 Environment => L<Paws::SageMaker::EnvironmentMap>

  The environment variables to set in the Docker container. Each key and
value in the C<Environment> string to string map can have length of up
to 1024. We support up to 16 entries in the map.


=head2 Image => Str

  The Amazon EC2 Container Registry (Amazon ECR) path where inference
code is stored. If you are using your own custom algorithm instead of
an algorithm provided by Amazon SageMaker, the inference code must meet
Amazon SageMaker requirements. Amazon SageMaker supports both
C<registry/repository[:tag]> and C<registry/repository[@digest]> image
path formats. For more information, see Using Your Own Algorithms with
Amazon SageMaker
(http://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html)


=head2 ModelDataUrl => Str

  The S3 path where the model artifacts, which result from model
training, are stored. This path must point to a single gzip compressed
tar archive (.tar.gz suffix).

If you provide a value for this parameter, Amazon SageMaker uses AWS
Security Token Service to download model artifacts from the S3 path you
provide. AWS STS is activated in your IAM user account by default. If
you previously deactivated AWS STS for a region, you need to reactivate
AWS STS for that region. For more information, see Activating and
Deactivating AWS STS in an AWS Region
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
in the I<AWS Identity and Access Management User Guide>.


=head2 ModelPackageName => Str

  The name of the model package to use to create the model.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

