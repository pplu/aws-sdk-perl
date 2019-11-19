
package Paws::S3::GetObjectLockConfigurationOutput;
  use Moose;
  has ObjectLockConfiguration => (is => 'ro', isa => 'Paws::S3::ObjectLockConfiguration');

  use MooseX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'ObjectLockConfiguration');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetObjectLockConfigurationOutput

=head1 ATTRIBUTES


=head2 ObjectLockConfiguration => L<Paws::S3::ObjectLockConfiguration>

The specified bucket's Object Lock configuration.




=cut

