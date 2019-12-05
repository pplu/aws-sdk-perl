
package Paws::DynamoDB::DescribeContributorInsights;
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeContributorInsights');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::DescribeContributorInsightsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeContributorInsights - Arguments for method DescribeContributorInsights on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeContributorInsights on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method DescribeContributorInsights.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeContributorInsights.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $DescribeContributorInsightsOutput =
      $dynamodb->DescribeContributorInsights(
      TableName => 'MyTableName',
      IndexName => 'MyIndexName',    # OPTIONAL
      );

    # Results:
    my $ContributorInsightsRuleList =
      $DescribeContributorInsightsOutput->ContributorInsightsRuleList;
    my $ContributorInsightsStatus =
      $DescribeContributorInsightsOutput->ContributorInsightsStatus;
    my $FailureException = $DescribeContributorInsightsOutput->FailureException;
    my $IndexName        = $DescribeContributorInsightsOutput->IndexName;
    my $LastUpdateDateTime =
      $DescribeContributorInsightsOutput->LastUpdateDateTime;
    my $TableName = $DescribeContributorInsightsOutput->TableName;

    # Returns a L<Paws::DynamoDB::DescribeContributorInsightsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/DescribeContributorInsights>

=head1 ATTRIBUTES


=head2 IndexName => Str

The name of the global secondary index to describe, if applicable.



=head2 B<REQUIRED> TableName => Str

The name of the table to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeContributorInsights in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

