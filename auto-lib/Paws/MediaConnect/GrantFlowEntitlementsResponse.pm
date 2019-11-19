
package Paws::MediaConnect::GrantFlowEntitlementsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaConnect::Types qw/MediaConnect_Entitlement/;
  has Entitlements => (is => 'ro', isa => ArrayRef[MediaConnect_Entitlement]);
  has FlowArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Entitlements' => 'entitlements',
                       'FlowArn' => 'flowArn'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FlowArn' => {
                              'type' => 'Str'
                            },
               'Entitlements' => {
                                   'type' => 'ArrayRef[MediaConnect_Entitlement]',
                                   'class' => 'Paws::MediaConnect::Entitlement'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::GrantFlowEntitlementsResponse

=head1 ATTRIBUTES


=head2 Entitlements => ArrayRef[MediaConnect_Entitlement]

The entitlements that were just granted.


=head2 FlowArn => Str

The ARN of the flow that these entitlements were granted to.


=head2 _request_id => Str


=cut

