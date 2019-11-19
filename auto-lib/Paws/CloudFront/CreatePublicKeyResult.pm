
package Paws::CloudFront::CreatePublicKeyResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_PublicKey/;
  has ETag => (is => 'ro', isa => Str);
  has Location => (is => 'ro', isa => Str);
  has PublicKey => (is => 'ro', isa => CloudFront_PublicKey);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'PublicKey');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'ETag' => 'ETag',
                       'Location' => 'Location'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Location' => {
                               'type' => 'Str'
                             },
               'ETag' => {
                           'type' => 'Str'
                         },
               'PublicKey' => {
                                'type' => 'CloudFront_PublicKey',
                                'class' => 'Paws::CloudFront::PublicKey'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreatePublicKeyResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the public key. For example: C<E2QWRUHAPOMQZL>.



=head2 Location => Str

The fully qualified URI of the new public key resource just created.
For example:
C<https://cloudfront.amazonaws.com/2010-11-01/cloudfront-public-key/EDFDVBD632BHDS5>.



=head2 PublicKey => CloudFront_PublicKey

Returned when you add a public key.




=cut

