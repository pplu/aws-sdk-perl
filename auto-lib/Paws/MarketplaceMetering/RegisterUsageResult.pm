# Generated from json/callresult_class.tt

package Paws::MarketplaceMetering::RegisterUsageResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MarketplaceMetering::Types qw//;
  has PublicKeyRotationTimestamp => (is => 'ro', isa => Str);
  has Signature => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Signature' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PublicKeyRotationTimestamp' => {
                                                 'type' => 'Str'
                                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceMetering::RegisterUsageResult

=head1 ATTRIBUTES


=head2 PublicKeyRotationTimestamp => Str

(Optional) Only included when public key version has expired


=head2 Signature => Str

JWT Token


=head2 _request_id => Str


=cut

1;