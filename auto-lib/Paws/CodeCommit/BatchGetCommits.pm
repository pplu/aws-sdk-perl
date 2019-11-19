# Generated from json/callargs_class.tt

package Paws::CodeCommit::BatchGetCommits;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeCommit::Types qw//;
  has CommitIds => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has RepositoryName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'BatchGetCommits');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeCommit::BatchGetCommitsOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'CommitIds' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              }
             },
  'NameInRequest' => {
                       'RepositoryName' => 'repositoryName',
                       'CommitIds' => 'commitIds'
                     },
  'IsRequired' => {
                    'CommitIds' => 1,
                    'RepositoryName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::BatchGetCommits - Arguments for method BatchGetCommits on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetCommits on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method BatchGetCommits.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetCommits.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $BatchGetCommitsOutput = $codecommit->BatchGetCommits(
      CommitIds      => [ 'MyObjectId', ... ],
      RepositoryName => 'MyRepositoryName',

    );

    # Results:
    my $Commits = $BatchGetCommitsOutput->Commits;
    my $Errors  = $BatchGetCommitsOutput->Errors;

    # Returns a L<Paws::CodeCommit::BatchGetCommitsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/BatchGetCommits>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommitIds => ArrayRef[Str|Undef]

The full commit IDs of the commits to get information about.

You must supply the full SHAs of each commit. You cannot use shortened
SHAs.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository that contains the commits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetCommits in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

