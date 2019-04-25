
package Paws::IoTAnalytics::CancelPipelineReprocessing;
  use Moose;
  has PipelineName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'pipelineName', required => 1);
  has ReprocessingId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'reprocessingId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelPipelineReprocessing');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/pipelines/{pipelineName}/reprocessing/{reprocessingId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTAnalytics::CancelPipelineReprocessingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::CancelPipelineReprocessing - Arguments for method CancelPipelineReprocessing on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelPipelineReprocessing on the
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method CancelPipelineReprocessing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelPipelineReprocessing.

=head1 SYNOPSIS

    my $iotanalytics = Paws->service('IoTAnalytics');
    my $CancelPipelineReprocessingResponse =
      $iotanalytics->CancelPipelineReprocessing(
      PipelineName   => 'MyPipelineName',
      ReprocessingId => 'MyReprocessingId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/CancelPipelineReprocessing>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineName => Str

The name of pipeline for which data reprocessing is canceled.



=head2 B<REQUIRED> ReprocessingId => Str

The ID of the reprocessing task (returned by
"StartPipelineReprocessing").




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelPipelineReprocessing in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

