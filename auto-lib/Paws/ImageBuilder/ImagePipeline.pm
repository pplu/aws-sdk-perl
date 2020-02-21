package Paws::ImageBuilder::ImagePipeline;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has DateCreated => (is => 'ro', isa => 'Str', request_name => 'dateCreated', traits => ['NameInRequest']);
  has DateLastRun => (is => 'ro', isa => 'Str', request_name => 'dateLastRun', traits => ['NameInRequest']);
  has DateNextRun => (is => 'ro', isa => 'Str', request_name => 'dateNextRun', traits => ['NameInRequest']);
  has DateUpdated => (is => 'ro', isa => 'Str', request_name => 'dateUpdated', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DistributionConfigurationArn => (is => 'ro', isa => 'Str', request_name => 'distributionConfigurationArn', traits => ['NameInRequest']);
  has ImageRecipeArn => (is => 'ro', isa => 'Str', request_name => 'imageRecipeArn', traits => ['NameInRequest']);
  has ImageTestsConfiguration => (is => 'ro', isa => 'Paws::ImageBuilder::ImageTestsConfiguration', request_name => 'imageTestsConfiguration', traits => ['NameInRequest']);
  has InfrastructureConfigurationArn => (is => 'ro', isa => 'Str', request_name => 'infrastructureConfigurationArn', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Platform => (is => 'ro', isa => 'Str', request_name => 'platform', traits => ['NameInRequest']);
  has Schedule => (is => 'ro', isa => 'Paws::ImageBuilder::Schedule', request_name => 'schedule', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::ImageBuilder::TagMap', request_name => 'tags', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ImagePipeline

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::ImagePipeline object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::ImagePipeline object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Details of an image pipeline.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the image pipeline.


=head2 DateCreated => Str

  The date on which this image pipeline was created.


=head2 DateLastRun => Str

  The date on which this image pipeline was last run.


=head2 DateNextRun => Str

  The date on which this image pipeline will next be run.


=head2 DateUpdated => Str

  The date on which this image pipeline was last updated.


=head2 Description => Str

  The description of the image pipeline.


=head2 DistributionConfigurationArn => Str

  The Amazon Resource Name (ARN) of the distribution configuration
associated with this image pipeline.


=head2 ImageRecipeArn => Str

  The Amazon Resource Name (ARN) of the image recipe associated with this
image pipeline.


=head2 ImageTestsConfiguration => L<Paws::ImageBuilder::ImageTestsConfiguration>

  The image tests configuration of the image pipeline.


=head2 InfrastructureConfigurationArn => Str

  The Amazon Resource Name (ARN) of the infrastructure configuration
associated with this image pipeline.


=head2 Name => Str

  The name of the image pipeline.


=head2 Platform => Str

  The platform of the image pipeline.


=head2 Schedule => L<Paws::ImageBuilder::Schedule>

  The schedule of the image pipeline.


=head2 Status => Str

  The status of the image pipeline.


=head2 Tags => L<Paws::ImageBuilder::TagMap>

  The tags of this image pipeline.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

