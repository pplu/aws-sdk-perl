
package Paws::CloudFront::GetPublicKeyConfigResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_PublicKeyConfig/;
  has ETag => (is => 'ro', isa => Str);
  has PublicKeyConfig => (is => 'ro', isa => CloudFront_PublicKeyConfig);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'PublicKeyConfig');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PublicKeyConfig' => {
                                      'class' => 'Paws::CloudFront::PublicKeyConfig',
                                      'type' => 'CloudFront_PublicKeyConfig'
                                    },
               'ETag' => {
                           'type' => 'Str'
                         },
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::CloudFront::GetPublicKeyConfigResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the public key configuration. For example:
C<E2QWRUHAPOMQZL>.



=head2 PublicKeyConfig => CloudFront_PublicKeyConfig

Return the result for the public key configuration.




=cut

