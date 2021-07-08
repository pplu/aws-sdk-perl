
package Paws::Quicksight::SearchDashboards;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::DashboardSearchFilter]', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchDashboards');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/search/dashboards');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::SearchDashboardsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::SearchDashboards - Arguments for method SearchDashboards on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchDashboards on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method SearchDashboards.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchDashboards.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $SearchDashboardsResponse = $quicksight->SearchDashboards(
      AwsAccountId => 'MyAwsAccountId',
      Filters      => [
        {
          Operator => 'StringEquals',       # values: StringEquals
          Name     => 'QUICKSIGHT_USER',    # values: QUICKSIGHT_USER; OPTIONAL
          Value    => 'MyString',           # OPTIONAL
        },
        ...
      ],
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $DashboardSummaryList = $SearchDashboardsResponse->DashboardSummaryList;
    my $NextToken            = $SearchDashboardsResponse->NextToken;
    my $RequestId            = $SearchDashboardsResponse->RequestId;
    my $Status               = $SearchDashboardsResponse->Status;

    # Returns a L<Paws::Quicksight::SearchDashboardsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/SearchDashboards>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the user whose dashboards
you're searching for.



=head2 B<REQUIRED> Filters => ArrayRef[L<Paws::Quicksight::DashboardSearchFilter>]

The filters to apply to the search. Currently, you can search only by
user name, for example, C<"Filters": [ { "Name": "QUICKSIGHT_USER",
"Operator": "StringEquals", "Value":
"arn:aws:quicksight:us-east-1:1:user/default/UserName1" } ]>



=head2 MaxResults => Int

The maximum number of results to be returned per request.



=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchDashboards in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

