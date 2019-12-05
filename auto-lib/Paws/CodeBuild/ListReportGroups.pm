
package Paws::CodeBuild::ListReportGroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SortBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortBy' );
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortOrder' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReportGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::ListReportGroupsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ListReportGroups - Arguments for method ListReportGroups on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReportGroups on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method ListReportGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReportGroups.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $ListReportGroupsOutput = $codebuild->ListReportGroups(
      MaxResults => 1,              # OPTIONAL
      NextToken  => 'MyString',     # OPTIONAL
      SortBy     => 'NAME',         # OPTIONAL
      SortOrder  => 'ASCENDING',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListReportGroupsOutput->NextToken;
    my $ReportGroups = $ListReportGroupsOutput->ReportGroups;

    # Returns a L<Paws::CodeBuild::ListReportGroupsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/ListReportGroups>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of paginated report groups returned per response.
Use C<nextToken> to iterate pages in the list of returned
C<ReportGroup> objects. The default value is 100.



=head2 NextToken => Str

During a previous call, the maximum number of items that can be
returned is the value specified in C<maxResults>. If there more items
in the list, then a unique string called a I<nextToken> is returned. To
get the next batch of items in the list, call this operation again,
adding the next token to the call. To get all of the items in the list,
keep calling this operation with each subsequent next token that is
returned, until no more next tokens are returned.



=head2 SortBy => Str

The criterion to be used to list build report groups. Valid values
include:

=over

=item *

C<CREATED_TIME>: List based on when each report group was created.

=item *

C<LAST_MODIFIED_TIME>: List based on when each report group was last
changed.

=item *

C<NAME>: List based on each report group's name.

=back


Valid values are: C<"NAME">, C<"CREATED_TIME">, C<"LAST_MODIFIED_TIME">

=head2 SortOrder => Str

Used to specify the order to sort the list of returned report groups.
Valid values are C<ASCENDING> and C<DESCENDING>.

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReportGroups in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

