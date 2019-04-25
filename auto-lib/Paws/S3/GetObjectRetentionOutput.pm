
package Paws::S3::GetObjectRetentionOutput;
  use Moose;
  has Retention => (is => 'ro', isa => 'Paws::S3::ObjectLockRetention');

  use MooseX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'Retention');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetObjectRetentionOutput

=head1 ATTRIBUTES


=head2 Retention => L<Paws::S3::ObjectLockRetention>

The container element for an object's retention settings.




=cut

