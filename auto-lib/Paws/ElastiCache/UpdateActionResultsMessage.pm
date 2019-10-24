# Generated from callresult_class.tt

package Paws::ElastiCache::UpdateActionResultsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElastiCache::Types qw/ElastiCache_UnprocessedUpdateAction ElastiCache_ProcessedUpdateAction/;
  has ProcessedUpdateActions => (is => 'ro', isa => ArrayRef[ElastiCache_ProcessedUpdateAction]);
  has UnprocessedUpdateActions => (is => 'ro', isa => ArrayRef[ElastiCache_UnprocessedUpdateAction]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UnprocessedUpdateActions' => {
                                               'class' => 'Paws::ElastiCache::UnprocessedUpdateAction',
                                               'type' => 'ArrayRef[ElastiCache_UnprocessedUpdateAction]'
                                             },
               'ProcessedUpdateActions' => {
                                             'class' => 'Paws::ElastiCache::ProcessedUpdateAction',
                                             'type' => 'ArrayRef[ElastiCache_ProcessedUpdateAction]'
                                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'UnprocessedUpdateActions' => 'UnprocessedUpdateAction',
                       'ProcessedUpdateActions' => 'ProcessedUpdateAction'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::UpdateActionResultsMessage

=head1 ATTRIBUTES


=head2 ProcessedUpdateActions => ArrayRef[ElastiCache_ProcessedUpdateAction]

Update actions that have been processed successfully


=head2 UnprocessedUpdateActions => ArrayRef[ElastiCache_UnprocessedUpdateAction]

Update actions that haven't been processed successfully


=head2 _request_id => Str


=cut

