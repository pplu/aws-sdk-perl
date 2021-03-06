
package Paws::CodeBuild::ListSharedReportGroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SortBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortBy' );
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortOrder' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSharedReportGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::ListSharedReportGroupsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ListSharedReportGroups - Arguments for method ListSharedReportGroups on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSharedReportGroups on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method ListSharedReportGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSharedReportGroups.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $ListSharedReportGroupsOutput = $codebuild->ListSharedReportGroups(
      MaxResults => 1,              # OPTIONAL
      NextToken  => 'MyString',     # OPTIONAL
      SortBy     => 'ARN',          # OPTIONAL
      SortOrder  => 'ASCENDING',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListSharedReportGroupsOutput->NextToken;
    my $ReportGroups = $ListSharedReportGroupsOutput->ReportGroups;

    # Returns a L<Paws::CodeBuild::ListSharedReportGroupsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/ListSharedReportGroups>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of paginated shared report groups per response. Use
C<nextToken> to iterate pages in the list of returned C<ReportGroup>
objects. The default value is 100.



=head2 NextToken => Str

During a previous call, the maximum number of items that can be
returned is the value specified in C<maxResults>. If there more items
in the list, then a unique string called a I<nextToken> is returned. To
get the next batch of items in the list, call this operation again,
adding the next token to the call. To get all of the items in the list,
keep calling this operation with each subsequent next token that is
returned, until no more next tokens are returned.



=head2 SortBy => Str

The criterion to be used to list report groups shared with the current
Amazon Web Services account or user. Valid values include:

=over

=item *

C<ARN>: List based on the ARN.

=item *

C<MODIFIED_TIME>: List based on when information about the shared
report group was last changed.

=back


Valid values are: C<"ARN">, C<"MODIFIED_TIME">

=head2 SortOrder => Str

The order in which to list shared report groups. Valid values include:

=over

=item *

C<ASCENDING>: List in ascending order.

=item *

C<DESCENDING>: List in descending order.

=back


Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSharedReportGroups in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

