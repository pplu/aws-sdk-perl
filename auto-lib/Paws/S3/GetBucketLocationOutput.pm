
package Paws::S3::GetBucketLocationOutput;
  use Moose;
  has LocationConstraint => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketLocationOutput

=head1 ATTRIBUTES


=head2 LocationConstraint => Str



Valid values are: C<"EU">, C<"eu-west-1">, C<"us-west-1">, C<"us-west-2">, C<"ap-south-1">, C<"ap-southeast-1">, C<"ap-southeast-2">, C<"ap-northeast-1">, C<"sa-east-1">, C<"cn-north-1">, C<"eu-central-1">


=cut

