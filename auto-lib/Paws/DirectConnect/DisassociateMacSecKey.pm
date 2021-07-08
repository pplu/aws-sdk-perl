
package Paws::DirectConnect::DisassociateMacSecKey;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' , required => 1);
  has SecretARN => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'secretARN' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateMacSecKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::DisassociateMacSecKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DisassociateMacSecKey - Arguments for method DisassociateMacSecKey on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateMacSecKey on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method DisassociateMacSecKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateMacSecKey.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $DisassociateMacSecKeyResponse = $directconnect->DisassociateMacSecKey(
      ConnectionId => 'MyConnectionId',
      SecretARN    => 'MySecretARN',

    );

    # Results:
    my $ConnectionId = $DisassociateMacSecKeyResponse->ConnectionId;
    my $MacSecKeys   = $DisassociateMacSecKeyResponse->MacSecKeys;

    # Returns a L<Paws::DirectConnect::DisassociateMacSecKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/DisassociateMacSecKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionId => Str

The ID of the dedicated connection (dxcon-xxxx), or the ID of the LAG
(dxlag-xxxx).

You can use DescribeConnections or DescribeLags to retrieve connection
ID.



=head2 B<REQUIRED> SecretARN => Str

The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key.

You can use DescribeConnections to retrieve the ARN of the MAC Security
(MACsec) secret key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateMacSecKey in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

