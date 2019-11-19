
package Paws::MediaConnect::StartFlowResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConnect::Types qw//;
  has FlowArn => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Status' => 'status',
                       'FlowArn' => 'flowArn'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'FlowArn' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::StartFlowResponse

=head1 ATTRIBUTES


=head2 FlowArn => Str

The ARN of the flow that you started.


=head2 Status => Str

The status of the flow when the StartFlow process begins.

Valid values are: C<"STANDBY">, C<"ACTIVE">, C<"UPDATING">, C<"DELETING">, C<"STARTING">, C<"STOPPING">, C<"ERROR">
=head2 _request_id => Str


=cut

