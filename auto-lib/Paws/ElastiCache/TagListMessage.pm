
package Paws::ElastiCache::TagListMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::Tag]', traits => ['Unwrapped'], xmlname => 'Tag');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::TagListMessage

=head1 ATTRIBUTES

=head2 TagList => ArrayRef[Paws::ElastiCache::Tag]

  

A list of cost allocation tags as a key-value pair.











=cut

