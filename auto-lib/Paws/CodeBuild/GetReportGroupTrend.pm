
package Paws::CodeBuild::GetReportGroupTrend;
  use Moose;
  has NumOfReports => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numOfReports' );
  has ReportGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportGroupArn' , required => 1);
  has TrendField => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trendField' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReportGroupTrend');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::GetReportGroupTrendOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::GetReportGroupTrend - Arguments for method GetReportGroupTrend on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReportGroupTrend on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method GetReportGroupTrend.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReportGroupTrend.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $GetReportGroupTrendOutput = $codebuild->GetReportGroupTrend(
      ReportGroupArn => 'MyNonEmptyString',
      TrendField     => 'PASS_RATE',
      NumOfReports   => 1,                    # OPTIONAL
    );

    # Results:
    my $RawData = $GetReportGroupTrendOutput->RawData;
    my $Stats   = $GetReportGroupTrendOutput->Stats;

    # Returns a L<Paws::CodeBuild::GetReportGroupTrendOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/GetReportGroupTrend>

=head1 ATTRIBUTES


=head2 NumOfReports => Int

The number of reports to analyze. This operation always retrieves the
most recent reports.

If this parameter is omitted, the most recent 100 reports are analyzed.



=head2 B<REQUIRED> ReportGroupArn => Str

The ARN of the report group that contains the reports to analyze.



=head2 B<REQUIRED> TrendField => Str

The test report value to accumulate. This must be one of the following
values:

=over

=item Test reports:

=over

=item DURATION

Accumulate the test run times for the specified reports.

=item PASS_RATE

Accumulate the percentage of tests that passed for the specified test
reports.

=item TOTAL

Accumulate the total number of tests for the specified test reports.

=back

=back

=over

=item Code coverage reports:

=over

=item BRANCH_COVERAGE

Accumulate the branch coverage percentages for the specified test
reports.

=item BRANCHES_COVERED

Accumulate the branches covered values for the specified test reports.

=item BRANCHES_MISSED

Accumulate the branches missed values for the specified test reports.

=item LINE_COVERAGE

Accumulate the line coverage percentages for the specified test
reports.

=item LINES_COVERED

Accumulate the lines covered values for the specified test reports.

=item LINES_MISSED

Accumulate the lines not covered values for the specified test reports.

=back

=back


Valid values are: C<"PASS_RATE">, C<"DURATION">, C<"TOTAL">, C<"LINE_COVERAGE">, C<"LINES_COVERED">, C<"LINES_MISSED">, C<"BRANCH_COVERAGE">, C<"BRANCHES_COVERED">, C<"BRANCHES_MISSED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReportGroupTrend in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

