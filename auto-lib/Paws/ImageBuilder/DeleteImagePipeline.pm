
package Paws::ImageBuilder::DeleteImagePipeline;
  use Moose;
  has ImagePipelineArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'imagePipelineArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteImagePipeline');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DeleteImagePipeline');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::DeleteImagePipelineResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::DeleteImagePipeline - Arguments for method DeleteImagePipeline on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteImagePipeline on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method DeleteImagePipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteImagePipeline.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $DeleteImagePipelineResponse = $imagebuilder->DeleteImagePipeline(
      ImagePipelineArn => 'MyImagePipelineArn',

    );

    # Results:
    my $ImagePipelineArn = $DeleteImagePipelineResponse->ImagePipelineArn;
    my $RequestId        = $DeleteImagePipelineResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::DeleteImagePipelineResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/DeleteImagePipeline>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImagePipelineArn => Str

The Amazon Resource Name (ARN) of the image pipeline to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteImagePipeline in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

