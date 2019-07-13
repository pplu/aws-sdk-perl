
package Paws::MediaConnect::CreateFlowResponse;
  use Moose;
  has Flow => (is => 'ro', isa => 'Paws::MediaConnect::Flow', traits => ['NameInRequest'], request_name => 'flow');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::CreateFlowResponse

=head1 ATTRIBUTES


=head2 Flow => L<Paws::MediaConnect::Flow>




=head2 _request_id => Str


=cut

