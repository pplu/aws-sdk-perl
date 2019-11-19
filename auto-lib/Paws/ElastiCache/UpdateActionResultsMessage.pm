# Generated from callresult_class.tt

package Paws::ElastiCache::UpdateActionResultsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElastiCache::Types qw/ElastiCache_ProcessedUpdateAction ElastiCache_UnprocessedUpdateAction/;
  has ProcessedUpdateActions => (is => 'ro', isa => ArrayRef[ElastiCache_ProcessedUpdateAction]);
  has UnprocessedUpdateActions => (is => 'ro', isa => ArrayRef[ElastiCache_UnprocessedUpdateAction]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'UnprocessedUpdateActions' => 'UnprocessedUpdateAction',
                       'ProcessedUpdateActions' => 'ProcessedUpdateAction'
                     },
  'types' => {
               'ProcessedUpdateActions' => {
                                             'type' => 'ArrayRef[ElastiCache_ProcessedUpdateAction]',
                                             'class' => 'Paws::ElastiCache::ProcessedUpdateAction'
                                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UnprocessedUpdateActions' => {
                                               'class' => 'Paws::ElastiCache::UnprocessedUpdateAction',
                                               'type' => 'ArrayRef[ElastiCache_UnprocessedUpdateAction]'
                                             }
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

