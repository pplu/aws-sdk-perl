
package Paws::Snowball::ListCompatibleImagesResult;
  use Moose;
  has CompatibleImages => (is => 'ro', isa => 'ArrayRef[Paws::Snowball::CompatibleImage]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::ListCompatibleImagesResult

=head1 ATTRIBUTES


=head2 CompatibleImages => ArrayRef[L<Paws::Snowball::CompatibleImage>]

A JSON-formatted object that describes a compatible AMI.


=head2 NextToken => Str

Because HTTP requests are stateless, this is the starting point for
your next list of returned images.


=head2 _request_id => Str


=cut

1;