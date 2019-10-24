# Generated from callresult_class.tt

package Paws::ElastiCache::ServiceUpdatesMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElastiCache::Types qw/ElastiCache_ServiceUpdate/;
  has Marker => (is => 'ro', isa => Str);
  has ServiceUpdates => (is => 'ro', isa => ArrayRef[ElastiCache_ServiceUpdate]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceUpdates' => {
                                     'class' => 'Paws::ElastiCache::ServiceUpdate',
                                     'type' => 'ArrayRef[ElastiCache_ServiceUpdate]'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'ServiceUpdates' => 'ServiceUpdate'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ServiceUpdatesMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.


=head2 ServiceUpdates => ArrayRef[ElastiCache_ServiceUpdate]

A list of service updates


=head2 _request_id => Str


=cut

