package Paws::Organizations::HandshakeResource;
  use Moose;
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::Organizations::HandshakeResource]');
  has Type => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::HandshakeResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Organizations::HandshakeResource object:

  $service_obj->Method(Att1 => { Resources => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Organizations::HandshakeResource object:

  $result = $service_obj->Method(...);
  $result->Att1->Resources

=head1 DESCRIPTION

Contains additional data that is needed to process a handshake.

=head1 ATTRIBUTES


=head2 Resources => ArrayRef[L<Paws::Organizations::HandshakeResource>]

  When needed, contains an additional array of C<HandshakeResource>
objects.


=head2 Type => Str

  The type of information being passed, specifying how the value is to be
interpreted by the other party:

=over

=item *

C<ACCOUNT> - Specifies an AWS account ID number.

=item *

C<ORGANIZATION> - Specifies an organization ID number.

=item *

C<EMAIL> - Specifies the email address that is associated with the
account that receives the handshake.

=item *

C<OWNER_EMAIL> - Specifies the email address associated with the master
account. Included as information about an organization.

=item *

C<OWNER_NAME> - Specifies the name associated with the master account.
Included as information about an organization.

=item *

C<NOTES> - Additional text provided by the handshake initiator and
intended for the recipient to read.

=back



=head2 Value => Str

  The information that is passed to the other party in the handshake. The
format of the value string must match the requirements of the specified
type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

