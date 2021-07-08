
package Paws::Connect::DescribeContactFlowResponse;
  use Moose;
  has ContactFlow => (is => 'ro', isa => 'Paws::Connect::ContactFlow');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeContactFlowResponse

=head1 ATTRIBUTES


=head2 ContactFlow => L<Paws::Connect::ContactFlow>

Information about the contact flow.


=head2 _request_id => Str


=cut

