
package Paws::ImageBuilder::GetImage;
  use Moose;
  has ImageBuildVersionArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'imageBuildVersionArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetImage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetImage');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::GetImageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::GetImage - Arguments for method GetImage on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetImage on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method GetImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetImage.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $GetImageResponse = $imagebuilder->GetImage(
      ImageBuildVersionArn => 'MyImageVersionArnOrBuildVersionArn',

    );

    # Results:
    my $Image     = $GetImageResponse->Image;
    my $RequestId = $GetImageResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::GetImageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/GetImage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImageBuildVersionArn => Str

The Amazon Resource Name (ARN) of the image that you want to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetImage in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

