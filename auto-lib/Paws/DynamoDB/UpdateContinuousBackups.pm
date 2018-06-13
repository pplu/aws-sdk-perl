
package Paws::DynamoDB::UpdateContinuousBackups;
  use Moose;
  has PointInTimeRecoverySpecification => (is => 'ro', isa => 'Paws::DynamoDB::PointInTimeRecoverySpecification', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateContinuousBackups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::UpdateContinuousBackupsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateContinuousBackups - Arguments for method UpdateContinuousBackups on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContinuousBackups on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method UpdateContinuousBackups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContinuousBackups.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $UpdateContinuousBackupsOutput = $dynamodb->UpdateContinuousBackups(
      PointInTimeRecoverySpecification => {
        PointInTimeRecoveryEnabled => 1,

      },
      TableName => 'MyTableName',

    );

    # Results:
    my $ContinuousBackupsDescription =
      $UpdateContinuousBackupsOutput->ContinuousBackupsDescription;

    # Returns a L<Paws::DynamoDB::UpdateContinuousBackupsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/UpdateContinuousBackups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PointInTimeRecoverySpecification => L<Paws::DynamoDB::PointInTimeRecoverySpecification>

Represents the settings used to enable point in time recovery.



=head2 B<REQUIRED> TableName => Str

The name of the table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContinuousBackups in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

