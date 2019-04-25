
package Paws::CodeCommit::DescribePullRequestEvents;
  use Moose;
  has ActorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actorArn' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has PullRequestEventType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pullRequestEventType' );
  has PullRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pullRequestId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePullRequestEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::DescribePullRequestEventsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::DescribePullRequestEvents - Arguments for method DescribePullRequestEvents on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePullRequestEvents on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method DescribePullRequestEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePullRequestEvents.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $DescribePullRequestEventsOutput =
      $codecommit->DescribePullRequestEvents(
      PullRequestId        => 'MyPullRequestId',
      ActorArn             => 'MyArn',                   # OPTIONAL
      MaxResults           => 1,                         # OPTIONAL
      NextToken            => 'MyNextToken',             # OPTIONAL
      PullRequestEventType => 'PULL_REQUEST_CREATED',    # OPTIONAL
      );

    # Results:
    my $NextToken         = $DescribePullRequestEventsOutput->NextToken;
    my $PullRequestEvents = $DescribePullRequestEventsOutput->PullRequestEvents;

    # Returns a L<Paws::CodeCommit::DescribePullRequestEventsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/DescribePullRequestEvents>

=head1 ATTRIBUTES


=head2 ActorArn => Str

The Amazon Resource Name (ARN) of the user whose actions resulted in
the event. Examples include updating the pull request with additional
commits or changing the status of a pull request.



=head2 MaxResults => Int

A non-negative integer used to limit the number of returned results.
The default is 100 events, which is also the maximum number of events
that can be returned in a result.



=head2 NextToken => Str

An enumeration token that when provided in a request, returns the next
batch of the results.



=head2 PullRequestEventType => Str

Optional. The pull request event type about which you want to return
information.

Valid values are: C<"PULL_REQUEST_CREATED">, C<"PULL_REQUEST_STATUS_CHANGED">, C<"PULL_REQUEST_SOURCE_REFERENCE_UPDATED">, C<"PULL_REQUEST_MERGE_STATE_CHANGED">

=head2 B<REQUIRED> PullRequestId => Str

The system-generated ID of the pull request. To get this ID, use
ListPullRequests.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePullRequestEvents in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

