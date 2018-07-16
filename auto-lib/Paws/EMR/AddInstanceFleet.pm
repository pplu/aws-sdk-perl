
package Paws::EMR::AddInstanceFleet;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceFleet => (is => 'ro', isa => 'Paws::EMR::InstanceFleetConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddInstanceFleet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::AddInstanceFleetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::AddInstanceFleet - Arguments for method AddInstanceFleet on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddInstanceFleet on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method AddInstanceFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddInstanceFleet.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $AddInstanceFleetOutput = $elasticmapreduce->AddInstanceFleet(
      ClusterId     => 'MyXmlStringMaxLen256',
      InstanceFleet => {
        InstanceFleetType   => 'MASTER',    # values: MASTER, CORE, TASK
        InstanceTypeConfigs => [
          {
            InstanceType => 'MyInstanceType',          # min: 1, max: 256
            BidPrice     => 'MyXmlStringMaxLen256',    # max: 256
            BidPriceAsPercentageOfOnDemandPrice => 1,  # OPTIONAL
            Configurations                      => [
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
            WeightedCapacity => 1,    # OPTIONAL
          },
          ...
        ],                            # OPTIONAL
        LaunchSpecifications => {
          SpotSpecification => {
            TimeoutAction => 'SWITCH_TO_ON_DEMAND'
            ,    # values: SWITCH_TO_ON_DEMAND, TERMINATE_CLUSTER
            TimeoutDurationMinutes => 1,    # OPTIONAL
            BlockDurationMinutes   => 1,    # OPTIONAL
          },

        },    # OPTIONAL
        Name                   => 'MyXmlStringMaxLen256',    # max: 256
        TargetOnDemandCapacity => 1,                         # OPTIONAL
        TargetSpotCapacity     => 1,                         # OPTIONAL
      },

    );

    # Results:
    my $ClusterId       = $AddInstanceFleetOutput->ClusterId;
    my $InstanceFleetId = $AddInstanceFleetOutput->InstanceFleetId;

    # Returns a L<Paws::EMR::AddInstanceFleetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/AddInstanceFleet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterId => Str

The unique identifier of the cluster.



=head2 B<REQUIRED> InstanceFleet => L<Paws::EMR::InstanceFleetConfig>

Specifies the configuration of the instance fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddInstanceFleet in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

