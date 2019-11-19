
package Paws::CloudFront::ListPublicKeysResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_PublicKeyList/;
  has PublicKeyList => (is => 'ro', isa => CloudFront_PublicKeyList);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'PublicKeyList');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PublicKeyList' => {
                                    'type' => 'CloudFront_PublicKeyList',
                                    'class' => 'Paws::CloudFront::PublicKeyList'
                                  },
               '_request_id' => {
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

Paws::CloudFront::ListPublicKeysResult

=head1 ATTRIBUTES


=head2 PublicKeyList => CloudFront_PublicKeyList

Returns a list of all public keys that have been added to CloudFront
for this account.




=cut

