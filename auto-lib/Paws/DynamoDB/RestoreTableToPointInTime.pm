
package Paws::DynamoDB::RestoreTableToPointInTime;
  use Moose;
  has RestoreDateTime => (is => 'ro', isa => 'Str');
  has SourceTableName => (is => 'ro', isa => 'Str', required => 1);
  has TargetTableName => (is => 'ro', isa => 'Str', required => 1);
  has UseLatestRestorableTime => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreTableToPointInTime');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::RestoreTableToPointInTimeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
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
      SourceTableName         => 'MyTableName',
      TargetTableName         => 'MyTableName',
      RestoreDateTime         => '1970-01-01T01:00:00',    # OPTIONAL
      UseLatestRestorableTime => 1,                        # OPTIONAL
    );

    # Results:
    my $TableDescription = $RestoreTableToPointInTimeOutput->TableDescription;

    # Returns a L<Paws::DynamoDB::RestoreTableToPointInTimeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/RestoreTableToPointInTime>

=head1 ATTRIBUTES


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

