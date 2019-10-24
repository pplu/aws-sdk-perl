# Generated from callresult_class.tt

package Paws::ElastiCache::CacheParameterGroupDetails;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElastiCache::Types qw/ElastiCache_CacheNodeTypeSpecificParameter ElastiCache_Parameter/;
  has CacheNodeTypeSpecificParameters => (is => 'ro', isa => ArrayRef[ElastiCache_CacheNodeTypeSpecificParameter]);
  has Marker => (is => 'ro', isa => Str);
  has Parameters => (is => 'ro', isa => ArrayRef[ElastiCache_Parameter]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Parameters' => {
                                 'class' => 'Paws::ElastiCache::Parameter',
                                 'type' => 'ArrayRef[ElastiCache_Parameter]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CacheNodeTypeSpecificParameters' => {
                                                      'class' => 'Paws::ElastiCache::CacheNodeTypeSpecificParameter',
                                                      'type' => 'ArrayRef[ElastiCache_CacheNodeTypeSpecificParameter]'
                                                    },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'Parameters' => 'Parameter',
                       'CacheNodeTypeSpecificParameters' => 'CacheNodeTypeSpecificParameter'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CacheParameterGroupDetails

=head1 ATTRIBUTES


=head2 CacheNodeTypeSpecificParameters => ArrayRef[ElastiCache_CacheNodeTypeSpecificParameter]

A list of parameters specific to a particular cache node type. Each
element in the list contains detailed information about one parameter.


=head2 Marker => Str

Provides an identifier to allow retrieval of paginated results.


=head2 Parameters => ArrayRef[ElastiCache_Parameter]

A list of Parameter instances.


=head2 _request_id => Str


=cut

