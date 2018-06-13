
package Paws::Organizations::DescribeHandshake;
  use Moose;
  has HandshakeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHandshake');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::DescribeHandshakeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DescribeHandshake - Arguments for method DescribeHandshake on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeHandshake on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method DescribeHandshake.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeHandshake.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    my $DescribeHandshakeResponse = $organizations->DescribeHandshake(
      HandshakeId => 'MyHandshakeId',

    );

    # Results:
    my $Handshake = $DescribeHandshakeResponse->Handshake;

    # Returns a L<Paws::Organizations::DescribeHandshakeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/DescribeHandshake>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HandshakeId => Str

The unique identifier (ID) of the handshake that you want information
about. You can get the ID from the original call to
InviteAccountToOrganization, or from a call to ListHandshakesForAccount
or ListHandshakesForOrganization.

The regex pattern (http://wikipedia.org/wiki/regex) for handshake ID
string requires "h-" followed by from 8 to 32 lower-case letters or
digits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeHandshake in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

