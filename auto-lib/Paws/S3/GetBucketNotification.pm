
package Paws::S3::GetBucketNotification {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketNotification');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetBucketNotificationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetBucketNotificationResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketNotificationOutput

=head1 ATTRIBUTES

=head2 B<REQUIRED> Bucket => Str

  


=cut

