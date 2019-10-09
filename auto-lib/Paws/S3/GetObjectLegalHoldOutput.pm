
package Paws::S3::GetObjectLegalHoldOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_ObjectLockLegalHold/;
  has LegalHold => (is => 'ro', isa => S3_ObjectLockLegalHold);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'LegalHold');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LegalHold' => {
                                'class' => 'Paws::S3::ObjectLockLegalHold',
                                'type' => 'S3_ObjectLockLegalHold'
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

Paws::S3::GetObjectLegalHoldOutput

=head1 ATTRIBUTES


=head2 LegalHold => S3_ObjectLockLegalHold

The current Legal Hold status for the specified object.




=cut

