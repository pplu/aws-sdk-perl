# Generated from json/callresult_class.tt

package Paws::Route53Resolver::DisassociateResolverRuleResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Route53Resolver::Types qw/Route53Resolver_ResolverRuleAssociation/;
  has ResolverRuleAssociation => (is => 'ro', isa => Route53Resolver_ResolverRuleAssociation);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResolverRuleAssociation' => {
                                              'type' => 'Route53Resolver_ResolverRuleAssociation',
                                              'class' => 'Paws::Route53Resolver::ResolverRuleAssociation'
                                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::DisassociateResolverRuleResponse

=head1 ATTRIBUTES


=head2 ResolverRuleAssociation => Route53Resolver_ResolverRuleAssociation

Information about the C<DisassociateResolverRule> request, including
the status of the request.


=head2 _request_id => Str


=cut

1;