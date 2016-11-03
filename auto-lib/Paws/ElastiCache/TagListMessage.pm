
package Paws::ElastiCache::TagListMessage;
  use Moose;
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::Tag]', request_name => 'Tag', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::TagListMessage

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[L<Paws::ElastiCache::Tag>]

A list of cost allocation tags as key-value pairs.




=cut

