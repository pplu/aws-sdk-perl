
package Paws::DynamoDB::UpdateGlobalTableSettings;
  use Moose;
  has GlobalTableBillingMode => (is => 'ro', isa => 'Str');
  has GlobalTableGlobalSecondaryIndexSettingsUpdate => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::GlobalTableGlobalSecondaryIndexSettingsUpdate]');
  has GlobalTableName => (is => 'ro', isa => 'Str', required => 1);
  has GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate => (is => 'ro', isa => 'Paws::DynamoDB::AutoScalingSettingsUpdate');
  has GlobalTableProvisionedWriteCapacityUnits => (is => 'ro', isa => 'Int');
  has ReplicaSettingsUpdate => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ReplicaSettingsUpdate]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGlobalTableSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::UpdateGlobalTableSettingsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateGlobalTableSettings - Arguments for method UpdateGlobalTableSettings on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGlobalTableSettings on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method UpdateGlobalTableSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGlobalTableSettings.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $UpdateGlobalTableSettingsOutput = $dynamodb->UpdateGlobalTableSettings(
      GlobalTableName                               => 'MyTableName',
      GlobalTableBillingMode                        => 'PROVISIONED', # OPTIONAL
      GlobalTableGlobalSecondaryIndexSettingsUpdate => [
        {
          IndexName => 'MyIndexName',    # min: 3, max: 255
          ProvisionedWriteCapacityAutoScalingSettingsUpdate => {
            AutoScalingDisabled => 1,    # OPTIONAL
            AutoScalingRoleArn =>
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
          ProvisionedWriteCapacityUnits => 1,    # min: 1; OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
      GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate => {
        AutoScalingDisabled => 1,                # OPTIONAL
        AutoScalingRoleArn =>
          'MyAutoScalingRoleArn',                # min: 1, max: 1600; OPTIONAL
        MaximumUnits        => 1,                # min: 1; OPTIONAL
        MinimumUnits        => 1,                # min: 1; OPTIONAL
        ScalingPolicyUpdate => {
          TargetTrackingScalingPolicyConfiguration => {
            TargetValue      => 1,
            DisableScaleIn   => 1,               # OPTIONAL
            ScaleInCooldown  => 1,               # OPTIONAL
            ScaleOutCooldown => 1,               # OPTIONAL
          },
          PolicyName => 'MyAutoScalingPolicyName',  # min: 1, max: 256; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      GlobalTableProvisionedWriteCapacityUnits => 1,    # OPTIONAL
      ReplicaSettingsUpdate                    => [
        {
          RegionName                                => 'MyRegionName',
          ReplicaGlobalSecondaryIndexSettingsUpdate => [
            {
              IndexName => 'MyIndexName',               # min: 3, max: 255
              ProvisionedReadCapacityAutoScalingSettingsUpdate => {
                AutoScalingDisabled => 1,               # OPTIONAL
                AutoScalingRoleArn =>
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
              ProvisionedReadCapacityUnits => 1,    # min: 1; OPTIONAL
            },
            ...
          ],                                        # min: 1, max: 20; OPTIONAL
          ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate => {
            AutoScalingDisabled => 1,               # OPTIONAL
            AutoScalingRoleArn =>
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
          ReplicaProvisionedReadCapacityUnits => 1,    # min: 1; OPTIONAL
        },
        ...
      ],                                               # OPTIONAL
    );

    # Results:
    my $GlobalTableName = $UpdateGlobalTableSettingsOutput->GlobalTableName;
    my $ReplicaSettings = $UpdateGlobalTableSettingsOutput->ReplicaSettings;

    # Returns a L<Paws::DynamoDB::UpdateGlobalTableSettingsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/UpdateGlobalTableSettings>

=head1 ATTRIBUTES


=head2 GlobalTableBillingMode => Str

The billing mode of the global table. If C<GlobalTableBillingMode> is
not specified, the global table defaults to C<PROVISIONED> capacity
billing mode.

Valid values are: C<"PROVISIONED">, C<"PAY_PER_REQUEST">

=head2 GlobalTableGlobalSecondaryIndexSettingsUpdate => ArrayRef[L<Paws::DynamoDB::GlobalTableGlobalSecondaryIndexSettingsUpdate>]

Represents the settings of a global secondary index for a global table
that will be modified.



=head2 B<REQUIRED> GlobalTableName => Str

The name of the global table



=head2 GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate => L<Paws::DynamoDB::AutoScalingSettingsUpdate>

AutoScaling settings for managing provisioned write capacity for the
global table.



=head2 GlobalTableProvisionedWriteCapacityUnits => Int

The maximum number of writes consumed per second before DynamoDB
returns a C<ThrottlingException.>



=head2 ReplicaSettingsUpdate => ArrayRef[L<Paws::DynamoDB::ReplicaSettingsUpdate>]

Represents the settings for a global table in a region that will be
modified.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGlobalTableSettings in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

