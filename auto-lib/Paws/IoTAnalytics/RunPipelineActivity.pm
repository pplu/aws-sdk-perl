
package Paws::IoTAnalytics::RunPipelineActivity;
  use Moose;
  has Payloads => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'payloads', required => 1);
  has PipelineActivity => (is => 'ro', isa => 'Paws::IoTAnalytics::PipelineActivity', traits => ['NameInRequest'], request_name => 'pipelineActivity', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RunPipelineActivity');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/pipelineactivities/run');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTAnalytics::RunPipelineActivityResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::RunPipelineActivity - Arguments for method RunPipelineActivity on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RunPipelineActivity on the
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method RunPipelineActivity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RunPipelineActivity.

=head1 SYNOPSIS

    my $iotanalytics = Paws->service('IoTAnalytics');
    my $RunPipelineActivityResponse = $iotanalytics->RunPipelineActivity(
      Payloads         => [ 'BlobMessagePayload', ... ],
      PipelineActivity => {
        AddAttributes => {
          Attributes => {
            'MyAttributeName' => 'MyAttributeName'
            ,    # key: min: 1, max: 256, value: min: 1, max: 256
          },    # min: 1, max: 50
          Name => 'MyActivityName',    # min: 1, max: 128
          Next => 'MyActivityName',    # min: 1, max: 128
        },    # OPTIONAL
        Channel => {
          ChannelName => 'MyChannelName',     # min: 1, max: 128
          Name        => 'MyActivityName',    # min: 1, max: 128
          Next        => 'MyActivityName',    # min: 1, max: 128
        },    # OPTIONAL
        Datastore => {
          DatastoreName => 'MyDatastoreName',    # min: 1, max: 128
          Name          => 'MyActivityName',     # min: 1, max: 128

        },    # OPTIONAL
        DeviceRegistryEnrich => {
          Attribute => 'MyAttributeName',    # min: 1, max: 256
          Name      => 'MyActivityName',     # min: 1, max: 128
          RoleArn   => 'MyRoleArn',          # min: 20, max: 2048
          ThingName => 'MyAttributeName',    # min: 1, max: 256
          Next      => 'MyActivityName',     # min: 1, max: 128
        },    # OPTIONAL
        DeviceShadowEnrich => {
          Attribute => 'MyAttributeName',    # min: 1, max: 256
          Name      => 'MyActivityName',     # min: 1, max: 128
          RoleArn   => 'MyRoleArn',          # min: 20, max: 2048
          ThingName => 'MyAttributeName',    # min: 1, max: 256
          Next      => 'MyActivityName',     # min: 1, max: 128
        },    # OPTIONAL
        Filter => {
          Filter => 'MyFilterExpression',    # min: 1, max: 256
          Name   => 'MyActivityName',        # min: 1, max: 128
          Next   => 'MyActivityName',        # min: 1, max: 128
        },    # OPTIONAL
        Lambda => {
          BatchSize  => 1,                   # min: 1, max: 1000
          LambdaName => 'MyLambdaName',      # min: 1, max: 64
          Name       => 'MyActivityName',    # min: 1, max: 128
          Next       => 'MyActivityName',    # min: 1, max: 128
        },    # OPTIONAL
        Math => {
          Attribute => 'MyAttributeName',     # min: 1, max: 256
          Math      => 'MyMathExpression',    # min: 1, max: 256
          Name      => 'MyActivityName',      # min: 1, max: 128
          Next      => 'MyActivityName',      # min: 1, max: 128
        },    # OPTIONAL
        RemoveAttributes => {
          Attributes => [
            'MyAttributeName', ...    # min: 1, max: 256
          ],                          # min: 1, max: 50
          Name => 'MyActivityName',   # min: 1, max: 128
          Next => 'MyActivityName',   # min: 1, max: 128
        },    # OPTIONAL
        SelectAttributes => {
          Attributes => [
            'MyAttributeName', ...    # min: 1, max: 256
          ],                          # min: 1, max: 50
          Name => 'MyActivityName',   # min: 1, max: 128
          Next => 'MyActivityName',   # min: 1, max: 128
        },    # OPTIONAL
      },

    );

    # Results:
    my $LogResult = $RunPipelineActivityResponse->LogResult;
    my $Payloads  = $RunPipelineActivityResponse->Payloads;

    # Returns a L<Paws::IoTAnalytics::RunPipelineActivityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/RunPipelineActivity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Payloads => ArrayRef[Str|Undef]

The sample message payloads on which the pipeline activity is run.



=head2 B<REQUIRED> PipelineActivity => L<Paws::IoTAnalytics::PipelineActivity>

The pipeline activity that is run. This must not be a 'channel'
activity or a 'datastore' activity because these activities are used in
a pipeline only to load the original message and to store the
(possibly) transformed message. If a 'lambda' activity is specified,
only short-running Lambda functions (those with a timeout of less than
30 seconds or less) can be used.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RunPipelineActivity in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

