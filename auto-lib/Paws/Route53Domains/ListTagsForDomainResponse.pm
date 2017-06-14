
package Paws::Route53Domains::ListTagsForDomainResponse;
  use Moose;
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::Route53Domains::Tag]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::ListTagsForDomainResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TagList => ArrayRef[L<Paws::Route53Domains::Tag>]

A list of the tags that are associated with the specified domain.


=head2 _request_id => Str


=cut

1;