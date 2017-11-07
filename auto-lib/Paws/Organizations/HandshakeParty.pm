package Paws::Organizations::HandshakeParty;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::HandshakeParty

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Organizations::HandshakeParty object:

  $service_obj->Method(Att1 => { Id => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Organizations::HandshakeParty object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Identifies a participant in a handshake.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

  The unique identifier (ID) for the party.

The regex pattern (http://wikipedia.org/wiki/regex) for handshake ID
string requires "h-" followed by from 8 to 32 lower-case letters or
digits.


=head2 B<REQUIRED> Type => Str

  The type of party.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

