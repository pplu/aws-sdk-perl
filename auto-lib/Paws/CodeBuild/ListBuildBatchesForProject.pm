
package Paws::CodeBuild::ListBuildBatchesForProject;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::CodeBuild::BuildBatchFilter', traits => ['NameInRequest'], request_name => 'filter' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName' );
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortOrder' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBuildBatchesForProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::ListBuildBatchesForProjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ListBuildBatchesForProject - Arguments for method ListBuildBatchesForProject on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBuildBatchesForProject on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method ListBuildBatchesForProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBuildBatchesForProject.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $ListBuildBatchesForProjectOutput =
      $codebuild->ListBuildBatchesForProject(
      Filter => {
        Status => 'SUCCEEDED'
        , # values: SUCCEEDED, FAILED, FAULT, TIMED_OUT, IN_PROGRESS, STOPPED; OPTIONAL
      },    # OPTIONAL
      MaxResults  => 1,                     # OPTIONAL
      NextToken   => 'MyString',            # OPTIONAL
      ProjectName => 'MyNonEmptyString',    # OPTIONAL
      SortOrder   => 'ASCENDING',           # OPTIONAL
      );

    # Results:
    my $Ids       = $ListBuildBatchesForProjectOutput->Ids;
    my $NextToken = $ListBuildBatchesForProjectOutput->NextToken;

    # Returns a L<Paws::CodeBuild::ListBuildBatchesForProjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/ListBuildBatchesForProject>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::CodeBuild::BuildBatchFilter>

A C<BuildBatchFilter> object that specifies the filters for the search.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

The C<nextToken> value returned from a previous call to
C<ListBuildBatchesForProject>. This specifies the next item to return.
To return the beginning of the list, exclude this parameter.



=head2 ProjectName => Str

The name of the project.



=head2 SortOrder => Str

Specifies the sort order of the returned items. Valid values include:

=over

=item *

C<ASCENDING>: List the batch build identifiers in ascending order by
identifier.

=item *

C<DESCENDING>: List the batch build identifiers in descending order by
identifier.

=back


Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBuildBatchesForProject in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

