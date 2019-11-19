
package Paws::MediaConnect::DescribeFlowResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConnect::Types qw/MediaConnect_Flow MediaConnect_Messages/;
  has Flow => (is => 'ro', isa => MediaConnect_Flow);
  has Messages => (is => 'ro', isa => MediaConnect_Messages);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Messages' => 'messages',
                       'Flow' => 'flow'
                     },
  'types' => {
               'Flow' => {
                           'class' => 'Paws::MediaConnect::Flow',
                           'type' => 'MediaConnect_Flow'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Messages' => {
                               'type' => 'MediaConnect_Messages',
                               'class' => 'Paws::MediaConnect::Messages'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::DescribeFlowResponse

=head1 ATTRIBUTES


=head2 Flow => MediaConnect_Flow




=head2 Messages => MediaConnect_Messages




=head2 _request_id => Str


=cut

