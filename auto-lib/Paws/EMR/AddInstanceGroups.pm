# Generated from json/callargs_class.tt

package Paws::EMR::AddInstanceGroups;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::EMR::Types qw/EMR_InstanceGroupConfig/;
  has InstanceGroups => (is => 'ro', isa => ArrayRef[EMR_InstanceGroupConfig], required => 1, predicate => 1);
  has JobFlowId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AddInstanceGroups');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EMR::AddInstanceGroupsOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'InstanceGroups' => 1,
                    'JobFlowId' => 1
                  },
  'types' => {
               'JobFlowId' => {
                                'type' => 'Str'
                              },
               'InstanceGroups' => {
                                     'class' => 'Paws::EMR::InstanceGroupConfig',
                                     'type' => 'ArrayRef[EMR_InstanceGroupConfig]'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::AddInstanceGroups - Arguments for method AddInstanceGroups on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddInstanceGroups on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method AddInstanceGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddInstanceGroups.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $AddInstanceGroupsOutput = $elasticmapreduce->AddInstanceGroups(
      InstanceGroups => [
        {
          InstanceCount     => 1,
          InstanceRole      => 'MASTER',            # values: MASTER, CORE, TASK
          InstanceType      => 'MyInstanceType',    # min: 1, max: 256
          AutoScalingPolicy => {
            Constraints => {
              MaxCapacity => 1,
              MinCapacity => 1,

            },
            Rules => [
              {
                Action => {
                  SimpleScalingPolicyConfiguration => {
                    ScalingAdjustment => 1,
                    AdjustmentType    => 'CHANGE_IN_CAPACITY'
                    , # values: CHANGE_IN_CAPACITY, PERCENT_CHANGE_IN_CAPACITY, EXACT_CAPACITY; OPTIONAL
                    CoolDown => 1,
                  },
                  Market => 'ON_DEMAND',    # values: ON_DEMAND, SPOT; OPTIONAL
                },
                Name    => 'MyString',
                Trigger => {
                  CloudWatchAlarmDefinition => {
                    ComparisonOperator => 'GREATER_THAN_OR_EQUAL'
                    , # values: GREATER_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN, LESS_THAN_OR_EQUAL
                    MetricName => 'MyString',
                    Period     => 1,
                    Threshold  => 1,
                    Dimensions => [
                      {
                        Key   => 'MyString',
                        Value => 'MyString',
                      },
                      ...
                    ],    # OPTIONAL
                    EvaluationPeriods => 1,
                    Namespace         => 'MyString',
                    Statistic         => 'SAMPLE_COUNT'
                    , # values: SAMPLE_COUNT, AVERAGE, SUM, MINIMUM, MAXIMUM; OPTIONAL
                    Unit => 'NONE'
                    , # values: NONE, SECONDS, MICRO_SECONDS, MILLI_SECONDS, BYTES, KILO_BYTES, MEGA_BYTES, GIGA_BYTES, TERA_BYTES, BITS, KILO_BITS, MEGA_BITS, GIGA_BITS, TERA_BITS, PERCENT, COUNT, BYTES_PER_SECOND, KILO_BYTES_PER_SECOND, MEGA_BYTES_PER_SECOND, GIGA_BYTES_PER_SECOND, TERA_BYTES_PER_SECOND, BITS_PER_SECOND, KILO_BITS_PER_SECOND, MEGA_BITS_PER_SECOND, GIGA_BITS_PER_SECOND, TERA_BITS_PER_SECOND, COUNT_PER_SECOND; OPTIONAL
                  },

                },
                Description => 'MyString',
              },
              ...
            ],

          },    # OPTIONAL
          BidPrice       => 'MyXmlStringMaxLen256',    # max: 256; OPTIONAL
          Configurations => [
            {
              Classification => 'MyString',
              Configurations => <ConfigurationList>,
              Properties     => { 'MyString' => 'MyString', },    # OPTIONAL
            },
            ...
          ],                                                      # OPTIONAL
          EbsConfiguration => {
            EbsBlockDeviceConfigs => [
              {
                VolumeSpecification => {
                  SizeInGB   => 1,
                  VolumeType => 'MyString',
                  Iops       => 1,
                },
                VolumesPerInstance => 1,
              },
              ...
            ],                                                    # OPTIONAL
            EbsOptimized => 1,                                    # OPTIONAL
          },    # OPTIONAL
          Market => 'ON_DEMAND',             # values: ON_DEMAND, SPOT; OPTIONAL
          Name   => 'MyXmlStringMaxLen256',  # max: 256; OPTIONAL
        },
        ...
      ],
      JobFlowId => 'MyXmlStringMaxLen256',

    );

    # Results:
    my $ClusterArn       = $AddInstanceGroupsOutput->ClusterArn;
    my $InstanceGroupIds = $AddInstanceGroupsOutput->InstanceGroupIds;
    my $JobFlowId        = $AddInstanceGroupsOutput->JobFlowId;

    # Returns a L<Paws::EMR::AddInstanceGroupsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/AddInstanceGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceGroups => ArrayRef[EMR_InstanceGroupConfig]

Instance groups to add.



=head2 B<REQUIRED> JobFlowId => Str

Job flow in which to add the instance groups.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddInstanceGroups in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

