# Generated from json/callresult_class.tt

package Paws::Route53Resolver::CreateResolverRuleResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Route53Resolver::Types qw/Route53Resolver_ResolverRule/;
  has ResolverRule => (is => 'ro', isa => Route53Resolver_ResolverRule);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResolverRule' => {
                                   'class' => 'Paws::Route53Resolver::ResolverRule',
                                   'type' => 'Route53Resolver_ResolverRule'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::CreateResolverRuleResponse

=head1 ATTRIBUTES


=head2 ResolverRule => Route53Resolver_ResolverRule

Information about the C<CreateResolverRule> request, including the
status of the request.


=head2 _request_id => Str


=cut

1;