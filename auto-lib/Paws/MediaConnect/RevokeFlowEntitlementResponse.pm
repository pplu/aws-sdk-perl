
package Paws::MediaConnect::RevokeFlowEntitlementResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConnect::Types qw//;
  has EntitlementArn => (is => 'ro', isa => Str);
  has FlowArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EntitlementArn' => {
                                     'type' => 'Str'
                                   },
               'FlowArn' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'EntitlementArn' => 'entitlementArn',
                       'FlowArn' => 'flowArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::RevokeFlowEntitlementResponse

=head1 ATTRIBUTES


=head2 EntitlementArn => Str

The ARN of the entitlement that was revoked.


=head2 FlowArn => Str

The ARN of the flow that the entitlement was revoked from.


=head2 _request_id => Str


=cut

