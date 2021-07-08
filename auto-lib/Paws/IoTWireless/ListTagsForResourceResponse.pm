
package Paws::IoTWireless::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::IoTWireless::Tag>]

The tags to attach to the specified resource. Tags are metadata that
you can use to manage a resource.


=head2 _request_id => Str


=cut

