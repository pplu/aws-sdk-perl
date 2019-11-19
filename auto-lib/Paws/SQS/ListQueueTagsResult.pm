# Generated from callresult_class.tt

package Paws::SQS::ListQueueTagsResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SQS::Types qw/SQS_TagMap/;
  has Tags => (is => 'ro', isa => SQS_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'Tag'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'SQS_TagMap',
                           'class' => 'Paws::SQS::TagMap'
                         }
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

