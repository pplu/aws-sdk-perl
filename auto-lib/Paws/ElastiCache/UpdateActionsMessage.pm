# Generated from callresult_class.tt

package Paws::ElastiCache::UpdateActionsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElastiCache::Types qw/ElastiCache_UpdateAction/;
  has Marker => (is => 'ro', isa => Str);
  has UpdateActions => (is => 'ro', isa => ArrayRef[ElastiCache_UpdateAction]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UpdateActions' => {
                                    'class' => 'Paws::ElastiCache::UpdateAction',
                                    'type' => 'ArrayRef[ElastiCache_UpdateAction]'
                                  },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'UpdateActions' => 'UpdateAction'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::UpdateActionsMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.


=head2 UpdateActions => ArrayRef[ElastiCache_UpdateAction]

Returns a list of update actions


=head2 _request_id => Str


=cut

