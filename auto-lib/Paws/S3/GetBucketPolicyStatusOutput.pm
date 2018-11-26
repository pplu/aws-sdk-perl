
package Paws::S3::GetBucketPolicyStatusOutput;
  use Moose;
  has PolicyStatus => (is => 'ro', isa => 'Paws::S3::PolicyStatus');

  use MooseX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'PolicyStatus');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketPolicyStatusOutput

=head1 ATTRIBUTES


=head2 PolicyStatus => L<Paws::S3::PolicyStatus>

The policy status for the specified bucket.




=cut

