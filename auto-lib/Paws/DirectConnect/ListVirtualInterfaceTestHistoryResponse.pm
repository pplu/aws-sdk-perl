
package Paws::DirectConnect::ListVirtualInterfaceTestHistoryResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has VirtualInterfaceTestHistory => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::VirtualInterfaceTestHistory]', traits => ['NameInRequest'], request_name => 'virtualInterfaceTestHistory' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::ListVirtualInterfaceTestHistoryResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 VirtualInterfaceTestHistory => ArrayRef[L<Paws::DirectConnect::VirtualInterfaceTestHistory>]

The ID of the tested virtual interface.


=head2 _request_id => Str


=cut

1;