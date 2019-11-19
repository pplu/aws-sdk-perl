# Generated from json/callresult_class.tt

package Paws::Route53Resolver::AssociateResolverRuleResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Route53Resolver::Types qw/Route53Resolver_ResolverRuleAssociation/;
  has ResolverRuleAssociation => (is => 'ro', isa => Route53Resolver_ResolverRuleAssociation);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResolverRuleAssociation' => {
                                              'class' => 'Paws::Route53Resolver::ResolverRuleAssociation',
                                              'type' => 'Route53Resolver_ResolverRuleAssociation'
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

Paws::Route53Resolver::AssociateResolverRuleResponse

=head1 ATTRIBUTES


=head2 ResolverRuleAssociation => Route53Resolver_ResolverRuleAssociation

Information about the C<AssociateResolverRule> request, including the
status of the request.


=head2 _request_id => Str


=cut

1;