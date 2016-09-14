
package Paws::CloudFront::ListTagsForResourceResult;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::CloudFront::Tags', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListTagsForResourceResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => L<Paws::CloudFront::Tags>

A complex type that contains zero or more Tag elements.




=cut

