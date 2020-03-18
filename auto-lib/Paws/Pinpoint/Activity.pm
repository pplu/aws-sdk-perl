package Paws::Pinpoint::Activity;
  use Moose;
  has ConditionalSplit => (is => 'ro', isa => 'Paws::Pinpoint::ConditionalSplitActivity');
  has Description => (is => 'ro', isa => 'Str');
  has EMAIL => (is => 'ro', isa => 'Paws::Pinpoint::EmailMessageActivity');
  has Holdout => (is => 'ro', isa => 'Paws::Pinpoint::HoldoutActivity');
  has MultiCondition => (is => 'ro', isa => 'Paws::Pinpoint::MultiConditionalSplitActivity');
  has RandomSplit => (is => 'ro', isa => 'Paws::Pinpoint::RandomSplitActivity');
  has Wait => (is => 'ro', isa => 'Paws::Pinpoint::WaitActivity');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::Activity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::Activity object:

  $service_obj->Method(Att1 => { ConditionalSplit => $value, ..., Wait => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::Activity object:

  $result = $service_obj->Method(...);
  $result->Att1->ConditionalSplit

=head1 DESCRIPTION

Specifies the configuration and other settings for an activity in a
journey.

=head1 ATTRIBUTES


=head2 ConditionalSplit => L<Paws::Pinpoint::ConditionalSplitActivity>

  The settings for a yes/no split activity. This type of activity sends
participants down one of two paths in a journey, based on conditions
that you specify.


=head2 Description => Str

  The custom description of the activity.


=head2 EMAIL => L<Paws::Pinpoint::EmailMessageActivity>

  The settings for an email activity. This type of activity sends an
email message to participants.


=head2 Holdout => L<Paws::Pinpoint::HoldoutActivity>

  The settings for a holdout activity. This type of activity stops a
journey for a specified percentage of participants.


=head2 MultiCondition => L<Paws::Pinpoint::MultiConditionalSplitActivity>

  The settings for a multivariate split activity. This type of activity
sends participants down one of as many as five paths (including a
default I<Else> path) in a journey, based on conditions that you
specify.


=head2 RandomSplit => L<Paws::Pinpoint::RandomSplitActivity>

  The settings for a random split activity. This type of activity
randomly sends specified percentages of participants down one of as
many as five paths in a journey, based on conditions that you specify.


=head2 Wait => L<Paws::Pinpoint::WaitActivity>

  The settings for a wait activity. This type of activity waits for a
certain amount of time or until a specific date and time before moving
participants to the next activity in a journey.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

