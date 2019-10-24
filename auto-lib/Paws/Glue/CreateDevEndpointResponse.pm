# Generated from json/callresult_class.tt

package Paws::Glue::CreateDevEndpointResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef Undef/;
  use Paws::Glue::Types qw/Glue_MapValue/;
  has Arguments => (is => 'ro', isa => Glue_MapValue);
  has AvailabilityZone => (is => 'ro', isa => Str);
  has CreatedTimestamp => (is => 'ro', isa => Str);
  has EndpointName => (is => 'ro', isa => Str);
  has ExtraJarsS3Path => (is => 'ro', isa => Str);
  has ExtraPythonLibsS3Path => (is => 'ro', isa => Str);
  has FailureReason => (is => 'ro', isa => Str);
  has NumberOfNodes => (is => 'ro', isa => Int);
  has RoleArn => (is => 'ro', isa => Str);
  has SecurityConfiguration => (is => 'ro', isa => Str);
  has SecurityGroupIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Status => (is => 'ro', isa => Str);
  has SubnetId => (is => 'ro', isa => Str);
  has VpcId => (is => 'ro', isa => Str);
  has YarnEndpointAddress => (is => 'ro', isa => Str);
  has ZeppelinRemoteSparkInterpreterPort => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EndpointName' => {
                                   'type' => 'Str'
                                 },
               'Status' => {
                             'type' => 'Str'
                           },
               'ZeppelinRemoteSparkInterpreterPort' => {
                                                         'type' => 'Int'
                                                       },
               'ExtraJarsS3Path' => {
                                      'type' => 'Str'
                                    },
               'VpcId' => {
                            'type' => 'Str'
                          },
               'SecurityGroupIds' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'SecurityConfiguration' => {
                                            'type' => 'Str'
                                          },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'ExtraPythonLibsS3Path' => {
                                            'type' => 'Str'
                                          },
               'Arguments' => {
                                'class' => 'Paws::Glue::MapValue',
                                'type' => 'Glue_MapValue'
                              },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     },
               'CreatedTimestamp' => {
                                       'type' => 'Str'
                                     },
               'NumberOfNodes' => {
                                    'type' => 'Int'
                                  },
               'YarnEndpointAddress' => {
                                          'type' => 'Str'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SubnetId' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateDevEndpointResponse

=head1 ATTRIBUTES


=head2 Arguments => Glue_MapValue

The map of arguments used to configure this DevEndpoint.


=head2 AvailabilityZone => Str

The AWS availability zone where this DevEndpoint is located.


=head2 CreatedTimestamp => Str

The point in time at which this DevEndpoint was created.


=head2 EndpointName => Str

The name assigned to the new DevEndpoint.


=head2 ExtraJarsS3Path => Str

Path to one or more Java Jars in an S3 bucket that will be loaded in
your DevEndpoint.


=head2 ExtraPythonLibsS3Path => Str

Path(s) to one or more Python libraries in an S3 bucket that will be
loaded in your DevEndpoint.


=head2 FailureReason => Str

The reason for a current failure in this DevEndpoint.


=head2 NumberOfNodes => Int

The number of AWS Glue Data Processing Units (DPUs) allocated to this
DevEndpoint.


=head2 RoleArn => Str

The AWS ARN of the role assigned to the new DevEndpoint.


=head2 SecurityConfiguration => Str

The name of the SecurityConfiguration structure being used with this
DevEndpoint.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The security groups assigned to the new DevEndpoint.


=head2 Status => Str

The current status of the new DevEndpoint.


=head2 SubnetId => Str

The subnet ID assigned to the new DevEndpoint.


=head2 VpcId => Str

The ID of the VPC used by this DevEndpoint.


=head2 YarnEndpointAddress => Str

The address of the YARN endpoint used by this DevEndpoint.


=head2 ZeppelinRemoteSparkInterpreterPort => Int

The Apache Zeppelin port for the remote Apache Spark interpreter.


=head2 _request_id => Str


=cut

1;