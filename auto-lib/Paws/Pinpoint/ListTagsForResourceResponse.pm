
package Paws::Pinpoint::ListTagsForResourceResponse;
  use Moose;
  has TagsModel => (is => 'ro', isa => 'Paws::Pinpoint::TagsModel', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'TagsModel');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TagsModel => L<Paws::Pinpoint::TagsModel>




=head2 _request_id => Str


=cut

