
package Paws::CodeBuild::DescribeCodeCoverages;
  use Moose;
  has MaxLineCoveragePercentage => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'maxLineCoveragePercentage' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has MinLineCoveragePercentage => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'minLineCoveragePercentage' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ReportArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportArn' , required => 1);
  has SortBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortBy' );
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortOrder' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCodeCoverages');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::DescribeCodeCoveragesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::DescribeCodeCoverages - Arguments for method DescribeCodeCoverages on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCodeCoverages on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method DescribeCodeCoverages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCodeCoverages.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $DescribeCodeCoveragesOutput = $codebuild->DescribeCodeCoverages(
      ReportArn                 => 'MyNonEmptyString',
      MaxLineCoveragePercentage => 1,                             # OPTIONAL
      MaxResults                => 1,                             # OPTIONAL
      MinLineCoveragePercentage => 1,                             # OPTIONAL
      NextToken                 => 'MyString',                    # OPTIONAL
      SortBy                    => 'LINE_COVERAGE_PERCENTAGE',    # OPTIONAL
      SortOrder                 => 'ASCENDING',                   # OPTIONAL
    );

    # Results:
    my $CodeCoverages = $DescribeCodeCoveragesOutput->CodeCoverages;
    my $NextToken     = $DescribeCodeCoveragesOutput->NextToken;

    # Returns a L<Paws::CodeBuild::DescribeCodeCoveragesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/DescribeCodeCoverages>

=head1 ATTRIBUTES


=head2 MaxLineCoveragePercentage => Num

The maximum line coverage percentage to report.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 MinLineCoveragePercentage => Num

The minimum line coverage percentage to report.



=head2 NextToken => Str

The C<nextToken> value returned from a previous call to
C<DescribeCodeCoverages>. This specifies the next item to return. To
return the beginning of the list, exclude this parameter.



=head2 B<REQUIRED> ReportArn => Str

The ARN of the report for which test cases are returned.



=head2 SortBy => Str

Specifies how the results are sorted. Possible values are:

=over

=item FILE_PATH

The results are sorted by file path.

=item LINE_COVERAGE_PERCENTAGE

The results are sorted by the percentage of lines that are covered.

=back


Valid values are: C<"LINE_COVERAGE_PERCENTAGE">, C<"FILE_PATH">

=head2 SortOrder => Str

Specifies if the results are sorted in ascending or descending order.

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCodeCoverages in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

