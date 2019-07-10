
package Paws::CodeCommit::BatchDescribeMergeConflicts;
  use Moose;
  has ConflictDetailLevel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'conflictDetailLevel' );
  has ConflictResolutionStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'conflictResolutionStrategy' );
  has DestinationCommitSpecifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationCommitSpecifier' , required => 1);
  has FilePaths => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'filePaths' );
  has MaxConflictFiles => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxConflictFiles' );
  has MaxMergeHunks => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxMergeHunks' );
  has MergeOption => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mergeOption' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);
  has SourceCommitSpecifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceCommitSpecifier' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDescribeMergeConflicts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::BatchDescribeMergeConflictsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::BatchDescribeMergeConflicts - Arguments for method BatchDescribeMergeConflicts on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDescribeMergeConflicts on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method BatchDescribeMergeConflicts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDescribeMergeConflicts.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $BatchDescribeMergeConflictsOutput =
      $codecommit->BatchDescribeMergeConflicts(
      DestinationCommitSpecifier => 'MyCommitName',
      MergeOption                => 'FAST_FORWARD_MERGE',
      RepositoryName             => 'MyRepositoryName',
      SourceCommitSpecifier      => 'MyCommitName',
      ConflictDetailLevel        => 'FILE_LEVEL',           # OPTIONAL
      ConflictResolutionStrategy => 'NONE',                 # OPTIONAL
      FilePaths                  => [ 'MyPath', ... ],      # OPTIONAL
      MaxConflictFiles           => 1,                      # OPTIONAL
      MaxMergeHunks              => 1,                      # OPTIONAL
      NextToken                  => 'MyNextToken',          # OPTIONAL
      );

    # Results:
    my $BaseCommitId = $BatchDescribeMergeConflictsOutput->BaseCommitId;
    my $Conflicts    = $BatchDescribeMergeConflictsOutput->Conflicts;
    my $DestinationCommitId =
      $BatchDescribeMergeConflictsOutput->DestinationCommitId;
    my $Errors         = $BatchDescribeMergeConflictsOutput->Errors;
    my $NextToken      = $BatchDescribeMergeConflictsOutput->NextToken;
    my $SourceCommitId = $BatchDescribeMergeConflictsOutput->SourceCommitId;

    # Returns a L<Paws::CodeCommit::BatchDescribeMergeConflictsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/BatchDescribeMergeConflicts>

=head1 ATTRIBUTES


=head2 ConflictDetailLevel => Str

The level of conflict detail to use. If unspecified, the default
FILE_LEVEL is used, which will return a not mergeable result if the
same file has differences in both branches. If LINE_LEVEL is specified,
a conflict will be considered not mergeable if the same file in both
branches has differences on the same line.

Valid values are: C<"FILE_LEVEL">, C<"LINE_LEVEL">

=head2 ConflictResolutionStrategy => Str

Specifies which branch to use when resolving conflicts, or whether to
attempt automatically merging two versions of a file. The default is
NONE, which requires any conflicts to be resolved manually before the
merge operation will be successful.

Valid values are: C<"NONE">, C<"ACCEPT_SOURCE">, C<"ACCEPT_DESTINATION">, C<"AUTOMERGE">

=head2 B<REQUIRED> DestinationCommitSpecifier => Str

The branch, tag, HEAD, or other fully qualified reference used to
identify a commit. For example, a branch name or a full commit ID.



=head2 FilePaths => ArrayRef[Str|Undef]

The path of the target files used to describe the conflicts. If not
specified, the default is all conflict files.



=head2 MaxConflictFiles => Int

The maximum number of files to include in the output.



=head2 MaxMergeHunks => Int

The maximum number of merge hunks to include in the output.



=head2 B<REQUIRED> MergeOption => Str

The merge option or strategy you want to use to merge the code.

Valid values are: C<"FAST_FORWARD_MERGE">, C<"SQUASH_MERGE">, C<"THREE_WAY_MERGE">

=head2 NextToken => Str

An enumeration token that when provided in a request, returns the next
batch of the results.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository that contains the merge conflicts you want
to review.



=head2 B<REQUIRED> SourceCommitSpecifier => Str

The branch, tag, HEAD, or other fully qualified reference used to
identify a commit. For example, a branch name or a full commit ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDescribeMergeConflicts in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

