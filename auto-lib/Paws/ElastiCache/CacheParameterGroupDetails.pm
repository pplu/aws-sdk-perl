# Generated from callresult_class.tt

package Paws::ElastiCache::CacheParameterGroupDetails;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElastiCache::Types qw/ElastiCache_Parameter ElastiCache_CacheNodeTypeSpecificParameter/;
  has CacheNodeTypeSpecificParameters => (is => 'ro', isa => ArrayRef[ElastiCache_CacheNodeTypeSpecificParameter]);
  has Marker => (is => 'ro', isa => Str);
  has Parameters => (is => 'ro', isa => ArrayRef[ElastiCache_Parameter]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Parameters' => 'Parameter',
                       'CacheNodeTypeSpecificParameters' => 'CacheNodeTypeSpecificParameter'
                     },
  'types' => {
               'Parameters' => {
                                 'type' => 'ArrayRef[ElastiCache_Parameter]',
                                 'class' => 'Paws::ElastiCache::Parameter'
                               },
               'Marker' => {
                             'type' => 'Str'
                           },
               'CacheNodeTypeSpecificParameters' => {
                                                      'type' => 'ArrayRef[ElastiCache_CacheNodeTypeSpecificParameter]',
                                                      'class' => 'Paws::ElastiCache::CacheNodeTypeSpecificParameter'
                                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
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

