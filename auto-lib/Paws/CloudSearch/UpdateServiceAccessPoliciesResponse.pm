# Generated from callresult_class.tt

package Paws::CloudSearch::UpdateServiceAccessPoliciesResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudSearch::Types qw/CloudSearch_AccessPoliciesStatus/;
  has AccessPolicies => (is => 'ro', isa => CloudSearch_AccessPoliciesStatus, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'AccessPolicies' => 1
                  },
  'types' => {
               'AccessPolicies' => {
                                     'type' => 'CloudSearch_AccessPoliciesStatus',
                                     'class' => 'Paws::CloudSearch::AccessPoliciesStatus'
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

Paws::CloudSearch::UpdateServiceAccessPoliciesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessPolicies => CloudSearch_AccessPoliciesStatus

The access rules configured for the domain.


=head2 _request_id => Str


=cut

