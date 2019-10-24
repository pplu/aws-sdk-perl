
package Paws::MediaConnect::UpdateFlowSourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConnect::Types qw/MediaConnect_Source/;
  has FlowArn => (is => 'ro', isa => Str);
  has Source => (is => 'ro', isa => MediaConnect_Source);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Source' => {
                             'class' => 'Paws::MediaConnect::Source',
                             'type' => 'MediaConnect_Source'
                           },
               'FlowArn' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'Source' => 'source',
                       'FlowArn' => 'flowArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateFlowSourceResponse

=head1 ATTRIBUTES


=head2 FlowArn => Str

The ARN of the flow that you want to update.


=head2 Source => MediaConnect_Source

The settings for the source of the flow.


=head2 _request_id => Str


=cut

