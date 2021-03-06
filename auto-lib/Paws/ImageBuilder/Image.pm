# Generated by default/object.tt
package Paws::ImageBuilder::Image;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has ContainerRecipe => (is => 'ro', isa => 'Paws::ImageBuilder::ContainerRecipe', request_name => 'containerRecipe', traits => ['NameInRequest']);
  has DateCreated => (is => 'ro', isa => 'Str', request_name => 'dateCreated', traits => ['NameInRequest']);
  has DistributionConfiguration => (is => 'ro', isa => 'Paws::ImageBuilder::DistributionConfiguration', request_name => 'distributionConfiguration', traits => ['NameInRequest']);
  has EnhancedImageMetadataEnabled => (is => 'ro', isa => 'Bool', request_name => 'enhancedImageMetadataEnabled', traits => ['NameInRequest']);
  has ImageRecipe => (is => 'ro', isa => 'Paws::ImageBuilder::ImageRecipe', request_name => 'imageRecipe', traits => ['NameInRequest']);
  has ImageTestsConfiguration => (is => 'ro', isa => 'Paws::ImageBuilder::ImageTestsConfiguration', request_name => 'imageTestsConfiguration', traits => ['NameInRequest']);
  has InfrastructureConfiguration => (is => 'ro', isa => 'Paws::ImageBuilder::InfrastructureConfiguration', request_name => 'infrastructureConfiguration', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has OsVersion => (is => 'ro', isa => 'Str', request_name => 'osVersion', traits => ['NameInRequest']);
  has OutputResources => (is => 'ro', isa => 'Paws::ImageBuilder::OutputResources', request_name => 'outputResources', traits => ['NameInRequest']);
  has Platform => (is => 'ro', isa => 'Str', request_name => 'platform', traits => ['NameInRequest']);
  has SourcePipelineArn => (is => 'ro', isa => 'Str', request_name => 'sourcePipelineArn', traits => ['NameInRequest']);
  has SourcePipelineName => (is => 'ro', isa => 'Str', request_name => 'sourcePipelineName', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Paws::ImageBuilder::ImageState', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::ImageBuilder::TagMap', request_name => 'tags', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::Image

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::Image object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::Image object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An image build version.

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the image.


=head2 ContainerRecipe => L<Paws::ImageBuilder::ContainerRecipe>

The container recipe used to create the container image type.


=head2 DateCreated => Str

The date on which this image was created.


=head2 DistributionConfiguration => L<Paws::ImageBuilder::DistributionConfiguration>

The distribution configuration used when creating this image.


=head2 EnhancedImageMetadataEnabled => Bool

Collects additional information about the image being created,
including the operating system (OS) version and package list. This
information is used to enhance the overall experience of using EC2
Image Builder. Enabled by default.


=head2 ImageRecipe => L<Paws::ImageBuilder::ImageRecipe>

The image recipe used when creating the image.


=head2 ImageTestsConfiguration => L<Paws::ImageBuilder::ImageTestsConfiguration>

The image tests configuration used when creating this image.


=head2 InfrastructureConfiguration => L<Paws::ImageBuilder::InfrastructureConfiguration>

The infrastructure used when creating this image.


=head2 Name => Str

The name of the image.


=head2 OsVersion => Str

The operating system version of the instance. For example, Amazon Linux
2, Ubuntu 18, or Microsoft Windows Server 2019.


=head2 OutputResources => L<Paws::ImageBuilder::OutputResources>

The output resources produced when creating this image.


=head2 Platform => Str

The platform of the image.


=head2 SourcePipelineArn => Str

The Amazon Resource Name (ARN) of the image pipeline that created this
image.


=head2 SourcePipelineName => Str

The name of the image pipeline that created this image.


=head2 State => L<Paws::ImageBuilder::ImageState>

The state of the image.


=head2 Tags => L<Paws::ImageBuilder::TagMap>

The tags of the image.


=head2 Type => Str

Specifies whether this is an AMI or container image.


=head2 Version => Str

The semantic version of the image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

