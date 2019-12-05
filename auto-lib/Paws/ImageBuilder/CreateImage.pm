
package Paws::ImageBuilder::CreateImage;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has DistributionConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'distributionConfigurationArn');
  has ImageRecipeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageRecipeArn', required => 1);
  has ImageTestsConfiguration => (is => 'ro', isa => 'Paws::ImageBuilder::ImageTestsConfiguration', traits => ['NameInRequest'], request_name => 'imageTestsConfiguration');
  has InfrastructureConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'infrastructureConfigurationArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ImageBuilder::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateImage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateImage');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::CreateImageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::CreateImage - Arguments for method CreateImage on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateImage on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method CreateImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateImage.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $CreateImageResponse = $imagebuilder->CreateImage(
      ClientToken                    => 'MyClientToken',
      ImageRecipeArn                 => 'MyImageRecipeArn',
      InfrastructureConfigurationArn => 'MyInfrastructureConfigurationArn',
      DistributionConfigurationArn =>
        'MyDistributionConfigurationArn',    # OPTIONAL
      ImageTestsConfiguration => {
        ImageTestsEnabled => 1,              # OPTIONAL
        TimeoutMinutes    => 1,              # min: 60, max: 1440; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ClientToken          = $CreateImageResponse->ClientToken;
    my $ImageBuildVersionArn = $CreateImageResponse->ImageBuildVersionArn;
    my $RequestId            = $CreateImageResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::CreateImageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/CreateImage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

The idempotency token used to make this request idempotent.



=head2 DistributionConfigurationArn => Str

The Amazon Resource Name (ARN) of the distribution configuration that
defines and configures the outputs of your pipeline.



=head2 B<REQUIRED> ImageRecipeArn => Str

The Amazon Resource Name (ARN) of the image recipe that defines how
images are configured, tested and assessed.



=head2 ImageTestsConfiguration => L<Paws::ImageBuilder::ImageTestsConfiguration>

The image tests configuration of the image.



=head2 B<REQUIRED> InfrastructureConfigurationArn => Str

The Amazon Resource Name (ARN) of the infrastructure configuration that
defines the environment in which your image will be built and tested.



=head2 Tags => L<Paws::ImageBuilder::TagMap>

The tags of the image.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateImage in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

