package Paws::ConnectParticipant::Item;
  use Moose;
  has AbsoluteTime => (is => 'ro', isa => 'Str');
  has Content => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has ParticipantId => (is => 'ro', isa => 'Str');
  has ParticipantRole => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant::Item

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ConnectParticipant::Item object:

  $service_obj->Method(Att1 => { AbsoluteTime => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ConnectParticipant::Item object:

  $result = $service_obj->Method(...);
  $result->Att1->AbsoluteTime

=head1 DESCRIPTION

An item - message or event - that has been sent.

=head1 ATTRIBUTES


=head2 AbsoluteTime => Str

  The time when the message or event was sent.

It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For
example, 2019-11-08T02:41:28.172Z.


=head2 Content => Str

  The content of the message or event.


=head2 ContentType => Str

  The type of content of the item.


=head2 DisplayName => Str

  The chat display name of the sender.


=head2 Id => Str

  The ID of the item.


=head2 ParticipantId => Str

  The ID of the sender in the session.


=head2 ParticipantRole => Str

  The role of the sender. For example, is it a customer, agent, or
system.


=head2 Type => Str

  Type of the item: message or event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ConnectParticipant>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

