
package Paws::CodeCommit::GetDifferences;
  use Moose;
  has AfterCommitSpecifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'afterCommitSpecifier' , required => 1);
  has AfterPath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'afterPath' );
  has BeforeCommitSpecifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'beforeCommitSpecifier' );
  has BeforePath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'beforePath' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDifferences');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::GetDifferencesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetDifferences - Arguments for method GetDifferences on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDifferences on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method GetDifferences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDifferences.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $GetDifferencesOutput = $codecommit->GetDifferences(
      AfterCommitSpecifier  => 'MyCommitName',
      RepositoryName        => 'MyRepositoryName',
      AfterPath             => 'MyPath',             # OPTIONAL
      BeforeCommitSpecifier => 'MyCommitName',       # OPTIONAL
      BeforePath            => 'MyPath',             # OPTIONAL
      MaxResults            => 1,                    # OPTIONAL
      NextToken             => 'MyNextToken',        # OPTIONAL
    );

    # Results:
    my $Differences = $GetDifferencesOutput->Differences;
    my $NextToken   = $GetDifferencesOutput->NextToken;

    # Returns a L<Paws::CodeCommit::GetDifferencesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/GetDifferences>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AfterCommitSpecifier => Str

The branch, tag, HEAD, or other fully qualified reference used to
identify a commit.



=head2 AfterPath => Str

The file path in which to check differences. Limits the results to this
path. Can also be used to specify the changed name of a directory or
folder, if it has changed. If not specified, differences will be shown
for all paths.



=head2 BeforeCommitSpecifier => Str

The branch, tag, HEAD, or other fully qualified reference used to
identify a commit. For example, the full commit ID. Optional. If not
specified, all changes prior to the C<afterCommitSpecifier> value will
be shown. If you do not use C<beforeCommitSpecifier> in your request,
consider limiting the results with C<maxResults>.



=head2 BeforePath => Str

The file path in which to check for differences. Limits the results to
this path. Can also be used to specify the previous name of a directory
or folder. If C<beforePath> and C<afterPath> are not specified,
differences will be shown for all paths.



=head2 MaxResults => Int

A non-negative integer used to limit the number of returned results.



=head2 NextToken => Str

An enumeration token that when provided in a request, returns the next
batch of the results.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository where you want to get differences.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDifferences in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

