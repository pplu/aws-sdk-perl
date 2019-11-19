
package Paws::XRay::GetEncryptionConfigResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::XRay::Types qw/XRay_EncryptionConfig/;
  has EncryptionConfig => (is => 'ro', isa => XRay_EncryptionConfig);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EncryptionConfig' => {
                                       'type' => 'XRay_EncryptionConfig',
                                       'class' => 'Paws::XRay::EncryptionConfig'
                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetEncryptionConfigResult

=head1 ATTRIBUTES


=head2 EncryptionConfig => XRay_EncryptionConfig

The encryption configuration document.


=head2 _request_id => Str


=cut

