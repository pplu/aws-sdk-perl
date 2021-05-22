
package Paws::SESv2::GetContactListResponse;
  use Moose;
  has ContactListName => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::Tag]');
  has Topics => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::Topic]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetContactListResponse

=head1 ATTRIBUTES


=head2 ContactListName => Str

The name of the contact list.


=head2 CreatedTimestamp => Str

A timestamp noting when the contact list was created.


=head2 Description => Str

A description of what the contact list is about.


=head2 LastUpdatedTimestamp => Str

A timestamp noting the last time the contact list was updated.


=head2 Tags => ArrayRef[L<Paws::SESv2::Tag>]

The tags associated with a contact list.


=head2 Topics => ArrayRef[L<Paws::SESv2::Topic>]

An interest group, theme, or label within a list. A contact list can
have multiple topics.


=head2 _request_id => Str


=cut

