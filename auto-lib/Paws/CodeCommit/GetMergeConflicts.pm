
package Paws::CodeCommit::GetMergeConflicts;
  use Moose;
  has DestinationCommitSpecifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationCommitSpecifier' , required => 1);
  has MergeOption => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mergeOption' , required => 1);
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);
  has SourceCommitSpecifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceCommitSpecifier' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMergeConflicts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::GetMergeConflictsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetMergeConflicts - Arguments for method GetMergeConflicts on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMergeConflicts on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method GetMergeConflicts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMergeConflicts.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $GetMergeConflictsOutput = $codecommit->GetMergeConflicts(
      DestinationCommitSpecifier => 'MyCommitName',
      MergeOption                => 'FAST_FORWARD_MERGE',
      RepositoryName             => 'MyRepositoryName',
      SourceCommitSpecifier      => 'MyCommitName',

    );

    # Results:
    my $DestinationCommitId = $GetMergeConflictsOutput->DestinationCommitId;
    my $Mergeable           = $GetMergeConflictsOutput->Mergeable;
    my $SourceCommitId      = $GetMergeConflictsOutput->SourceCommitId;

    # Returns a L<Paws::CodeCommit::GetMergeConflictsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/GetMergeConflicts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationCommitSpecifier => Str

The branch, tag, HEAD, or other fully qualified reference used to
identify a commit. For example, a branch name or a full commit ID.



=head2 B<REQUIRED> MergeOption => Str

The merge option or strategy you want to use to merge the code. The
only valid value is FAST_FORWARD_MERGE.

Valid values are: C<"FAST_FORWARD_MERGE">

=head2 B<REQUIRED> RepositoryName => Str

The name of the repository where the pull request was created.



=head2 B<REQUIRED> SourceCommitSpecifier => Str

The branch, tag, HEAD, or other fully qualified reference used to
identify a commit. For example, a branch name or a full commit ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMergeConflicts in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

