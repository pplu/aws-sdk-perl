
package Paws::CodeCommit::GetPullRequestOverrideState;
  use Moose;
  has PullRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pullRequestId' , required => 1);
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revisionId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPullRequestOverrideState');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::GetPullRequestOverrideStateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetPullRequestOverrideState - Arguments for method GetPullRequestOverrideState on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPullRequestOverrideState on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method GetPullRequestOverrideState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPullRequestOverrideState.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $GetPullRequestOverrideStateOutput =
      $codecommit->GetPullRequestOverrideState(
      PullRequestId => 'MyPullRequestId',
      RevisionId    => 'MyRevisionId',

      );

    # Results:
    my $Overridden = $GetPullRequestOverrideStateOutput->Overridden;
    my $Overrider  = $GetPullRequestOverrideStateOutput->Overrider;

    # Returns a L<Paws::CodeCommit::GetPullRequestOverrideStateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/GetPullRequestOverrideState>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PullRequestId => Str

The ID of the pull request for which you want to get information about
whether approval rules have been set aside (overridden).



=head2 B<REQUIRED> RevisionId => Str

The system-generated ID of the revision for the pull request. To
retrieve the most recent revision ID, use GetPullRequest.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPullRequestOverrideState in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

