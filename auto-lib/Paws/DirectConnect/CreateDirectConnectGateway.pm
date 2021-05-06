
package Paws::DirectConnect::CreateDirectConnectGateway;
  use Moose;
  has AmazonSideAsn => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'amazonSideAsn' );
  has DirectConnectGatewayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'directConnectGatewayName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDirectConnectGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::CreateDirectConnectGatewayResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::CreateDirectConnectGateway - Arguments for method CreateDirectConnectGateway on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDirectConnectGateway on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method CreateDirectConnectGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDirectConnectGateway.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $CreateDirectConnectGatewayResult =
      $directconnect->CreateDirectConnectGateway(
      DirectConnectGatewayName => 'MyDirectConnectGatewayName',
      AmazonSideAsn            => 1,                              # OPTIONAL
      );

    # Results:
    my $DirectConnectGateway =
      $CreateDirectConnectGatewayResult->DirectConnectGateway;

    # Returns a L<Paws::DirectConnect::CreateDirectConnectGatewayResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/CreateDirectConnectGateway>

=head1 ATTRIBUTES


=head2 AmazonSideAsn => Int

The autonomous system number (ASN) for Border Gateway Protocol (BGP) to
be configured on the Amazon side of the connection. The ASN must be in
the private range of 64,512 to 65,534 or 4,200,000,000 to
4,294,967,294. The default is 64512.



=head2 B<REQUIRED> DirectConnectGatewayName => Str

The name of the Direct Connect gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDirectConnectGateway in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

