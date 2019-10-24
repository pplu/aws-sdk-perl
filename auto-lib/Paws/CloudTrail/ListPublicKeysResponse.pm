# Generated from json/callresult_class.tt

package Paws::CloudTrail::ListPublicKeysResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudTrail::Types qw/CloudTrail_PublicKey/;
  has NextToken => (is => 'ro', isa => Str);
  has PublicKeyList => (is => 'ro', isa => ArrayRef[CloudTrail_PublicKey]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PublicKeyList' => {
                                    'class' => 'Paws::CloudTrail::PublicKey',
                                    'type' => 'ArrayRef[CloudTrail_PublicKey]'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListPublicKeysResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Reserved for future use.


=head2 PublicKeyList => ArrayRef[CloudTrail_PublicKey]

Contains an array of PublicKey objects.

The returned public keys may have validity time ranges that overlap.


=head2 _request_id => Str


=cut

1;