
package Paws::DynamoDB::UpdateTableReplicaAutoScaling;
  use Moose;
  has GlobalSecondaryIndexUpdates => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::GlobalSecondaryIndexAutoScalingUpdate]');
  has ProvisionedWriteCapacityAutoScalingUpdate => (is => 'ro', isa => 'Paws::DynamoDB::AutoScalingSettingsUpdate');
  has ReplicaUpdates => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ReplicaAutoScalingUpdate]');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTableReplicaAutoScaling');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::UpdateTableReplicaAutoScalingOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateTableReplicaAutoScaling - Arguments for method UpdateTableReplicaAutoScaling on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTableReplicaAutoScaling on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method UpdateTableReplicaAutoScaling.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTableReplicaAutoScaling.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $UpdateTableReplicaAutoScalingOutput =
      $dynamodb->UpdateTableReplicaAutoScaling(
      TableName                   => 'MyTableName',
      GlobalSecondaryIndexUpdates => [
        {
          IndexName => 'MyIndexName',    # min: 3, max: 255; OPTIONAL
          ProvisionedWriteCapacityAutoScalingUpdate => {
            AutoScalingDisabled => 1,    # OPTIONAL
            AutoScalingRoleArn  =>
              'MyAutoScalingRoleArn',    # min: 1, max: 1600; OPTIONAL
            MaximumUnits        => 1,    # min: 1; OPTIONAL
            MinimumUnits        => 1,    # min: 1; OPTIONAL
            ScalingPolicyUpdate => {
              TargetTrackingScalingPolicyConfiguration => {
                TargetValue      => 1,
                DisableScaleIn   => 1,    # OPTIONAL
                ScaleInCooldown  => 1,    # OPTIONAL
                ScaleOutCooldown => 1,    # OPTIONAL
              },
              PolicyName =>
                'MyAutoScalingPolicyName',    # min: 1, max: 256; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ProvisionedWriteCapacityAutoScalingUpdate => {
        AutoScalingDisabled => 1,    # OPTIONAL
        AutoScalingRoleArn  =>
          'MyAutoScalingRoleArn',    # min: 1, max: 1600; OPTIONAL
        MaximumUnits        => 1,    # min: 1; OPTIONAL
        MinimumUnits        => 1,    # min: 1; OPTIONAL
        ScalingPolicyUpdate => {
          TargetTrackingScalingPolicyConfiguration => {
            TargetValue      => 1,
            DisableScaleIn   => 1,    # OPTIONAL
            ScaleInCooldown  => 1,    # OPTIONAL
            ScaleOutCooldown => 1,    # OPTIONAL
          },
          PolicyName => 'MyAutoScalingPolicyName',  # min: 1, max: 256; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ReplicaUpdates => [
        {
          RegionName                         => 'MyRegionName',
          ReplicaGlobalSecondaryIndexUpdates => [
            {
              IndexName => 'MyIndexName',    # min: 3, max: 255; OPTIONAL
              ProvisionedReadCapacityAutoScalingUpdate => {
                AutoScalingDisabled => 1,    # OPTIONAL
                AutoScalingRoleArn  =>
                  'MyAutoScalingRoleArn',    # min: 1, max: 1600; OPTIONAL
                MaximumUnits        => 1,    # min: 1; OPTIONAL
                MinimumUnits        => 1,    # min: 1; OPTIONAL
                ScalingPolicyUpdate => {
                  TargetTrackingScalingPolicyConfiguration => {
                    TargetValue      => 1,
                    DisableScaleIn   => 1,    # OPTIONAL
                    ScaleInCooldown  => 1,    # OPTIONAL
                    ScaleOutCooldown => 1,    # OPTIONAL
                  },
                  PolicyName =>
                    'MyAutoScalingPolicyName',    # min: 1, max: 256; OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
          ReplicaProvisionedReadCapacityAutoScalingUpdate => {
            AutoScalingDisabled => 1,    # OPTIONAL
            AutoScalingRoleArn  =>
              'MyAutoScalingRoleArn',    # min: 1, max: 1600; OPTIONAL
            MaximumUnits        => 1,    # min: 1; OPTIONAL
            MinimumUnits        => 1,    # min: 1; OPTIONAL
            ScalingPolicyUpdate => {
              TargetTrackingScalingPolicyConfiguration => {
                TargetValue      => 1,
                DisableScaleIn   => 1,    # OPTIONAL
                ScaleInCooldown  => 1,    # OPTIONAL
                ScaleOutCooldown => 1,    # OPTIONAL
              },
              PolicyName =>
                'MyAutoScalingPolicyName',    # min: 1, max: 256; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $TableAutoScalingDescription =
      $UpdateTableReplicaAutoScalingOutput->TableAutoScalingDescription;

    # Returns a L<Paws::DynamoDB::UpdateTableReplicaAutoScalingOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/UpdateTableReplicaAutoScaling>

=head1 ATTRIBUTES


=head2 GlobalSecondaryIndexUpdates => ArrayRef[L<Paws::DynamoDB::GlobalSecondaryIndexAutoScalingUpdate>]

Represents the auto scaling settings of the global secondary indexes of
the replica to be updated.



=head2 ProvisionedWriteCapacityAutoScalingUpdate => L<Paws::DynamoDB::AutoScalingSettingsUpdate>





=head2 ReplicaUpdates => ArrayRef[L<Paws::DynamoDB::ReplicaAutoScalingUpdate>]

Represents the auto scaling settings of replicas of the table that will
be modified.



=head2 B<REQUIRED> TableName => Str

The name of the global table to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTableReplicaAutoScaling in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

