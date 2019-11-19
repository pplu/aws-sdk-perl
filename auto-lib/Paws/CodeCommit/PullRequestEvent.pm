# Generated from default/object.tt
package Paws::CodeCommit::PullRequestEvent;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw/CodeCommit_PullRequestMergedStateChangedEventMetadata CodeCommit_PullRequestStatusChangedEventMetadata CodeCommit_PullRequestSourceReferenceUpdatedEventMetadata CodeCommit_PullRequestCreatedEventMetadata/;
  has ActorArn => (is => 'ro', isa => Str);
  has EventDate => (is => 'ro', isa => Str);
  has PullRequestCreatedEventMetadata => (is => 'ro', isa => CodeCommit_PullRequestCreatedEventMetadata);
  has PullRequestEventType => (is => 'ro', isa => Str);
  has PullRequestId => (is => 'ro', isa => Str);
  has PullRequestMergedStateChangedEventMetadata => (is => 'ro', isa => CodeCommit_PullRequestMergedStateChangedEventMetadata);
  has PullRequestSourceReferenceUpdatedEventMetadata => (is => 'ro', isa => CodeCommit_PullRequestSourceReferenceUpdatedEventMetadata);
  has PullRequestStatusChangedEventMetadata => (is => 'ro', isa => CodeCommit_PullRequestStatusChangedEventMetadata);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PullRequestCreatedEventMetadata' => {
                                                      'type' => 'CodeCommit_PullRequestCreatedEventMetadata',
                                                      'class' => 'Paws::CodeCommit::PullRequestCreatedEventMetadata'
                                                    },
               'PullRequestMergedStateChangedEventMetadata' => {
                                                                 'class' => 'Paws::CodeCommit::PullRequestMergedStateChangedEventMetadata',
                                                                 'type' => 'CodeCommit_PullRequestMergedStateChangedEventMetadata'
                                                               },
               'PullRequestId' => {
                                    'type' => 'Str'
                                  },
               'PullRequestEventType' => {
                                           'type' => 'Str'
                                         },
               'PullRequestStatusChangedEventMetadata' => {
                                                            'type' => 'CodeCommit_PullRequestStatusChangedEventMetadata',
                                                            'class' => 'Paws::CodeCommit::PullRequestStatusChangedEventMetadata'
                                                          },
               'ActorArn' => {
                               'type' => 'Str'
                             },
               'EventDate' => {
                                'type' => 'Str'
                              },
               'PullRequestSourceReferenceUpdatedEventMetadata' => {
                                                                     'class' => 'Paws::CodeCommit::PullRequestSourceReferenceUpdatedEventMetadata',
                                                                     'type' => 'CodeCommit_PullRequestSourceReferenceUpdatedEventMetadata'
                                                                   }
             },
  'NameInRequest' => {
                       'EventDate' => 'eventDate',
                       'ActorArn' => 'actorArn',
                       'PullRequestSourceReferenceUpdatedEventMetadata' => 'pullRequestSourceReferenceUpdatedEventMetadata',
                       'PullRequestStatusChangedEventMetadata' => 'pullRequestStatusChangedEventMetadata',
                       'PullRequestEventType' => 'pullRequestEventType',
                       'PullRequestMergedStateChangedEventMetadata' => 'pullRequestMergedStateChangedEventMetadata',
                       'PullRequestId' => 'pullRequestId',
                       'PullRequestCreatedEventMetadata' => 'pullRequestCreatedEventMetadata'
                     }
}
;
    return $Params_map;
  }


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


=head2 PullRequestCreatedEventMetadata => CodeCommit_PullRequestCreatedEventMetadata

  Information about the source and destination branches for the pull
request.


=head2 PullRequestEventType => Str

  The type of the pull request event, for example a status change event
(PULL_REQUEST_STATUS_CHANGED) or update event
(PULL_REQUEST_SOURCE_REFERENCE_UPDATED).


=head2 PullRequestId => Str

  The system-generated ID of the pull request.


=head2 PullRequestMergedStateChangedEventMetadata => CodeCommit_PullRequestMergedStateChangedEventMetadata

  Information about the change in mergability state for the pull request
event.


=head2 PullRequestSourceReferenceUpdatedEventMetadata => CodeCommit_PullRequestSourceReferenceUpdatedEventMetadata

  Information about the updated source branch for the pull request event.


=head2 PullRequestStatusChangedEventMetadata => CodeCommit_PullRequestStatusChangedEventMetadata

  Information about the change in status for the pull request event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

