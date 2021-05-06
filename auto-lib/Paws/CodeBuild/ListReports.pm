
package Paws::CodeBuild::ListReports;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::CodeBuild::ReportFilter', traits => ['NameInRequest'], request_name => 'filter' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortOrder' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReports');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::ListReportsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ListReports - Arguments for method ListReports on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReports on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method ListReports.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReports.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $ListReportsOutput = $codebuild->ListReports(
      Filter => {
        Status => 'GENERATING'
        , # values: GENERATING, SUCCEEDED, FAILED, INCOMPLETE, DELETING; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,              # OPTIONAL
      NextToken  => 'MyString',     # OPTIONAL
      SortOrder  => 'ASCENDING',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListReportsOutput->NextToken;
    my $Reports   = $ListReportsOutput->Reports;

    # Returns a L<Paws::CodeBuild::ListReportsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/ListReports>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::CodeBuild::ReportFilter>

A C<ReportFilter> object used to filter the returned reports.



=head2 MaxResults => Int

The maximum number of paginated reports returned per response. Use
C<nextToken> to iterate pages in the list of returned C<Report>
objects. The default value is 100.



=head2 NextToken => Str

During a previous call, the maximum number of items that can be
returned is the value specified in C<maxResults>. If there more items
in the list, then a unique string called a I<nextToken> is returned. To
get the next batch of items in the list, call this operation again,
adding the next token to the call. To get all of the items in the list,
keep calling this operation with each subsequent next token that is
returned, until no more next tokens are returned.



=head2 SortOrder => Str

Specifies the sort order for the list of returned reports. Valid values
are:

=over

=item *

C<ASCENDING>: return reports in chronological order based on their
creation date.

=item *

C<DESCENDING>: return reports in the reverse chronological order based
on their creation date.

=back


Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReports in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

