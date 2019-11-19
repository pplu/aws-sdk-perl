
package Paws::CloudFront::CreateFieldLevelEncryptionProfileResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_FieldLevelEncryptionProfile/;
  has ETag => (is => 'ro', isa => Str);
  has FieldLevelEncryptionProfile => (is => 'ro', isa => CloudFront_FieldLevelEncryptionProfile);
  has Location => (is => 'ro', isa => Str);

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
               'Location' => {
                               'type' => 'Str'
                             },
               'FieldLevelEncryptionProfile' => {
                                                  'type' => 'CloudFront_FieldLevelEncryptionProfile',
                                                  'class' => 'Paws::CloudFront::FieldLevelEncryptionProfile'
                                                }
             },
  'ParamInHeader' => {
                       'ETag' => 'ETag',
                       'Location' => 'Location'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateFieldLevelEncryptionProfileResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the field level encryption profile. For example:
C<E2QWRUHAPOMQZL>.



=head2 FieldLevelEncryptionProfile => CloudFront_FieldLevelEncryptionProfile

Returned when you create a new field-level encryption profile.



=head2 Location => Str

The fully qualified URI of the new profile resource just created. For
example:
C<https://cloudfront.amazonaws.com/2010-11-01/field-level-encryption-profile/EDFDVBD632BHDS5>.




=cut

