
package Paws::ElasticTranscoder::ReadPipeline;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReadPipeline');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2012-09-25/pipelines/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::ReadPipelineResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::ReadPipeline - Arguments for method ReadPipeline on L<Paws::ElasticTranscoder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReadPipeline on the
L<Amazon Elastic Transcoder|Paws::ElasticTranscoder> service. Use the attributes of this class
as arguments to method ReadPipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReadPipeline.

=head1 SYNOPSIS

    my $elastictranscoder = Paws->service('ElasticTranscoder');
    my $ReadPipelineResponse = $elastictranscoder->ReadPipeline(
      Id => 'MyId',

    );

    # Results:
    my $Pipeline = $ReadPipelineResponse->Pipeline;
    my $Warnings = $ReadPipelineResponse->Warnings;

    # Returns a L<Paws::ElasticTranscoder::ReadPipelineResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder/ReadPipeline>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier of the pipeline to read.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReadPipeline in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

