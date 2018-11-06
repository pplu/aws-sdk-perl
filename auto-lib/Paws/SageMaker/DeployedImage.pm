package Paws::SageMaker::DeployedImage;
  use Moose;
  has ResolutionTime => (is => 'ro', isa => 'Str');
  has ResolvedImage => (is => 'ro', isa => 'Str');
  has SpecifiedImage => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeployedImage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::DeployedImage object:

  $service_obj->Method(Att1 => { ResolutionTime => $value, ..., SpecifiedImage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::DeployedImage object:

  $result = $service_obj->Method(...);
  $result->Att1->ResolutionTime

=head1 DESCRIPTION

Gets the Amazon EC2 Container Registry path of the docker image of the
model that is hosted in this ProductionVariant.

If you used the C<registry/repository[:tag]> form to specify the image
path of the primary container when you created the model hosted in this
C<ProductionVariant>, the path resolves to a path of the form
C<registry/repository[@digest]>. A digest is a hash value that
identifies a specific version of an image. For information about Amazon
ECR paths, see Pulling an Image
(http://docs.aws.amazon.com//AmazonECR/latest/userguide/docker-pull-ecr-image.html)
in the I<Amazon ECR User Guide>.

=head1 ATTRIBUTES


=head2 ResolutionTime => Str

  The date and time when the image path for the model resolved to the
C<ResolvedImage>


=head2 ResolvedImage => Str

  The specific digest path of the image hosted in this
C<ProductionVariant>.


=head2 SpecifiedImage => Str

  The image path you specified when you created the model.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

