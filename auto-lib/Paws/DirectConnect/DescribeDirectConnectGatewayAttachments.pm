
package Paws::DirectConnect::DescribeDirectConnectGatewayAttachments;
  use Moose;
  has DirectConnectGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'directConnectGatewayId' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has VirtualInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDirectConnectGatewayAttachments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::DescribeDirectConnectGatewayAttachmentsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeDirectConnectGatewayAttachments - Arguments for method DescribeDirectConnectGatewayAttachments on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDirectConnectGatewayAttachments on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method DescribeDirectConnectGatewayAttachments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDirectConnectGatewayAttachments.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $DescribeDirectConnectGatewayAttachmentsResult =
      $directconnect->DescribeDirectConnectGatewayAttachments(
      DirectConnectGatewayId => 'MyDirectConnectGatewayId',    # OPTIONAL
      MaxResults             => 1,                             # OPTIONAL
      NextToken              => 'MyPaginationToken',           # OPTIONAL
      VirtualInterfaceId     => 'MyVirtualInterfaceId',        # OPTIONAL
      );

    # Results:
    my $DirectConnectGatewayAttachments =
      $DescribeDirectConnectGatewayAttachmentsResult
      ->DirectConnectGatewayAttachments;
    my $NextToken = $DescribeDirectConnectGatewayAttachmentsResult->NextToken;

# Returns a L<Paws::DirectConnect::DescribeDirectConnectGatewayAttachmentsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/DescribeDirectConnectGatewayAttachments>

=head1 ATTRIBUTES


=head2 DirectConnectGatewayId => Str

The ID of the Direct Connect gateway.



=head2 MaxResults => Int

The maximum number of attachments to return per page.



=head2 NextToken => Str

The token provided in the previous call to retrieve the next page.



=head2 VirtualInterfaceId => Str

The ID of the virtual interface.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDirectConnectGatewayAttachments in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

