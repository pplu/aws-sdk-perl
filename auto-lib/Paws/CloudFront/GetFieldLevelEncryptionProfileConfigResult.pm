
package Paws::CloudFront::GetFieldLevelEncryptionProfileConfigResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_FieldLevelEncryptionProfileConfig/;
  has ETag => (is => 'ro', isa => Str);
  has FieldLevelEncryptionProfileConfig => (is => 'ro', isa => CloudFront_FieldLevelEncryptionProfileConfig);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'FieldLevelEncryptionProfileConfig');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'ETag' => 'ETag'
                     },
  'types' => {
               'ETag' => {
                           'type' => 'Str'
                         },
               'FieldLevelEncryptionProfileConfig' => {
                                                        'type' => 'CloudFront_FieldLevelEncryptionProfileConfig',
                                                        'class' => 'Paws::CloudFront::FieldLevelEncryptionProfileConfig'
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

Paws::CloudFront::GetFieldLevelEncryptionProfileConfigResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the field-level encryption profile configuration
result. For example: C<E2QWRUHAPOMQZL>.



=head2 FieldLevelEncryptionProfileConfig => CloudFront_FieldLevelEncryptionProfileConfig

Return the field-level encryption profile configuration information.




=cut

