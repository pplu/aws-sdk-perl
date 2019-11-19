
package Paws::S3Control::CreateJobResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3Control::Types qw//;
  has JobId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
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

Paws::S3Control::CreateJobResult

=head1 ATTRIBUTES


=head2 JobId => Str

The ID for this job. Amazon S3 generates this ID automatically and
returns it after a successful C<Create Job> request.




=cut

