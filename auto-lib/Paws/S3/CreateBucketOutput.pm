
package Paws::S3::CreateBucketOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw//;
  has Location => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Location' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'ParamInHeader' => {
                       'Location' => 'Location'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CreateBucketOutput

=head1 ATTRIBUTES


=head2 Location => Str

Specifies the region where the bucket will be created. If you are
creating a bucket on the US East (N. Virginia) region (us-east-1), you
do not need to specify the location.




=cut

