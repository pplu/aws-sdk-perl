# Generated from json/callargs_class.tt

package Paws::CodeCommit::GetMergeCommit;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw//;
  has ConflictDetailLevel => (is => 'ro', isa => Str, predicate => 1);
  has ConflictResolutionStrategy => (is => 'ro', isa => Str, predicate => 1);
  has DestinationCommitSpecifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RepositoryName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SourceCommitSpecifier => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetMergeCommit');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeCommit::GetMergeCommitOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConflictResolutionStrategy' => {
                                                 'type' => 'Str'
                                               },
               'ConflictDetailLevel' => {
                                          'type' => 'Str'
                                        },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'SourceCommitSpecifier' => {
                                            'type' => 'Str'
                                          },
               'DestinationCommitSpecifier' => {
                                                 'type' => 'Str'
                                               }
             },
  'NameInRequest' => {
                       'RepositoryName' => 'repositoryName',
                       'ConflictDetailLevel' => 'conflictDetailLevel',
                       'ConflictResolutionStrategy' => 'conflictResolutionStrategy',
                       'SourceCommitSpecifier' => 'sourceCommitSpecifier',
                       'DestinationCommitSpecifier' => 'destinationCommitSpecifier'
                     },
  'IsRequired' => {
                    'RepositoryName' => 1,
                    'SourceCommitSpecifier' => 1,
                    'DestinationCommitSpecifier' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetMergeCommit - Arguments for method GetMergeCommit on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMergeCommit on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method GetMergeCommit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMergeCommit.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $GetMergeCommitOutput = $codecommit->GetMergeCommit(
      DestinationCommitSpecifier => 'MyCommitName',
      RepositoryName             => 'MyRepositoryName',
      SourceCommitSpecifier      => 'MyCommitName',
      ConflictDetailLevel        => 'FILE_LEVEL',         # OPTIONAL
      ConflictResolutionStrategy => 'NONE',               # OPTIONAL
    );

    # Results:
    my $BaseCommitId        = $GetMergeCommitOutput->BaseCommitId;
    my $DestinationCommitId = $GetMergeCommitOutput->DestinationCommitId;
    my $MergedCommitId      = $GetMergeCommitOutput->MergedCommitId;
    my $SourceCommitId      = $GetMergeCommitOutput->SourceCommitId;

    # Returns a L<Paws::CodeCommit::GetMergeCommitOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/GetMergeCommit>

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



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository that contains the merge commit about which
you want to get information.



=head2 B<REQUIRED> SourceCommitSpecifier => Str

The branch, tag, HEAD, or other fully qualified reference used to
identify a commit. For example, a branch name or a full commit ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMergeCommit in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

