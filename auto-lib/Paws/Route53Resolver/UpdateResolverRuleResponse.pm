# Generated from json/callresult_class.tt

package Paws::Route53Resolver::UpdateResolverRuleResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Route53Resolver::Types qw/Route53Resolver_ResolverRule/;
  has ResolverRule => (is => 'ro', isa => Route53Resolver_ResolverRule);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResolverRule' => {
                                   'class' => 'Paws::Route53Resolver::ResolverRule',
                                   'type' => 'Route53Resolver_ResolverRule'
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

Paws::Route53Resolver::UpdateResolverRuleResponse

=head1 ATTRIBUTES


=head2 ResolverRule => Route53Resolver_ResolverRule

The response to an C<UpdateResolverRule> request.


=head2 _request_id => Str


=cut

1;