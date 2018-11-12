
package Paws::ElasticTranscoder::DeletePipeline;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePipeline');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2012-09-25/pipelines/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::DeletePipelineResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::DeletePipeline - Arguments for method DeletePipeline on L<Paws::ElasticTranscoder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePipeline on the
L<Amazon Elastic Transcoder|Paws::ElasticTranscoder> service. Use the attributes of this class
as arguments to method DeletePipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePipeline.

=head1 SYNOPSIS

    my $elastictranscoder = Paws->service('ElasticTranscoder');
    my $DeletePipelineResponse = $elastictranscoder->DeletePipeline(
      Id => 'MyId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder/DeletePipeline>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier of the pipeline that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePipeline in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

