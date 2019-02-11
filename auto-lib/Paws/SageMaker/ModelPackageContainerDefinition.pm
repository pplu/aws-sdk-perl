package Paws::SageMaker::ModelPackageContainerDefinition;
  use Moose;
  has ContainerHostname => (is => 'ro', isa => 'Str');
  has Image => (is => 'ro', isa => 'Str', required => 1);
  has ImageDigest => (is => 'ro', isa => 'Str');
  has ModelDataUrl => (is => 'ro', isa => 'Str');
  has ProductId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ModelPackageContainerDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ModelPackageContainerDefinition object:

  $service_obj->Method(Att1 => { ContainerHostname => $value, ..., ProductId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ModelPackageContainerDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerHostname

=head1 DESCRIPTION

Describes the Docker container for the model package.

=head1 ATTRIBUTES


=head2 ContainerHostname => Str

  The DNS host name for the Docker container.


=head2 B<REQUIRED> Image => Str

  The Amazon EC2 Container Registry (Amazon ECR) path where inference
code is stored.

If you are using your own custom algorithm instead of an algorithm
provided by Amazon SageMaker, the inference code must meet Amazon
SageMaker requirements. Amazon SageMaker supports both
C<registry/repository[:tag]> and C<registry/repository[@digest]> image
path formats. For more information, see Using Your Own Algorithms with
Amazon SageMaker
(http://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html).


=head2 ImageDigest => Str

  An MD5 hash of the training algorithm that identifies the Docker image
used for training.


=head2 ModelDataUrl => Str

  The Amazon S3 path where the model artifacts, which result from model
training, are stored. This path must point to a single C<gzip>
compressed tar archive (C<.tar.gz> suffix).


=head2 ProductId => Str

  The AWS Marketplace product ID of the model package.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

