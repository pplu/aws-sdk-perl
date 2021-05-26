
package Paws::DynamoDB::ListContributorInsights;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListContributorInsights');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::ListContributorInsightsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ListContributorInsights - Arguments for method ListContributorInsights on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListContributorInsights on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method ListContributorInsights.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListContributorInsights.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $ListContributorInsightsOutput = $dynamodb->ListContributorInsights(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyNextTokenString',    # OPTIONAL
      TableName  => 'MyTableName',          # OPTIONAL
    );

    # Results:
    my $ContributorInsightsSummaries =
      $ListContributorInsightsOutput->ContributorInsightsSummaries;
    my $NextToken = $ListContributorInsightsOutput->NextToken;

    # Returns a L<Paws::DynamoDB::ListContributorInsightsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/ListContributorInsights>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of results to return per page.



=head2 NextToken => Str

A token to for the desired page, if there is one.



=head2 TableName => Str

The name of the table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListContributorInsights in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

