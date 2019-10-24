# Generated from callresult_class.tt

package Paws::CloudSearch::DescribeServiceAccessPoliciesResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudSearch::Types qw/CloudSearch_AccessPoliciesStatus/;
  has AccessPolicies => (is => 'ro', isa => CloudSearch_AccessPoliciesStatus, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AccessPolicies' => {
                                     'class' => 'Paws::CloudSearch::AccessPoliciesStatus',
                                     'type' => 'CloudSearch_AccessPoliciesStatus'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'AccessPolicies' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DescribeServiceAccessPoliciesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessPolicies => CloudSearch_AccessPoliciesStatus

The access rules configured for the domain specified in the request.


=head2 _request_id => Str


=cut

