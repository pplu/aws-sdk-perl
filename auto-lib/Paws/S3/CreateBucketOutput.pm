
package Paws::S3::CreateBucketOutput;
  use Moose;
  has Location => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Location');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CreateBucketOutput

=head1 ATTRIBUTES


=head2 Location => Str

Specifies the Region where the bucket will be created. If you are
creating a bucket on the US East (N. Virginia) Region (us-east-1), you
do not need to specify the location.




=cut

