
package Paws::S3::GetObjectRetentionOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_ObjectLockRetention/;
  has Retention => (is => 'ro', isa => S3_ObjectLockRetention);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'Retention');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Retention' => {
                                'type' => 'S3_ObjectLockRetention',
                                'class' => 'Paws::S3::ObjectLockRetention'
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

Paws::S3::GetObjectRetentionOutput

=head1 ATTRIBUTES


=head2 Retention => S3_ObjectLockRetention

The container element for an object's retention settings.




=cut

