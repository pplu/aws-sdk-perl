# Generated from json/callargs_class.tt

package Paws::DynamoDB::RestoreTableToPointInTime;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::DynamoDB::Types qw/DynamoDB_LocalSecondaryIndex DynamoDB_GlobalSecondaryIndex DynamoDB_ProvisionedThroughput/;
  has BillingModeOverride => (is => 'ro', isa => Str, predicate => 1);
  has GlobalSecondaryIndexOverride => (is => 'ro', isa => ArrayRef[DynamoDB_GlobalSecondaryIndex], predicate => 1);
  has LocalSecondaryIndexOverride => (is => 'ro', isa => ArrayRef[DynamoDB_LocalSecondaryIndex], predicate => 1);
  has ProvisionedThroughputOverride => (is => 'ro', isa => DynamoDB_ProvisionedThroughput, predicate => 1);
  has RestoreDateTime => (is => 'ro', isa => Str, predicate => 1);
  has SourceTableName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TargetTableName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has UseLatestRestorableTime => (is => 'ro', isa => Bool, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RestoreTableToPointInTime');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DynamoDB::RestoreTableToPointInTimeOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GlobalSecondaryIndexOverride' => {
                                                   'class' => 'Paws::DynamoDB::GlobalSecondaryIndex',
                                                   'type' => 'ArrayRef[DynamoDB_GlobalSecondaryIndex]'
                                                 },
               'LocalSecondaryIndexOverride' => {
                                                  'class' => 'Paws::DynamoDB::LocalSecondaryIndex',
                                                  'type' => 'ArrayRef[DynamoDB_LocalSecondaryIndex]'
                                                },
               'BillingModeOverride' => {
                                          'type' => 'Str'
                                        },
               'ProvisionedThroughputOverride' => {
                                                    'class' => 'Paws::DynamoDB::ProvisionedThroughput',
                                                    'type' => 'DynamoDB_ProvisionedThroughput'
                                                  },
               'TargetTableName' => {
                                      'type' => 'Str'
                                    },
               'RestoreDateTime' => {
                                      'type' => 'Str'
                                    },
               'UseLatestRestorableTime' => {
                                              'type' => 'Bool'
                                            },
               'SourceTableName' => {
                                      'type' => 'Str'
                                    }
             },
  'IsRequired' => {
                    'SourceTableName' => 1,
                    'TargetTableName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::RestoreTableToPointInTime - Arguments for method RestoreTableToPointInTime on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreTableToPointInTime on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method RestoreTableToPointInTime.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreTableToPointInTime.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $RestoreTableToPointInTimeOutput = $dynamodb->RestoreTableToPointInTime(
      SourceTableName              => 'MyTableName',
      TargetTableName              => 'MyTableName',
      BillingModeOverride          => 'PROVISIONED',    # OPTIONAL
      GlobalSecondaryIndexOverride => [
        {
          IndexName => 'MyIndexName',                   # min: 3, max: 255
          KeySchema => [
            {
              AttributeName => 'MyKeySchemaAttributeName', # min: 1, max: 255
              KeyType       => 'HASH',                     # values: HASH, RANGE

            },
            ...
          ],                                               # min: 1, max: 2
          Projection => {
            NonKeyAttributes => [
              'MyNonKeyAttributeName', ...                 # min: 1, max: 255
            ],    # min: 1, max: 20; OPTIONAL
            ProjectionType => 'ALL', # values: ALL, KEYS_ONLY, INCLUDE; OPTIONAL
          },
          ProvisionedThroughput => {
            ReadCapacityUnits  => 1,    # min: 1
            WriteCapacityUnits => 1,    # min: 1

          },    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
      LocalSecondaryIndexOverride => [
        {
          IndexName => 'MyIndexName',    # min: 3, max: 255
          KeySchema => [
            {
              AttributeName => 'MyKeySchemaAttributeName', # min: 1, max: 255
              KeyType       => 'HASH',                     # values: HASH, RANGE

            },
            ...
          ],                                               # min: 1, max: 2
          Projection => {
            NonKeyAttributes => [
              'MyNonKeyAttributeName', ...                 # min: 1, max: 255
            ],    # min: 1, max: 20; OPTIONAL
            ProjectionType => 'ALL', # values: ALL, KEYS_ONLY, INCLUDE; OPTIONAL
          },

        },
        ...
      ],                             # OPTIONAL
      ProvisionedThroughputOverride => {
        ReadCapacityUnits  => 1,     # min: 1
        WriteCapacityUnits => 1,     # min: 1

      },    # OPTIONAL
      RestoreDateTime         => '1970-01-01T01:00:00',    # OPTIONAL
      UseLatestRestorableTime => 1,                        # OPTIONAL
    );

    # Results:
    my $TableDescription = $RestoreTableToPointInTimeOutput->TableDescription;

    # Returns a L<Paws::DynamoDB::RestoreTableToPointInTimeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/RestoreTableToPointInTime>

=head1 ATTRIBUTES


=head2 BillingModeOverride => Str

The billing mode of the restored table.

Valid values are: C<"PROVISIONED">, C<"PAY_PER_REQUEST">

=head2 GlobalSecondaryIndexOverride => ArrayRef[DynamoDB_GlobalSecondaryIndex]

List of global secondary indexes for the restored table. The indexes
provided should match existing secondary indexes. You can choose to
exclude some or all of the indexes at the time of restore.



=head2 LocalSecondaryIndexOverride => ArrayRef[DynamoDB_LocalSecondaryIndex]

List of local secondary indexes for the restored table. The indexes
provided should match existing secondary indexes. You can choose to
exclude some or all of the indexes at the time of restore.



=head2 ProvisionedThroughputOverride => DynamoDB_ProvisionedThroughput

Provisioned throughput settings for the restored table.



=head2 RestoreDateTime => Str

Time in the past to restore the table to.



=head2 B<REQUIRED> SourceTableName => Str

Name of the source table that is being restored.



=head2 B<REQUIRED> TargetTableName => Str

The name of the new table to which it must be restored to.



=head2 UseLatestRestorableTime => Bool

Restore the table to the latest possible time.
C<LatestRestorableDateTime> is typically 5 minutes before the current
time.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreTableToPointInTime in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

