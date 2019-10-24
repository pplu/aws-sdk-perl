# Generated from json/callargs_class.tt

package Paws::IoTThingsGraph::CreateSystemInstance;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_Tag IoTThingsGraph_DefinitionDocument IoTThingsGraph_MetricsConfiguration/;
  has Definition => (is => 'ro', isa => IoTThingsGraph_DefinitionDocument, required => 1, predicate => 1);
  has FlowActionsRoleArn => (is => 'ro', isa => Str, predicate => 1);
  has GreengrassGroupName => (is => 'ro', isa => Str, predicate => 1);
  has MetricsConfiguration => (is => 'ro', isa => IoTThingsGraph_MetricsConfiguration, predicate => 1);
  has S3BucketName => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[IoTThingsGraph_Tag], predicate => 1);
  has Target => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateSystemInstance');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTThingsGraph::CreateSystemInstanceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MetricsConfiguration' => {
                                           'class' => 'Paws::IoTThingsGraph::MetricsConfiguration',
                                           'type' => 'IoTThingsGraph_MetricsConfiguration'
                                         },
               'Target' => {
                             'type' => 'Str'
                           },
               'Definition' => {
                                 'class' => 'Paws::IoTThingsGraph::DefinitionDocument',
                                 'type' => 'IoTThingsGraph_DefinitionDocument'
                               },
               'S3BucketName' => {
                                   'type' => 'Str'
                                 },
               'Tags' => {
                           'class' => 'Paws::IoTThingsGraph::Tag',
                           'type' => 'ArrayRef[IoTThingsGraph_Tag]'
                         },
               'FlowActionsRoleArn' => {
                                         'type' => 'Str'
                                       },
               'GreengrassGroupName' => {
                                          'type' => 'Str'
                                        }
             },
  'NameInRequest' => {
                       'MetricsConfiguration' => 'metricsConfiguration',
                       'Target' => 'target',
                       'Definition' => 'definition',
                       'S3BucketName' => 's3BucketName',
                       'Tags' => 'tags',
                       'FlowActionsRoleArn' => 'flowActionsRoleArn',
                       'GreengrassGroupName' => 'greengrassGroupName'
                     },
  'IsRequired' => {
                    'Target' => 1,
                    'Definition' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::CreateSystemInstance - Arguments for method CreateSystemInstance on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSystemInstance on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method CreateSystemInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSystemInstance.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $CreateSystemInstanceResponse = $iotthingsgraph->CreateSystemInstance(
      Definition => {
        Language => 'GRAPHQL',             # values: GRAPHQL
        Text     => 'MyDefinitionText',    # max: 1048576

      },
      Target               => 'GREENGRASS',
      FlowActionsRoleArn   => 'MyRoleArn',      # OPTIONAL
      GreengrassGroupName  => 'MyGroupName',    # OPTIONAL
      MetricsConfiguration => {
        CloudMetricEnabled => 1,                # OPTIONAL
        MetricRuleRoleArn  => 'MyRoleArn',      # min: 20, max: 2048
      },    # OPTIONAL
      S3BucketName => 'MyS3BucketName',    # OPTIONAL
      Tags         => [
        {
          Key   => 'MyTagKey',             # min: 1, max: 128
          Value => 'MyTagValue',           # min: 1, max: 256

        },
        ...
      ],                                   # OPTIONAL
    );

    # Results:
    my $Summary = $CreateSystemInstanceResponse->Summary;

    # Returns a L<Paws::IoTThingsGraph::CreateSystemInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/CreateSystemInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Definition => IoTThingsGraph_DefinitionDocument





=head2 FlowActionsRoleArn => Str

The ARN of the IAM role that AWS IoT Things Graph will assume when it
executes the flow. This role must have read and write access to AWS
Lambda and AWS IoT and any other AWS services that the flow uses when
it executes. This value is required if the value of the C<target>
parameter is C<CLOUD>.



=head2 GreengrassGroupName => Str

The name of the Greengrass group where the system instance will be
deployed. This value is required if the value of the C<target>
parameter is C<GREENGRASS>.



=head2 MetricsConfiguration => IoTThingsGraph_MetricsConfiguration





=head2 S3BucketName => Str

The name of the Amazon Simple Storage Service bucket that will be used
to store and deploy the system instance's resource file. This value is
required if the value of the C<target> parameter is C<GREENGRASS>.



=head2 Tags => ArrayRef[IoTThingsGraph_Tag]

Metadata, consisting of key-value pairs, that can be used to categorize
your system instances.



=head2 B<REQUIRED> Target => Str

The target type of the deployment. Valid values are C<GREENGRASS> and
C<CLOUD>.

Valid values are: C<"GREENGRASS">, C<"CLOUD">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSystemInstance in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

