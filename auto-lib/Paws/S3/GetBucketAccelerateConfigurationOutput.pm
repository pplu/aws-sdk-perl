
package Paws::S3::GetBucketAccelerateConfigurationOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw//;
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
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

Paws::S3::GetBucketAccelerateConfigurationOutput

=head1 ATTRIBUTES


=head2 Status => Str

The accelerate configuration of the bucket.

Valid values are: C<"Enabled">, C<"Suspended">


=cut

