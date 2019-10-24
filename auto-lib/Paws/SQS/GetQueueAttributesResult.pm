# Generated from callresult_class.tt

package Paws::SQS::GetQueueAttributesResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SQS::Types qw/SQS_QueueAttributeMap/;
  has Attributes => (is => 'ro', isa => SQS_QueueAttributeMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'class' => 'Paws::SQS::QueueAttributeMap',
                                 'type' => 'SQS_QueueAttributeMap'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Attributes' => 'Attribute'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::GetQueueAttributesResult

=head1 ATTRIBUTES


=head2 Attributes => SQS_QueueAttributeMap

A map of attributes to their respective values.


=head2 _request_id => Str


=cut

