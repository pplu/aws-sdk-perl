# Generated from json/callresult_class.tt

package Paws::FMS::ListComplianceStatusResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::FMS::Types qw/FMS_PolicyComplianceStatus/;
  has NextToken => (is => 'ro', isa => Str);
  has PolicyComplianceStatusList => (is => 'ro', isa => ArrayRef[FMS_PolicyComplianceStatus]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'PolicyComplianceStatusList' => {
                                                 'type' => 'ArrayRef[FMS_PolicyComplianceStatus]',
                                                 'class' => 'Paws::FMS::PolicyComplianceStatus'
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

Paws::FMS::ListComplianceStatusResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If you have more C<PolicyComplianceStatus> objects than the number that
you specified for C<MaxResults> in the request, the response includes a
C<NextToken> value. To list more C<PolicyComplianceStatus> objects,
submit another C<ListComplianceStatus> request, and specify the
C<NextToken> value from the response in the C<NextToken> value in the
next request.


=head2 PolicyComplianceStatusList => ArrayRef[FMS_PolicyComplianceStatus]

An array of C<PolicyComplianceStatus> objects.


=head2 _request_id => Str


=cut

1;