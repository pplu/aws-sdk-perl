
package Paws::SQS::ListQueueTagsResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SQS::Types qw/SQS_TagMap/;
  has Tags => (is => 'ro', isa => SQS_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::SQS::TagMap',
                           'type' => 'SQS_TagMap'
                         }
             },
  'NameInRequest' => {
                       'Tags' => 'Tag'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::ListQueueTagsResult

=head1 ATTRIBUTES


=head2 Tags => SQS_TagMap

The list of all tags added to the specified queue.


=head2 _request_id => Str


=cut

