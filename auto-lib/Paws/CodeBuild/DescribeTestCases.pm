
package Paws::CodeBuild::DescribeTestCases;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::CodeBuild::TestCaseFilter', traits => ['NameInRequest'], request_name => 'filter' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ReportArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTestCases');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::DescribeTestCasesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::DescribeTestCases - Arguments for method DescribeTestCases on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTestCases on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method DescribeTestCases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTestCases.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $DescribeTestCasesOutput = $codebuild->DescribeTestCases(
      ReportArn  => 'MyString',
      Filter     => { Status => 'MyString', },    # OPTIONAL
      MaxResults => 1,                            # OPTIONAL
      NextToken  => 'MyString',                   # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeTestCasesOutput->NextToken;
    my $TestCases = $DescribeTestCasesOutput->TestCases;

    # Returns a L<Paws::CodeBuild::DescribeTestCasesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/DescribeTestCases>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::CodeBuild::TestCaseFilter>

A C<TestCaseFilter> object used to filter the returned reports.



=head2 MaxResults => Int

The maximum number of paginated test cases returned per response. Use
C<nextToken> to iterate pages in the list of returned C<TestCase>
objects. The default value is 100.



=head2 NextToken => Str

During a previous call, the maximum number of items that can be
returned is the value specified in C<maxResults>. If there more items
in the list, then a unique string called a I<nextToken> is returned. To
get the next batch of items in the list, call this operation again,
adding the next token to the call. To get all of the items in the list,
keep calling this operation with each subsequent next token that is
returned, until no more next tokens are returned.



=head2 B<REQUIRED> ReportArn => Str

The ARN of the report for which test cases are returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTestCases in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

