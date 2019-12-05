
package Paws::ImageBuilder::GetComponentResponse;
  use Moose;
  has Component => (is => 'ro', isa => 'Paws::ImageBuilder::Component', traits => ['NameInRequest'], request_name => 'component');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::GetComponentResponse

=head1 ATTRIBUTES


=head2 Component => L<Paws::ImageBuilder::Component>

The component object associated with the specified ARN.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

