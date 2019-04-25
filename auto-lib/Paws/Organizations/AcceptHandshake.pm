
package Paws::Organizations::AcceptHandshake;
  use Moose;
  has HandshakeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcceptHandshake');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::AcceptHandshakeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::AcceptHandshake - Arguments for method AcceptHandshake on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcceptHandshake on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method AcceptHandshake.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcceptHandshake.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    my $AcceptHandshakeResponse = $organizations->AcceptHandshake(
      HandshakeId => 'MyHandshakeId',

    );

    # Results:
    my $Handshake = $AcceptHandshakeResponse->Handshake;

    # Returns a L<Paws::Organizations::AcceptHandshakeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/AcceptHandshake>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HandshakeId => Str

The unique identifier (ID) of the handshake that you want to accept.

The regex pattern (http://wikipedia.org/wiki/regex) for handshake ID
string requires "h-" followed by from 8 to 32 lower-case letters or
digits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptHandshake in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

