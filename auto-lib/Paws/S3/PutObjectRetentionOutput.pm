
package Paws::S3::PutObjectRetentionOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw//;
  has RequestCharged => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RequestCharged' => {
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

Paws::S3::PutObjectRetentionOutput

=head1 ATTRIBUTES


=head2 RequestCharged => Str



Valid values are: C<"requester">


=cut

