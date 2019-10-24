
package Paws::CloudFront::UpdateFieldLevelEncryptionProfileResult;
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
  'types' => {
               'FieldLevelEncryptionProfile' => {
                                                  'class' => 'Paws::CloudFront::FieldLevelEncryptionProfile',
                                                  'type' => 'CloudFront_FieldLevelEncryptionProfile'
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

Paws::CloudFront::UpdateFieldLevelEncryptionProfileResult

=head1 ATTRIBUTES


=head2 ETag => Str

The result of the field-level encryption profile request.



=head2 FieldLevelEncryptionProfile => CloudFront_FieldLevelEncryptionProfile

Return the results of updating the profile.




=cut

