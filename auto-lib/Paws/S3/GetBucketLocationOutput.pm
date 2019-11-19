
package Paws::S3::GetBucketLocationOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw//;
  has LocationConstraint => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LocationConstraint' => {
                                         'type' => 'Str'
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

Paws::S3::GetBucketLocationOutput

=head1 ATTRIBUTES


=head2 LocationConstraint => Str

Specifies the region where the bucket resides. For a list of all the
Amazon S3 supported location constraints by region, see Regions and
Endpoints
(https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region).

Valid values are: C<"EU">, C<"eu-west-1">, C<"us-west-1">, C<"us-west-2">, C<"ap-south-1">, C<"ap-southeast-1">, C<"ap-southeast-2">, C<"ap-northeast-1">, C<"sa-east-1">, C<"cn-north-1">, C<"eu-central-1">


=cut

