# Generated from json/callresult_class.tt

package Paws::ComprehendMedical::StartEntitiesDetectionV2JobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ComprehendMedical::Types qw//;
  has JobId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'JobId' => {
                            'type' => 'Str'
                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::StartEntitiesDetectionV2JobResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The identifier generated for the job. To get the status of a job, use
this identifier with the C<DescribeEntitiesDetectionV2Job> operation.


=head2 _request_id => Str


=cut

1;