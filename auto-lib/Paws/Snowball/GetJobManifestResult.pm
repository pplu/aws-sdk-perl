# Generated from json/callresult_class.tt

package Paws::Snowball::GetJobManifestResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Snowball::Types qw//;
  has ManifestURI => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ManifestURI' => {
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


### main pod documentation begin ###

=head1 NAME

Paws::Snowball::GetJobManifestResult

=head1 ATTRIBUTES


=head2 ManifestURI => Str

The Amazon S3 presigned URL for the manifest file associated with the
specified C<JobId> value.


=head2 _request_id => Str


=cut

1;