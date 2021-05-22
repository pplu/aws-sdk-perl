
package Paws::SESv2::GetContactResponse;
  use Moose;
  has AttributesData => (is => 'ro', isa => 'Str');
  has ContactListName => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has EmailAddress => (is => 'ro', isa => 'Str');
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Str');
  has TopicDefaultPreferences => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::TopicPreference]');
  has TopicPreferences => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::TopicPreference]');
  has UnsubscribeAll => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetContactResponse

=head1 ATTRIBUTES


=head2 AttributesData => Str

The attribute data attached to a contact.


=head2 ContactListName => Str

The name of the contact list to which the contact belongs.


=head2 CreatedTimestamp => Str

A timestamp noting when the contact was created.


=head2 EmailAddress => Str

The contact's email addres.


=head2 LastUpdatedTimestamp => Str

A timestamp noting the last time the contact's information was updated.


=head2 TopicDefaultPreferences => ArrayRef[L<Paws::SESv2::TopicPreference>]

The default topic preferences applied to the contact.


=head2 TopicPreferences => ArrayRef[L<Paws::SESv2::TopicPreference>]

The contact's preference for being opted-in to or opted-out of a
topic.E<gt>


=head2 UnsubscribeAll => Bool

A boolean value status noting if the contact is unsubscribed from all
contact list topics.


=head2 _request_id => Str


=cut

