
package Paws::DynamoDB::DescribeContinuousBackups;
  use Moose;
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeContinuousBackups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::DescribeContinuousBackupsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeContinuousBackups - Arguments for method DescribeContinuousBackups on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeContinuousBackups on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method DescribeContinuousBackups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeContinuousBackups.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $DescribeContinuousBackupsOutput = $dynamodb->DescribeContinuousBackups(
      TableName => 'MyTableName',

    );

    # Results:
    my $ContinuousBackupsDescription =
      $DescribeContinuousBackupsOutput->ContinuousBackupsDescription;

    # Returns a L<Paws::DynamoDB::DescribeContinuousBackupsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/DescribeContinuousBackups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TableName => Str

Name of the table for which the customer wants to check the continuous
backups and point in time recovery settings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeContinuousBackups in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

