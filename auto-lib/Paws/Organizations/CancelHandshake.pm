
package Paws::Organizations::CancelHandshake;
  use Moose;
  has HandshakeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelHandshake');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::CancelHandshakeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::CancelHandshake - Arguments for method CancelHandshake on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelHandshake on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method CancelHandshake.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelHandshake.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    # To cancel a handshake sent to a member account
    # Bill previously sent an invitation to Susan's account to join his
    # organization. He changes his mind and decides to cancel the invitation
    # before Susan accepts it. The following example shows Bill's cancellation:

    my $CancelHandshakeResponse = $organizations->CancelHandshake(
      'HandshakeId' => 'h-examplehandshakeid111' );

    # Results:
    my $Handshake = $CancelHandshakeResponse->Handshake;

    # Returns a L<Paws::Organizations::CancelHandshakeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/CancelHandshake>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HandshakeId => Str

The unique identifier (ID) of the handshake that you want to cancel.
You can get the ID from the ListHandshakesForOrganization operation.

The regex pattern (http://wikipedia.org/wiki/regex) for handshake ID
string requires "h-" followed by from 8 to 32 lowercase letters or
digits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelHandshake in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

