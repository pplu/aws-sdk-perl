
package Paws::DirectConnect::AssociateMacSecKey;
  use Moose;
  has Cak => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cak' );
  has Ckn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ckn' );
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' , required => 1);
  has SecretARN => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'secretARN' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateMacSecKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::AssociateMacSecKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::AssociateMacSecKey - Arguments for method AssociateMacSecKey on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateMacSecKey on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method AssociateMacSecKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateMacSecKey.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $AssociateMacSecKeyResponse = $directconnect->AssociateMacSecKey(
      ConnectionId => 'MyConnectionId',
      Cak          => 'MyCak',            # OPTIONAL
      Ckn          => 'MyCkn',            # OPTIONAL
      SecretARN    => 'MySecretARN',      # OPTIONAL
    );

    # Results:
    my $ConnectionId = $AssociateMacSecKeyResponse->ConnectionId;
    my $MacSecKeys   = $AssociateMacSecKeyResponse->MacSecKeys;

    # Returns a L<Paws::DirectConnect::AssociateMacSecKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/AssociateMacSecKey>

=head1 ATTRIBUTES


=head2 Cak => Str

The MAC Security (MACsec) CAK to associate with the dedicated
connection.

You can create the CKN/CAK pair using an industry standard tool.

The valid values are 64 hexadecimal characters (0-9, A-E).

If you use this request parameter, you must use the C<ckn> request
parameter and not use the C<secretARN> request parameter.



=head2 Ckn => Str

The MAC Security (MACsec) CKN to associate with the dedicated
connection.

You can create the CKN/CAK pair using an industry standard tool.

The valid values are 64 hexadecimal characters (0-9, A-E).

If you use this request parameter, you must use the C<cak> request
parameter and not use the C<secretARN> request parameter.



=head2 B<REQUIRED> ConnectionId => Str

The ID of the dedicated connection (dxcon-xxxx), or the ID of the LAG
(dxlag-xxxx).

You can use DescribeConnections or DescribeLags to retrieve connection
ID.



=head2 SecretARN => Str

The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key
to associate with the dedicated connection.

You can use DescribeConnections or DescribeLags to retrieve the MAC
Security (MACsec) secret key.

If you use this request parameter, you do not use the C<ckn> and C<cak>
request parameters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateMacSecKey in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

