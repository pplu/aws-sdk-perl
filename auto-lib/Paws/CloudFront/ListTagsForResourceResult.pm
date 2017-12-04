
package Paws::CloudFront::ListTagsForResourceResult;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::CloudFront::Tags', required => 1);

  use MooseX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'Tags');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListTagsForResourceResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => L<Paws::CloudFront::Tags>

A complex type that contains zero or more C<Tag> elements.




=cut

