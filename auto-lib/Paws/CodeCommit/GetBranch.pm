
package Paws::CodeCommit::GetBranch;
  use Moose;
  has BranchName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'branchName' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBranch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::GetBranchOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetBranch - Arguments for method GetBranch on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBranch on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method GetBranch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBranch.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $GetBranchOutput = $codecommit->GetBranch(
      BranchName     => 'MyBranchName',        # OPTIONAL
      RepositoryName => 'MyRepositoryName',    # OPTIONAL
    );

    # Results:
    my $Branch = $GetBranchOutput->Branch;

    # Returns a L<Paws::CodeCommit::GetBranchOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/GetBranch>

=head1 ATTRIBUTES


=head2 BranchName => Str

The name of the branch for which you want to retrieve information.



=head2 RepositoryName => Str

The name of the repository that contains the branch for which you want
to retrieve information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBranch in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

