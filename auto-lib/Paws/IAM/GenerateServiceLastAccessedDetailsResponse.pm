# Generated from callresult_class.tt

package Paws::IAM::GenerateServiceLastAccessedDetailsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw//;
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

Paws::IAM::GenerateServiceLastAccessedDetailsResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The job ID that you can use in the GetServiceLastAccessedDetails or
GetServiceLastAccessedDetailsWithEntities operations.


=head2 _request_id => Str


=cut

