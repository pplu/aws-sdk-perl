# Generated from json/callresult_class.tt

package Paws::ServiceQuotas::ListAWSDefaultServiceQuotasResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceQuotas::Types qw/ServiceQuotas_ServiceQuota/;
  has NextToken => (is => 'ro', isa => Str);
  has Quotas => (is => 'ro', isa => ArrayRef[ServiceQuotas_ServiceQuota]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Quotas' => {
                             'class' => 'Paws::ServiceQuotas::ServiceQuota',
                             'type' => 'ArrayRef[ServiceQuotas_ServiceQuota]'
                           },
               'NextToken' => {
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

Paws::ServiceQuotas::ListAWSDefaultServiceQuotasResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

(Optional) Use this parameter in a request if you receive a
C<NextToken> response in a previous request that indicates that there's
more output available. In a subsequent call, set it to the value of the
previous call's C<NextToken> response to indicate where the output
should continue from.


=head2 Quotas => ArrayRef[ServiceQuotas_ServiceQuota]

A list of the quotas in the account with the AWS default values.


=head2 _request_id => Str


=cut

1;