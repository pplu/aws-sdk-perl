
package Paws::CloudFront::UpdatePublicKeyResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_PublicKey/;
  has ETag => (is => 'ro', isa => Str);
  has PublicKey => (is => 'ro', isa => CloudFront_PublicKey);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'PublicKey');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ETag' => {
                           'type' => 'Str'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PublicKey' => {
                                'class' => 'Paws::CloudFront::PublicKey',
                                'type' => 'CloudFront_PublicKey'
                              }
             },
  'ParamInHeader' => {
                       'ETag' => 'ETag'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdatePublicKeyResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the update public key result. For example:
C<E2QWRUHAPOMQZL>.



=head2 PublicKey => CloudFront_PublicKey

Return the results of updating the public key.




=cut

