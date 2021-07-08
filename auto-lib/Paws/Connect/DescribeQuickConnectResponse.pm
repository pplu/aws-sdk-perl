
package Paws::Connect::DescribeQuickConnectResponse;
  use Moose;
  has QuickConnect => (is => 'ro', isa => 'Paws::Connect::QuickConnect');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeQuickConnectResponse

=head1 ATTRIBUTES


=head2 QuickConnect => L<Paws::Connect::QuickConnect>

Information about the quick connect.


=head2 _request_id => Str


=cut

