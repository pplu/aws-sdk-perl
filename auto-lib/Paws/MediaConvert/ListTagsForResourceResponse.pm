
package Paws::MediaConvert::ListTagsForResourceResponse;
  use Moose;
  has ResourceTags => (is => 'ro', isa => 'Paws::MediaConvert::ResourceTags', traits => ['NameInRequest'], request_name => 'resourceTags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 ResourceTags => L<Paws::MediaConvert::ResourceTags>




=head2 _request_id => Str


=cut

