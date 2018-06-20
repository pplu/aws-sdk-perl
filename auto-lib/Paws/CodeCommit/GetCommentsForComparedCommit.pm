
package Paws::CodeCommit::GetCommentsForComparedCommit;
  use Moose;
  has AfterCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'afterCommitId' , required => 1);
  has BeforeCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'beforeCommitId' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCommentsForComparedCommit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::GetCommentsForComparedCommitOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetCommentsForComparedCommit - Arguments for method GetCommentsForComparedCommit on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCommentsForComparedCommit on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method GetCommentsForComparedCommit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCommentsForComparedCommit.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $GetCommentsForComparedCommitOutput =
      $codecommit->GetCommentsForComparedCommit(
      AfterCommitId  => 'MyCommitId',
      RepositoryName => 'MyRepositoryName',
      BeforeCommitId => 'MyCommitId',         # OPTIONAL
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyNextToken',        # OPTIONAL
      );

    # Results:
    my $CommentsForComparedCommitData =
      $GetCommentsForComparedCommitOutput->CommentsForComparedCommitData;
    my $NextToken = $GetCommentsForComparedCommitOutput->NextToken;

    # Returns a L<Paws::CodeCommit::GetCommentsForComparedCommitOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/GetCommentsForComparedCommit>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AfterCommitId => Str

To establish the directionality of the comparison, the full commit ID
of the 'after' commit.



=head2 BeforeCommitId => Str

To establish the directionality of the comparison, the full commit ID
of the 'before' commit.



=head2 MaxResults => Int

A non-negative integer used to limit the number of returned results.
The default is 100 comments, and is configurable up to 500.



=head2 NextToken => Str

An enumeration token that when provided in a request, returns the next
batch of the results.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository where you want to compare commits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCommentsForComparedCommit in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

