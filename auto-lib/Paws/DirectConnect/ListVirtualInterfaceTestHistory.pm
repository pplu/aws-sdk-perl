
package Paws::DirectConnect::ListVirtualInterfaceTestHistory;
  use Moose;
  has BgpPeers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'bgpPeers' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );
  has TestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testId' );
  has VirtualInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVirtualInterfaceTestHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::ListVirtualInterfaceTestHistoryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::ListVirtualInterfaceTestHistory - Arguments for method ListVirtualInterfaceTestHistory on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVirtualInterfaceTestHistory on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method ListVirtualInterfaceTestHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVirtualInterfaceTestHistory.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $ListVirtualInterfaceTestHistoryResponse =
      $directconnect->ListVirtualInterfaceTestHistory(
      BgpPeers           => [ 'MyBGPPeerId', ... ],          # OPTIONAL
      MaxResults         => 1,                               # OPTIONAL
      NextToken          => 'MyPaginationToken',             # OPTIONAL
      Status             => 'MyFailureTestHistoryStatus',    # OPTIONAL
      TestId             => 'MyTestId',                      # OPTIONAL
      VirtualInterfaceId => 'MyVirtualInterfaceId',          # OPTIONAL
      );

    # Results:
    my $NextToken = $ListVirtualInterfaceTestHistoryResponse->NextToken;
    my $VirtualInterfaceTestHistory =
      $ListVirtualInterfaceTestHistoryResponse->VirtualInterfaceTestHistory;

# Returns a L<Paws::DirectConnect::ListVirtualInterfaceTestHistoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/ListVirtualInterfaceTestHistory>

=head1 ATTRIBUTES


=head2 BgpPeers => ArrayRef[Str|Undef]

The BGP peers that were placed in the DOWN state during the virtual
interface failover test.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.

If C<MaxResults> is given a value larger than 100, only 100 results are
returned.



=head2 NextToken => Str

The token for the next page of results.



=head2 Status => Str

The status of the virtual interface failover test.



=head2 TestId => Str

The ID of the virtual interface failover test.



=head2 VirtualInterfaceId => Str

The ID of the virtual interface that was tested.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVirtualInterfaceTestHistory in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

