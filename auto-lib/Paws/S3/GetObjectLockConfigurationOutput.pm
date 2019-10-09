
package Paws::S3::GetObjectLockConfigurationOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_ObjectLockConfiguration/;
  has ObjectLockConfiguration => (is => 'ro', isa => S3_ObjectLockConfiguration);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'ObjectLockConfiguration');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ObjectLockConfiguration' => {
                                              'class' => 'Paws::S3::ObjectLockConfiguration',
                                              'type' => 'S3_ObjectLockConfiguration'
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

Paws::S3::GetObjectLockConfigurationOutput

=head1 ATTRIBUTES


=head2 ObjectLockConfiguration => S3_ObjectLockConfiguration

The specified bucket's object lock configuration.




=cut

