
package Paws::S3::GetBucketCorsOutput;
  use Moose;
  has CORSRules => (is => 'ro', isa => 'ArrayRef[Paws::S3::CORSRule]', traits => ['NameInRequest'], request_name => 'CORSRule');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketCorsOutput

=head1 ATTRIBUTES


=head2 CORSRules => ArrayRef[L<Paws::S3::CORSRule>]






=cut

