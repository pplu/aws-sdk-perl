
package Paws::CloudFront::GetFieldLevelEncryptionProfileResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_FieldLevelEncryptionProfile/;
  has ETag => (is => 'ro', isa => Str);
  has FieldLevelEncryptionProfile => (is => 'ro', isa => CloudFront_FieldLevelEncryptionProfile);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'FieldLevelEncryptionProfile');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'ETag' => 'ETag'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ETag' => {
                           'type' => 'Str'
                         },
               'FieldLevelEncryptionProfile' => {
                                                  'class' => 'Paws::CloudFront::FieldLevelEncryptionProfile',
                                                  'type' => 'CloudFront_FieldLevelEncryptionProfile'
                                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetFieldLevelEncryptionProfileResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the field level encryption profile. For example:
C<E2QWRUHAPOMQZL>.



=head2 FieldLevelEncryptionProfile => CloudFront_FieldLevelEncryptionProfile

Return the field-level encryption profile information.




=cut

