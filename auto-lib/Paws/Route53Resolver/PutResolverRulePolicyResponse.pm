# Generated from json/callresult_class.tt

package Paws::Route53Resolver::PutResolverRulePolicyResponse;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Route53Resolver::Types qw//;
  has ReturnValue => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ReturnValue' => {
                                  'type' => 'Bool'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::PutResolverRulePolicyResponse

=head1 ATTRIBUTES


=head2 ReturnValue => Bool

Whether the C<PutResolverRulePolicy> request was successful.


=head2 _request_id => Str


=cut

1;