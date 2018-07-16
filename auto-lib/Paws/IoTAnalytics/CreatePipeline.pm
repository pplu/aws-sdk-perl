
package Paws::IoTAnalytics::CreatePipeline;
  use Moose;
  has PipelineActivities => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::PipelineActivity]', traits => ['NameInRequest'], request_name => 'pipelineActivities', required => 1);
  has PipelineName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineName', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePipeline');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/pipelines');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTAnalytics::CreatePipelineResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::CreatePipeline - Arguments for method CreatePipeline on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePipeline on the
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method CreatePipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePipeline.

=head1 SYNOPSIS

    my $iotanalytics = Paws->service('IoTAnalytics');
    my $CreatePipelineResponse = $iotanalytics->CreatePipeline(
      PipelineActivities => [
        {
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
        ...
      ],
      PipelineName => 'MyPipelineName',
      Tags         => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $PipelineArn  = $CreatePipelineResponse->PipelineArn;
    my $PipelineName = $CreatePipelineResponse->PipelineName;

    # Returns a L<Paws::IoTAnalytics::CreatePipelineResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/CreatePipeline>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineActivities => ArrayRef[L<Paws::IoTAnalytics::PipelineActivity>]

A list of pipeline activities.

The list can be 1-25 B<PipelineActivity> objects. Activities perform
transformations on your messages, such as removing, renaming, or adding
message attributes; filtering messages based on attribute values;
invoking your Lambda functions on messages for advanced processing; or
performing mathematical transformations to normalize device data.



=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline.



=head2 Tags => ArrayRef[L<Paws::IoTAnalytics::Tag>]

Metadata which can be used to manage the pipeline.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePipeline in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

