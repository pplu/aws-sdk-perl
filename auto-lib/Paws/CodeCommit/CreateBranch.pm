
package Paws::CodeCommit::CreateBranch;
  use Moose;
  has BranchName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'branchName' , required => 1);
  has CommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commitId' , required => 1);
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBranch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::CreateBranch - Arguments for method CreateBranch on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBranch on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method CreateBranch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBranch.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    $codecommit->CreateBranch(
      BranchName     => 'MyBranchName',
      CommitId       => 'MyCommitId',
      RepositoryName => 'MyRepositoryName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/CreateBranch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BranchName => Str

The name of the new branch to create.



=head2 B<REQUIRED> CommitId => Str

The ID of the commit to point the new branch to.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository in which you want to create the new branch.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBranch in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

