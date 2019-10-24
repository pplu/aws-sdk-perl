
package Paws::MediaConnect::UpdateFlowOutputResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConnect::Types qw/MediaConnect_Output/;
  has FlowArn => (is => 'ro', isa => Str);
  has Output => (is => 'ro', isa => MediaConnect_Output);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Output' => {
                             'class' => 'Paws::MediaConnect::Output',
                             'type' => 'MediaConnect_Output'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FlowArn' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'Output' => 'output',
                       'FlowArn' => 'flowArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateFlowOutputResponse

=head1 ATTRIBUTES


=head2 FlowArn => Str

The ARN of the flow that is associated with the updated output.


=head2 Output => MediaConnect_Output




=head2 _request_id => Str


=cut

