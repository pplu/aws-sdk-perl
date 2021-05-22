
package Paws::Quicksight::SearchAnalyses;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::AnalysisSearchFilter]', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchAnalyses');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/search/analyses');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::SearchAnalysesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::SearchAnalyses - Arguments for method SearchAnalyses on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchAnalyses on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method SearchAnalyses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchAnalyses.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $SearchAnalysesResponse = $quicksight->SearchAnalyses(
      AwsAccountId => 'MyAwsAccountId',
      Filters      => [
        {
          Name     => 'QUICKSIGHT_USER',    # values: QUICKSIGHT_USER; OPTIONAL
          Operator => 'StringEquals',       # values: StringEquals; OPTIONAL
          Value    => 'MyString',           # OPTIONAL
        },
        ...
      ],
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyString',             # OPTIONAL
    );

    # Results:
    my $AnalysisSummaryList = $SearchAnalysesResponse->AnalysisSummaryList;
    my $NextToken           = $SearchAnalysesResponse->NextToken;
    my $RequestId           = $SearchAnalysesResponse->RequestId;
    my $Status              = $SearchAnalysesResponse->Status;

    # Returns a L<Paws::Quicksight::SearchAnalysesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/SearchAnalyses>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the analyses that you're
searching for.



=head2 B<REQUIRED> Filters => ArrayRef[L<Paws::Quicksight::AnalysisSearchFilter>]

The structure for the search filters that you want to apply to your
search.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

A pagination token that can be used in a subsequent request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchAnalyses in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

