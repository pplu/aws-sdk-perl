
package Paws::IoTSecureTunneling::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTSecureTunneling::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTSecureTunneling::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::IoTSecureTunneling::Tag>]

The tags for the specified resource.


=head2 _request_id => Str


=cut

1;