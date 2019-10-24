# Generated from json/callresult_class.tt

package Paws::FMS::GetComplianceDetailResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::FMS::Types qw/FMS_PolicyComplianceDetail/;
  has PolicyComplianceDetail => (is => 'ro', isa => FMS_PolicyComplianceDetail);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PolicyComplianceDetail' => {
                                             'class' => 'Paws::FMS::PolicyComplianceDetail',
                                             'type' => 'FMS_PolicyComplianceDetail'
                                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::FMS::GetComplianceDetailResponse

=head1 ATTRIBUTES


=head2 PolicyComplianceDetail => FMS_PolicyComplianceDetail

Information about the resources and the policy that you specified in
the C<GetComplianceDetail> request.


=head2 _request_id => Str


=cut

1;