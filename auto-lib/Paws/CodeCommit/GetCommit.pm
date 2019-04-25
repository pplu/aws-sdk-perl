
package Paws::CodeCommit::GetCommit;
  use Moose;
  has CommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitId' , required => 1);
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCommit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::GetCommitOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetCommit - Arguments for method GetCommit on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCommit on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method GetCommit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCommit.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $GetCommitOutput = $codecommit->GetCommit(
      CommitId       => 'MyObjectId',
      RepositoryName => 'MyRepositoryName',

    );

    # Results:
    my $Commit = $GetCommitOutput->Commit;

    # Returns a L<Paws::CodeCommit::GetCommitOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/GetCommit>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommitId => Str

The commit ID. Commit IDs are the full SHA of the commit.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository to which the commit was made.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCommit in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

