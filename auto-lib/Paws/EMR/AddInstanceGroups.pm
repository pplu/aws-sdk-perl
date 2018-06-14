
package Paws::EMR::AddInstanceGroups;
  use Moose;
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Paws::EMR::InstanceGroupConfig]', required => 1);
  has JobFlowId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddInstanceGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::AddInstanceGroupsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
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
          InstanceType      => 'MyInstanceType',    # min: 1, max: 256
          InstanceRole      => 'MASTER',            # values: MASTER, CORE, TASK
          InstanceCount     => 1,
          AutoScalingPolicy => {
            Rules => [
              {
                Trigger => {
                  CloudWatchAlarmDefinition => {
                    Threshold          => 1,
                    MetricName         => 'MyString',
                    Period             => 1,
                    ComparisonOperator => 'GREATER_THAN_OR_EQUAL'
                    , # values: GREATER_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN, LESS_THAN_OR_EQUAL
                    EvaluationPeriods => 1,
                    Statistic         => 'SAMPLE_COUNT'
                    , # values: SAMPLE_COUNT, AVERAGE, SUM, MINIMUM, MAXIMUM; OPTIONAL
                    Dimensions => [
                      {
                        Value => 'MyString',
                        Key   => 'MyString',
                      },
                      ...
                    ],    # OPTIONAL
                    Namespace => 'MyString',
                    Unit      => 'NONE'
                    , # values: NONE, SECONDS, MICRO_SECONDS, MILLI_SECONDS, BYTES, KILO_BYTES, MEGA_BYTES, GIGA_BYTES, TERA_BYTES, BITS, KILO_BITS, MEGA_BITS, GIGA_BITS, TERA_BITS, PERCENT, COUNT, BYTES_PER_SECOND, KILO_BYTES_PER_SECOND, MEGA_BYTES_PER_SECOND, GIGA_BYTES_PER_SECOND, TERA_BYTES_PER_SECOND, BITS_PER_SECOND, KILO_BITS_PER_SECOND, MEGA_BITS_PER_SECOND, GIGA_BITS_PER_SECOND, TERA_BITS_PER_SECOND, COUNT_PER_SECOND; OPTIONAL
                  },

                },
                Action => {
                  SimpleScalingPolicyConfiguration => {
                    ScalingAdjustment => 1,
                    CoolDown          => 1,
                    AdjustmentType    => 'CHANGE_IN_CAPACITY'
                    , # values: CHANGE_IN_CAPACITY, PERCENT_CHANGE_IN_CAPACITY, EXACT_CAPACITY; OPTIONAL
                  },
                  Market => 'ON_DEMAND',    # values: ON_DEMAND, SPOT; OPTIONAL
                },
                Name        => 'MyString',
                Description => 'MyString',
              },
              ...
            ],
            Constraints => {
              MaxCapacity => 1,
              MinCapacity => 1,

            },

          },    # OPTIONAL
          Market => 'ON_DEMAND',    # values: ON_DEMAND, SPOT; OPTIONAL
          BidPrice       => 'MyXmlStringMaxLen256',    # max: 256; OPTIONAL
          Configurations => [
            {
              Properties     => { 'MyString' => 'MyString', },    # OPTIONAL
              Classification => 'MyString',
              Configurations => <ConfigurationList>,
            },
            ...
          ],                                                      # OPTIONAL
          EbsConfiguration => {
            EbsBlockDeviceConfigs => [
              {
                VolumeSpecification => {
                  VolumeType => 'MyString',
                  SizeInGB   => 1,
                  Iops       => 1,
                },
                VolumesPerInstance => 1,
              },
              ...
            ],                                                    # OPTIONAL
            EbsOptimized => 1,                                    # OPTIONAL
          },    # OPTIONAL
          Name => 'MyXmlStringMaxLen256',    # max: 256; OPTIONAL
        },
        ...
      ],
      JobFlowId => 'MyXmlStringMaxLen256',

    );

    # Results:
    my $InstanceGroupIds = $AddInstanceGroupsOutput->InstanceGroupIds;
    my $JobFlowId        = $AddInstanceGroupsOutput->JobFlowId;

    # Returns a L<Paws::EMR::AddInstanceGroupsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/AddInstanceGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceGroups => ArrayRef[L<Paws::EMR::InstanceGroupConfig>]

Instance groups to add.



=head2 B<REQUIRED> JobFlowId => Str

Job flow in which to add the instance groups.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddInstanceGroups in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

