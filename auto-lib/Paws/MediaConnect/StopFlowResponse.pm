
package Paws::MediaConnect::StopFlowResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConnect::Types qw//;
  has FlowArn => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FlowArn' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'FlowArn' => 'flowArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::StopFlowResponse

=head1 ATTRIBUTES


=head2 FlowArn => Str

The ARN of the flow that you stopped.


=head2 Status => Str

The status of the flow when the StopFlow process begins.

Valid values are: C<"STANDBY">, C<"ACTIVE">, C<"UPDATING">, C<"DELETING">, C<"STARTING">, C<"STOPPING">, C<"ERROR">
=head2 _request_id => Str


=cut

