
package Paws::ElasticTranscoder::UpdatePipelineStatus;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePipelineStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2012-09-25/pipelines/{Id}/status');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::UpdatePipelineStatusResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::UpdatePipelineStatus - Arguments for method UpdatePipelineStatus on L<Paws::ElasticTranscoder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePipelineStatus on the
L<Amazon Elastic Transcoder|Paws::ElasticTranscoder> service. Use the attributes of this class
as arguments to method UpdatePipelineStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePipelineStatus.

=head1 SYNOPSIS

    my $elastictranscoder = Paws->service('ElasticTranscoder');
    my $UpdatePipelineStatusResponse = $elastictranscoder->UpdatePipelineStatus(
      Id     => 'MyId',
      Status => 'MyPipelineStatus',

    );

    # Results:
    my $Pipeline = $UpdatePipelineStatusResponse->Pipeline;

    # Returns a L<Paws::ElasticTranscoder::UpdatePipelineStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elastictranscoder/UpdatePipelineStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier of the pipeline to update.



=head2 B<REQUIRED> Status => Str

The desired status of the pipeline:

=over

=item *

C<Active>: The pipeline is processing jobs.

=item *

C<Paused>: The pipeline is not currently processing jobs.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePipelineStatus in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

