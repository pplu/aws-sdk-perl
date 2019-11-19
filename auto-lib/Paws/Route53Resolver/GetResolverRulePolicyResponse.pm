# Generated from json/callresult_class.tt

package Paws::Route53Resolver::GetResolverRulePolicyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Route53Resolver::Types qw//;
  has ResolverRulePolicy => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResolverRulePolicy' => {
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

Paws::Route53Resolver::GetResolverRulePolicyResponse

=head1 ATTRIBUTES


=head2 ResolverRulePolicy => Str

Information about the resolver rule policy that you specified in a
C<GetResolverRulePolicy> request.


=head2 _request_id => Str


=cut

1;