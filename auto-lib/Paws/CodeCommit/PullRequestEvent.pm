package Paws::CodeCommit::PullRequestEvent;
  use Moose;
  has ActorArn => (is => 'ro', isa => 'Str', request_name => 'actorArn', traits => ['NameInRequest']);
  has EventDate => (is => 'ro', isa => 'Str', request_name => 'eventDate', traits => ['NameInRequest']);
  has PullRequestCreatedEventMetadata => (is => 'ro', isa => 'Paws::CodeCommit::PullRequestCreatedEventMetadata', request_name => 'pullRequestCreatedEventMetadata', traits => ['NameInRequest']);
  has PullRequestEventType => (is => 'ro', isa => 'Str', request_name => 'pullRequestEventType', traits => ['NameInRequest']);
  has PullRequestId => (is => 'ro', isa => 'Str', request_name => 'pullRequestId', traits => ['NameInRequest']);
  has PullRequestMergedStateChangedEventMetadata => (is => 'ro', isa => 'Paws::CodeCommit::PullRequestMergedStateChangedEventMetadata', request_name => 'pullRequestMergedStateChangedEventMetadata', traits => ['NameInRequest']);
  has PullRequestSourceReferenceUpdatedEventMetadata => (is => 'ro', isa => 'Paws::CodeCommit::PullRequestSourceReferenceUpdatedEventMetadata', request_name => 'pullRequestSourceReferenceUpdatedEventMetadata', traits => ['NameInRequest']);
  has PullRequestStatusChangedEventMetadata => (is => 'ro', isa => 'Paws::CodeCommit::PullRequestStatusChangedEventMetadata', request_name => 'pullRequestStatusChangedEventMetadata', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PullRequestEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::PullRequestEvent object:

  $service_obj->Method(Att1 => { ActorArn => $value, ..., PullRequestStatusChangedEventMetadata => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::PullRequestEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->ActorArn

=head1 DESCRIPTION

Returns information about a pull request event.

=head1 ATTRIBUTES


=head2 ActorArn => Str

  The Amazon Resource Name (ARN) of the user whose actions resulted in
the event. Examples include updating the pull request with additional
commits or changing the status of a pull request.


=head2 EventDate => Str

  The day and time of the pull request event, in timestamp format.


=head2 PullRequestCreatedEventMetadata => L<Paws::CodeCommit::PullRequestCreatedEventMetadata>

  Information about the source and destination branches for the pull
request.


=head2 PullRequestEventType => Str

  The type of the pull request event, for example a status change event
(PULL_REQUEST_STATUS_CHANGED) or update event
(PULL_REQUEST_SOURCE_REFERENCE_UPDATED).


=head2 PullRequestId => Str

  The system-generated ID of the pull request.


=head2 PullRequestMergedStateChangedEventMetadata => L<Paws::CodeCommit::PullRequestMergedStateChangedEventMetadata>

  Information about the change in mergability state for the pull request
event.


=head2 PullRequestSourceReferenceUpdatedEventMetadata => L<Paws::CodeCommit::PullRequestSourceReferenceUpdatedEventMetadata>

  Information about the updated source branch for the pull request event.


=head2 PullRequestStatusChangedEventMetadata => L<Paws::CodeCommit::PullRequestStatusChangedEventMetadata>

  Information about the change in status for the pull request event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

