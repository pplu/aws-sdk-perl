
package Paws::MediaConnect::CreateFlowResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConnect::Types qw/MediaConnect_Flow/;
  has Flow => (is => 'ro', isa => MediaConnect_Flow);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Flow' => {
                           'class' => 'Paws::MediaConnect::Flow',
                           'type' => 'MediaConnect_Flow'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Flow' => 'flow'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::CreateFlowResponse

=head1 ATTRIBUTES


=head2 Flow => MediaConnect_Flow




=head2 _request_id => Str


=cut

