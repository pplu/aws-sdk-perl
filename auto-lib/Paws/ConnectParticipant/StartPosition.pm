package Paws::ConnectParticipant::StartPosition;
  use Moose;
  has AbsoluteTime => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has MostRecent => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant::StartPosition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ConnectParticipant::StartPosition object:

  $service_obj->Method(Att1 => { AbsoluteTime => $value, ..., MostRecent => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ConnectParticipant::StartPosition object:

  $result = $service_obj->Method(...);
  $result->Att1->AbsoluteTime

=head1 DESCRIPTION

A filtering option for where to start. For example, if you sent 100
messages, start with message 50.

=head1 ATTRIBUTES


=head2 AbsoluteTime => Str

  The time in ISO format where to start.

It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For
example, 2019-11-08T02:41:28.172Z.


=head2 Id => Str

  The ID of the message or event where to start.


=head2 MostRecent => Int

  The start position of the most recent message where you want to start.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ConnectParticipant>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

