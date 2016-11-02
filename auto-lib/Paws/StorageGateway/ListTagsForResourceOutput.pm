
package Paws::StorageGateway::ListTagsForResourceOutput;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has ResourceARN => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Marker => Str

An opaque string that indicates the position at which to stop returning
the list of tags.


=head2 ResourceARN => Str

he Amazon Resource Name (ARN) of the resource for which you want to
list tags.


=head2 Tags => ArrayRef[L<Paws::StorageGateway::Tag>]

An array that contains the tags for the specified resource.


=head2 _request_id => Str


=cut

1;