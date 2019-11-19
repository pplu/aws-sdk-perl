# Generated from json/callargs_class.tt

package Paws::CodeCommit::MergeBranchesByFastForward;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw//;
  has DestinationCommitSpecifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RepositoryName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SourceCommitSpecifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TargetBranch => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'MergeBranchesByFastForward');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeCommit::MergeBranchesByFastForwardOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'RepositoryName' => 'repositoryName',
                       'TargetBranch' => 'targetBranch',
                       'DestinationCommitSpecifier' => 'destinationCommitSpecifier',
                       'SourceCommitSpecifier' => 'sourceCommitSpecifier'
                     },
  'IsRequired' => {
                    'DestinationCommitSpecifier' => 1,
                    'SourceCommitSpecifier' => 1,
                    'RepositoryName' => 1
                  },
  'types' => {
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'TargetBranch' => {
                                   'type' => 'Str'
                                 },
               'SourceCommitSpecifier' => {
                                            'type' => 'Str'
                                          },
               'DestinationCommitSpecifier' => {
                                                 'type' => 'Str'
                                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::MergeBranchesByFastForward - Arguments for method MergeBranchesByFastForward on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method MergeBranchesByFastForward on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method MergeBranchesByFastForward.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to MergeBranchesByFastForward.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $MergeBranchesByFastForwardOutput =
      $codecommit->MergeBranchesByFastForward(
      DestinationCommitSpecifier => 'MyCommitName',
      RepositoryName             => 'MyRepositoryName',
      SourceCommitSpecifier      => 'MyCommitName',
      TargetBranch               => 'MyBranchName',       # OPTIONAL
      );

    # Results:
    my $CommitId = $MergeBranchesByFastForwardOutput->CommitId;
    my $TreeId   = $MergeBranchesByFastForwardOutput->TreeId;

    # Returns a L<Paws::CodeCommit::MergeBranchesByFastForwardOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/MergeBranchesByFastForward>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationCommitSpecifier => Str

The branch, tag, HEAD, or other fully qualified reference used to
identify a commit. For example, a branch name or a full commit ID.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository where you want to merge two branches.



=head2 B<REQUIRED> SourceCommitSpecifier => Str

The branch, tag, HEAD, or other fully qualified reference used to
identify a commit. For example, a branch name or a full commit ID.



=head2 TargetBranch => Str

The branch where the merge will be applied.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method MergeBranchesByFastForward in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

