
package Paws::IAM::GenerateOrganizationsAccessReportResponse;
  use Moo;
  use JSON::MaybeXS;
  use URL::Encode;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw//;
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
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GenerateOrganizationsAccessReportResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The job identifier that you can use in the GetOrganizationsAccessReport
operation.


=head2 _request_id => Str


=cut

