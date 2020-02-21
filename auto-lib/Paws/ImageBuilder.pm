package Paws::ImageBuilder;
  use Moose;
  sub service { 'imagebuilder' }
  sub signing_name { 'imagebuilder' }
  sub version { '2019-12-02' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelImageCreation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::CancelImageCreation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::CreateComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDistributionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::CreateDistributionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::CreateImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateImagePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::CreateImagePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateImageRecipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::CreateImageRecipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInfrastructureConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::CreateInfrastructureConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::DeleteComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDistributionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::DeleteDistributionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::DeleteImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImagePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::DeleteImagePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImageRecipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::DeleteImageRecipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInfrastructureConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::DeleteInfrastructureConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComponentPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetComponentPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDistributionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetDistributionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImagePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetImagePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImagePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetImagePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImageRecipe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetImageRecipe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImageRecipePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetImageRecipePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInfrastructureConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::GetInfrastructureConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ImportComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComponentBuildVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListComponentBuildVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComponents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListComponents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDistributionConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListDistributionConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImageBuildVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListImageBuildVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImagePipelineImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListImagePipelineImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImagePipelines {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListImagePipelines', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImageRecipes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListImageRecipes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInfrastructureConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListInfrastructureConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutComponentPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::PutComponentPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutImagePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::PutImagePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutImageRecipePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::PutImageRecipePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartImagePipelineExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::StartImagePipelineExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDistributionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::UpdateDistributionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateImagePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::UpdateImagePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInfrastructureConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ImageBuilder::UpdateInfrastructureConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CancelImageCreation CreateComponent CreateDistributionConfiguration CreateImage CreateImagePipeline CreateImageRecipe CreateInfrastructureConfiguration DeleteComponent DeleteDistributionConfiguration DeleteImage DeleteImagePipeline DeleteImageRecipe DeleteInfrastructureConfiguration GetComponent GetComponentPolicy GetDistributionConfiguration GetImage GetImagePipeline GetImagePolicy GetImageRecipe GetImageRecipePolicy GetInfrastructureConfiguration ImportComponent ListComponentBuildVersions ListComponents ListDistributionConfigurations ListImageBuildVersions ListImagePipelineImages ListImagePipelines ListImageRecipes ListImages ListInfrastructureConfigurations ListTagsForResource PutComponentPolicy PutImagePolicy PutImageRecipePolicy StartImagePipelineExecution TagResource UntagResource UpdateDistributionConfiguration UpdateImagePipeline UpdateInfrastructureConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder - Perl Interface to AWS EC2 Image Builder

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ImageBuilder');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

EC2 Image Builder is a fully managed AWS service that makes it easier
to automate the creation, management, and deployment of customized,
secure, and up-to-date E<ldquo>goldenE<rdquo> server images that are
pre-installed and pre-configured with software and settings to meet
specific IT standards.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02>


=head1 METHODS

=head2 CancelImageCreation

=over

=item ClientToken => Str

=item ImageBuildVersionArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::CancelImageCreation>

Returns: a L<Paws::ImageBuilder::CancelImageCreationResponse> instance

CancelImageCreation cancels the creation of Image. This operation can
only be used on images in a non-terminal state.


=head2 CreateComponent

=over

=item ClientToken => Str

=item Name => Str

=item Platform => Str

=item SemanticVersion => Str

=item [ChangeDescription => Str]

=item [Data => Str]

=item [Description => Str]

=item [KmsKeyId => Str]

=item [Tags => L<Paws::ImageBuilder::TagMap>]

=item [Uri => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::CreateComponent>

Returns: a L<Paws::ImageBuilder::CreateComponentResponse> instance

Creates a new component that can be used to build, validate, test, and
assess your image.


=head2 CreateDistributionConfiguration

=over

=item ClientToken => Str

=item Distributions => ArrayRef[L<Paws::ImageBuilder::Distribution>]

=item Name => Str

=item [Description => Str]

=item [Tags => L<Paws::ImageBuilder::TagMap>]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::CreateDistributionConfiguration>

Returns: a L<Paws::ImageBuilder::CreateDistributionConfigurationResponse> instance

Creates a new distribution configuration. Distribution configurations
define and configure the outputs of your pipeline.


=head2 CreateImage

=over

=item ClientToken => Str

=item ImageRecipeArn => Str

=item InfrastructureConfigurationArn => Str

=item [DistributionConfigurationArn => Str]

=item [ImageTestsConfiguration => L<Paws::ImageBuilder::ImageTestsConfiguration>]

=item [Tags => L<Paws::ImageBuilder::TagMap>]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::CreateImage>

Returns: a L<Paws::ImageBuilder::CreateImageResponse> instance

Creates a new image. This request will create a new image along with
all of the configured output resources defined in the distribution
configuration.


=head2 CreateImagePipeline

=over

=item ClientToken => Str

=item ImageRecipeArn => Str

=item InfrastructureConfigurationArn => Str

=item Name => Str

=item [Description => Str]

=item [DistributionConfigurationArn => Str]

=item [ImageTestsConfiguration => L<Paws::ImageBuilder::ImageTestsConfiguration>]

=item [Schedule => L<Paws::ImageBuilder::Schedule>]

=item [Status => Str]

=item [Tags => L<Paws::ImageBuilder::TagMap>]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::CreateImagePipeline>

Returns: a L<Paws::ImageBuilder::CreateImagePipelineResponse> instance

Creates a new image pipeline. Image pipelines enable you to automate
the creation and distribution of images.


=head2 CreateImageRecipe

=over

=item ClientToken => Str

=item Components => ArrayRef[L<Paws::ImageBuilder::ComponentConfiguration>]

=item Name => Str

=item ParentImage => Str

=item SemanticVersion => Str

=item [BlockDeviceMappings => ArrayRef[L<Paws::ImageBuilder::InstanceBlockDeviceMapping>]]

=item [Description => Str]

=item [Tags => L<Paws::ImageBuilder::TagMap>]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::CreateImageRecipe>

Returns: a L<Paws::ImageBuilder::CreateImageRecipeResponse> instance

Creates a new image recipe. Image recipes define how images are
configured, tested, and assessed.


=head2 CreateInfrastructureConfiguration

=over

=item ClientToken => Str

=item InstanceProfileName => Str

=item Name => Str

=item [Description => Str]

=item [InstanceTypes => ArrayRef[Str|Undef]]

=item [KeyPair => Str]

=item [Logging => L<Paws::ImageBuilder::Logging>]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SnsTopicArn => Str]

=item [SubnetId => Str]

=item [Tags => L<Paws::ImageBuilder::TagMap>]

=item [TerminateInstanceOnFailure => Bool]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::CreateInfrastructureConfiguration>

Returns: a L<Paws::ImageBuilder::CreateInfrastructureConfigurationResponse> instance

Creates a new infrastructure configuration. An infrastructure
configuration defines the environment in which your image will be built
and tested.


=head2 DeleteComponent

=over

=item ComponentBuildVersionArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::DeleteComponent>

Returns: a L<Paws::ImageBuilder::DeleteComponentResponse> instance

Deletes a component build version.


=head2 DeleteDistributionConfiguration

=over

=item DistributionConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::DeleteDistributionConfiguration>

Returns: a L<Paws::ImageBuilder::DeleteDistributionConfigurationResponse> instance

Deletes a distribution configuration.


=head2 DeleteImage

=over

=item ImageBuildVersionArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::DeleteImage>

Returns: a L<Paws::ImageBuilder::DeleteImageResponse> instance

Deletes an image.


=head2 DeleteImagePipeline

=over

=item ImagePipelineArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::DeleteImagePipeline>

Returns: a L<Paws::ImageBuilder::DeleteImagePipelineResponse> instance

Deletes an image pipeline.


=head2 DeleteImageRecipe

=over

=item ImageRecipeArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::DeleteImageRecipe>

Returns: a L<Paws::ImageBuilder::DeleteImageRecipeResponse> instance

Deletes an image recipe.


=head2 DeleteInfrastructureConfiguration

=over

=item InfrastructureConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::DeleteInfrastructureConfiguration>

Returns: a L<Paws::ImageBuilder::DeleteInfrastructureConfigurationResponse> instance

Deletes an infrastructure configuration.


=head2 GetComponent

=over

=item ComponentBuildVersionArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetComponent>

Returns: a L<Paws::ImageBuilder::GetComponentResponse> instance

Gets a component object.


=head2 GetComponentPolicy

=over

=item ComponentArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetComponentPolicy>

Returns: a L<Paws::ImageBuilder::GetComponentPolicyResponse> instance

Gets a component policy.


=head2 GetDistributionConfiguration

=over

=item DistributionConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetDistributionConfiguration>

Returns: a L<Paws::ImageBuilder::GetDistributionConfigurationResponse> instance

Gets a distribution configuration.


=head2 GetImage

=over

=item ImageBuildVersionArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetImage>

Returns: a L<Paws::ImageBuilder::GetImageResponse> instance

Gets an image.


=head2 GetImagePipeline

=over

=item ImagePipelineArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetImagePipeline>

Returns: a L<Paws::ImageBuilder::GetImagePipelineResponse> instance

Gets an image pipeline.


=head2 GetImagePolicy

=over

=item ImageArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetImagePolicy>

Returns: a L<Paws::ImageBuilder::GetImagePolicyResponse> instance

Gets an image policy.


=head2 GetImageRecipe

=over

=item ImageRecipeArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetImageRecipe>

Returns: a L<Paws::ImageBuilder::GetImageRecipeResponse> instance

Gets an image recipe.


=head2 GetImageRecipePolicy

=over

=item ImageRecipeArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetImageRecipePolicy>

Returns: a L<Paws::ImageBuilder::GetImageRecipePolicyResponse> instance

Gets an image recipe policy.


=head2 GetInfrastructureConfiguration

=over

=item InfrastructureConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::GetInfrastructureConfiguration>

Returns: a L<Paws::ImageBuilder::GetInfrastructureConfigurationResponse> instance

Gets an infrastructure configuration.


=head2 ImportComponent

=over

=item ClientToken => Str

=item Format => Str

=item Name => Str

=item Platform => Str

=item SemanticVersion => Str

=item Type => Str

=item [ChangeDescription => Str]

=item [Data => Str]

=item [Description => Str]

=item [KmsKeyId => Str]

=item [Tags => L<Paws::ImageBuilder::TagMap>]

=item [Uri => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ImportComponent>

Returns: a L<Paws::ImageBuilder::ImportComponentResponse> instance

Imports a component and transforms its data into a component document.


=head2 ListComponentBuildVersions

=over

=item ComponentVersionArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListComponentBuildVersions>

Returns: a L<Paws::ImageBuilder::ListComponentBuildVersionsResponse> instance

Returns the list of component build versions for the specified semantic
version.


=head2 ListComponents

=over

=item [Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Owner => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListComponents>

Returns: a L<Paws::ImageBuilder::ListComponentsResponse> instance

Returns the list of component build versions for the specified semantic
version.


=head2 ListDistributionConfigurations

=over

=item [Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListDistributionConfigurations>

Returns: a L<Paws::ImageBuilder::ListDistributionConfigurationsResponse> instance

Returns a list of distribution configurations.


=head2 ListImageBuildVersions

=over

=item ImageVersionArn => Str

=item [Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListImageBuildVersions>

Returns: a L<Paws::ImageBuilder::ListImageBuildVersionsResponse> instance

Returns a list of distribution configurations.


=head2 ListImagePipelineImages

=over

=item ImagePipelineArn => Str

=item [Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListImagePipelineImages>

Returns: a L<Paws::ImageBuilder::ListImagePipelineImagesResponse> instance

Returns a list of images created by the specified pipeline.


=head2 ListImagePipelines

=over

=item [Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListImagePipelines>

Returns: a L<Paws::ImageBuilder::ListImagePipelinesResponse> instance

Returns a list of image pipelines.


=head2 ListImageRecipes

=over

=item [Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Owner => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListImageRecipes>

Returns: a L<Paws::ImageBuilder::ListImageRecipesResponse> instance

Returns a list of image recipes.


=head2 ListImages

=over

=item [Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Owner => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListImages>

Returns: a L<Paws::ImageBuilder::ListImagesResponse> instance

Returns the list of image build versions for the specified semantic
version.


=head2 ListInfrastructureConfigurations

=over

=item [Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListInfrastructureConfigurations>

Returns: a L<Paws::ImageBuilder::ListInfrastructureConfigurationsResponse> instance

Returns a list of infrastructure configurations.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::ListTagsForResource>

Returns: a L<Paws::ImageBuilder::ListTagsForResourceResponse> instance

Returns the list of tags for the specified resource.


=head2 PutComponentPolicy

=over

=item ComponentArn => Str

=item Policy => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::PutComponentPolicy>

Returns: a L<Paws::ImageBuilder::PutComponentPolicyResponse> instance

Applies a policy to a component.


=head2 PutImagePolicy

=over

=item ImageArn => Str

=item Policy => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::PutImagePolicy>

Returns: a L<Paws::ImageBuilder::PutImagePolicyResponse> instance

Applies a policy to an image.


=head2 PutImageRecipePolicy

=over

=item ImageRecipeArn => Str

=item Policy => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::PutImageRecipePolicy>

Returns: a L<Paws::ImageBuilder::PutImageRecipePolicyResponse> instance

Applies a policy to an image recipe.


=head2 StartImagePipelineExecution

=over

=item ClientToken => Str

=item ImagePipelineArn => Str


=back

Each argument is described in detail in: L<Paws::ImageBuilder::StartImagePipelineExecution>

Returns: a L<Paws::ImageBuilder::StartImagePipelineExecutionResponse> instance

Manually triggers a pipeline to create an image.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::ImageBuilder::TagMap>


=back

Each argument is described in detail in: L<Paws::ImageBuilder::TagResource>

Returns: a L<Paws::ImageBuilder::TagResourceResponse> instance

Adds a tag to a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::UntagResource>

Returns: a L<Paws::ImageBuilder::UntagResourceResponse> instance

Removes a tag from a resource.


=head2 UpdateDistributionConfiguration

=over

=item ClientToken => Str

=item DistributionConfigurationArn => Str

=item Distributions => ArrayRef[L<Paws::ImageBuilder::Distribution>]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::UpdateDistributionConfiguration>

Returns: a L<Paws::ImageBuilder::UpdateDistributionConfigurationResponse> instance

Updates a new distribution configuration. Distribution configurations
define and configure the outputs of your pipeline.


=head2 UpdateImagePipeline

=over

=item ClientToken => Str

=item ImagePipelineArn => Str

=item ImageRecipeArn => Str

=item InfrastructureConfigurationArn => Str

=item [Description => Str]

=item [DistributionConfigurationArn => Str]

=item [ImageTestsConfiguration => L<Paws::ImageBuilder::ImageTestsConfiguration>]

=item [Schedule => L<Paws::ImageBuilder::Schedule>]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::UpdateImagePipeline>

Returns: a L<Paws::ImageBuilder::UpdateImagePipelineResponse> instance

Updates a new image pipeline. Image pipelines enable you to automate
the creation and distribution of images.


=head2 UpdateInfrastructureConfiguration

=over

=item ClientToken => Str

=item InfrastructureConfigurationArn => Str

=item InstanceProfileName => Str

=item [Description => Str]

=item [InstanceTypes => ArrayRef[Str|Undef]]

=item [KeyPair => Str]

=item [Logging => L<Paws::ImageBuilder::Logging>]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SnsTopicArn => Str]

=item [SubnetId => Str]

=item [TerminateInstanceOnFailure => Bool]


=back

Each argument is described in detail in: L<Paws::ImageBuilder::UpdateInfrastructureConfiguration>

Returns: a L<Paws::ImageBuilder::UpdateInfrastructureConfigurationResponse> instance

Updates a new infrastructure configuration. An infrastructure
configuration defines the environment in which your image will be built
and tested.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

