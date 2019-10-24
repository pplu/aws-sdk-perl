
package Paws::MediaConnect::UpdateFlowEntitlementResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConnect::Types qw/MediaConnect_Entitlement/;
  has Entitlement => (is => 'ro', isa => MediaConnect_Entitlement);
  has FlowArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Entitlement' => {
                                  'class' => 'Paws::MediaConnect::Entitlement',
                                  'type' => 'MediaConnect_Entitlement'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FlowArn' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'Entitlement' => 'entitlement',
                       'FlowArn' => 'flowArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateFlowEntitlementResponse

=head1 ATTRIBUTES


=head2 Entitlement => MediaConnect_Entitlement




=head2 FlowArn => Str

The ARN of the flow that this entitlement was granted on.


=head2 _request_id => Str


=cut

