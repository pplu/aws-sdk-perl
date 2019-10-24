
package Paws::MediaConnect::AddFlowOutputsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaConnect::Types qw/MediaConnect_Output/;
  has FlowArn => (is => 'ro', isa => Str);
  has Outputs => (is => 'ro', isa => ArrayRef[MediaConnect_Output]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Outputs' => {
                              'class' => 'Paws::MediaConnect::Output',
                              'type' => 'ArrayRef[MediaConnect_Output]'
                            },
               'FlowArn' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'Outputs' => 'outputs',
                       'FlowArn' => 'flowArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::AddFlowOutputsResponse

=head1 ATTRIBUTES


=head2 FlowArn => Str

The ARN of the flow that these outputs were added to.


=head2 Outputs => ArrayRef[MediaConnect_Output]

The details of the newly added outputs.


=head2 _request_id => Str


=cut

