
package Paws::DynamoDB::UpdateContributorInsights;
  use Moose;
  has ContributorInsightsAction => (is => 'ro', isa => 'Str', required => 1);
  has IndexName => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateContributorInsights');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::UpdateContributorInsightsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateContributorInsights - Arguments for method UpdateContributorInsights on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContributorInsights on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method UpdateContributorInsights.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContributorInsights.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $UpdateContributorInsightsOutput = $dynamodb->UpdateContributorInsights(
      ContributorInsightsAction => 'ENABLE',
      TableName                 => 'MyTableName',
      IndexName                 => 'MyIndexName',    # OPTIONAL
    );

    # Results:
    my $ContributorInsightsStatus =
      $UpdateContributorInsightsOutput->ContributorInsightsStatus;
    my $IndexName = $UpdateContributorInsightsOutput->IndexName;
    my $TableName = $UpdateContributorInsightsOutput->TableName;

    # Returns a L<Paws::DynamoDB::UpdateContributorInsightsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/UpdateContributorInsights>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContributorInsightsAction => Str

Represents the contributor insights action.

Valid values are: C<"ENABLE">, C<"DISABLE">

=head2 IndexName => Str

The global secondary index name, if applicable.



=head2 B<REQUIRED> TableName => Str

The name of the table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContributorInsights in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

