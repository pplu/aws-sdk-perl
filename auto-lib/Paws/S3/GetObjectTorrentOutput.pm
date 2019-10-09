
package Paws::S3::GetObjectTorrentOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw//;
  has Body => (is => 'ro', isa => Str);
  has RequestCharged => (is => 'ro', isa => Str);

  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RequestCharged' => {
                                     'type' => 'Str'
                                   },
               'Body' => {
                           'type' => 'Str'
                         }
             },
  'ParamInHeader' => {
                       'RequestCharged' => 'x-amz-request-charged'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetObjectTorrentOutput

=head1 ATTRIBUTES


=head2 Body => Str





=head2 RequestCharged => Str



Valid values are: C<"requester">


=cut

