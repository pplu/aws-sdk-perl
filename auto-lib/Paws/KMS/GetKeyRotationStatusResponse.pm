# Generated from json/callresult_class.tt

package Paws::KMS::GetKeyRotationStatusResponse;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::KMS::Types qw//;
  has KeyRotationEnabled => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'KeyRotationEnabled' => {
                                         'type' => 'Bool'
                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KMS::GetKeyRotationStatusResponse

=head1 ATTRIBUTES


=head2 KeyRotationEnabled => Bool

A Boolean value that specifies whether key rotation is enabled.


=head2 _request_id => Str


=cut

1;