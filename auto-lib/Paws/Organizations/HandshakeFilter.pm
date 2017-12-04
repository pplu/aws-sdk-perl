package Paws::Organizations::HandshakeFilter;
  use Moose;
  has ActionType => (is => 'ro', isa => 'Str');
  has ParentHandshakeId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::HandshakeFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Organizations::HandshakeFilter object:

  $service_obj->Method(Att1 => { ActionType => $value, ..., ParentHandshakeId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Organizations::HandshakeFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionType

=head1 DESCRIPTION

Specifies the criteria that are used to select the handshakes for the
operation.

=head1 ATTRIBUTES


=head2 ActionType => Str

  Specifies the type of handshake action.

If you specify C<ActionType>, you cannot also specify
C<ParentHandshakeId>.


=head2 ParentHandshakeId => Str

  Specifies the parent handshake. Only used for handshake types that are
a child of another type.

If you specify C<ParentHandshakeId>, you cannot also specify
C<ActionType>.

The regex pattern (http://wikipedia.org/wiki/regex) for handshake ID
string requires "h-" followed by from 8 to 32 lower-case letters or
digits.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

