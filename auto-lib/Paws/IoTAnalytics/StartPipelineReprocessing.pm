
package Paws::IoTAnalytics::StartPipelineReprocessing;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has PipelineName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'pipelineName', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartPipelineReprocessing');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/pipelines/{pipelineName}/reprocessing');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTAnalytics::StartPipelineReprocessingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::StartPipelineReprocessing - Arguments for method StartPipelineReprocessing on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartPipelineReprocessing on the
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method StartPipelineReprocessing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartPipelineReprocessing.

=head1 SYNOPSIS

    my $iotanalytics = Paws->service('IoTAnalytics');
    my $StartPipelineReprocessingResponse =
      $iotanalytics->StartPipelineReprocessing(
      PipelineName => 'MyPipelineName',
      EndTime      => '1970-01-01T01:00:00',    # OPTIONAL
      StartTime    => '1970-01-01T01:00:00',    # OPTIONAL
      );

    # Results:
    my $ReprocessingId = $StartPipelineReprocessingResponse->ReprocessingId;

    # Returns a L<Paws::IoTAnalytics::StartPipelineReprocessingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/StartPipelineReprocessing>

=head1 ATTRIBUTES


=head2 EndTime => Str

The end time (exclusive) of raw message data that is reprocessed.



=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline on which to start reprocessing.



=head2 StartTime => Str

The start time (inclusive) of raw message data that is reprocessed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartPipelineReprocessing in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

