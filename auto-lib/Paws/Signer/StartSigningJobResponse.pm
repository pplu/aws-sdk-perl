
package Paws::Signer::StartSigningJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Signer::Types qw//;
  has JobId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'JobId' => 'jobId'
                     },
  'types' => {
               'JobId' => {
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

Paws::Signer::StartSigningJobResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The ID of your signing job.


=head2 _request_id => Str


=cut

