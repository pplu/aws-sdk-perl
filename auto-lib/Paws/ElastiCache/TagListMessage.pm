# Generated from callresult_class.tt

package Paws::ElastiCache::TagListMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElastiCache::Types qw/ElastiCache_Tag/;
  has TagList => (is => 'ro', isa => ArrayRef[ElastiCache_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'TagList' => 'Tag'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TagList' => {
                              'type' => 'ArrayRef[ElastiCache_Tag]',
                              'class' => 'Paws::ElastiCache::Tag'
                            }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::TagListMessage

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[ElastiCache_Tag]

A list of cost allocation tags as key-value pairs.


=head2 _request_id => Str


=cut

