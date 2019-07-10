
package Paws::MediaPackage::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::MediaPackage::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::MediaPackage::__mapOf__string>




=head2 _request_id => Str


=cut

