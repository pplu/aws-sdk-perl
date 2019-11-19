# Generated from json/callresult_class.tt

package Paws::Route53Resolver::ListResolverRulesResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::Route53Resolver::Types qw/Route53Resolver_ResolverRule/;
  has MaxResults => (is => 'ro', isa => Int);
  has NextToken => (is => 'ro', isa => Str);
  has ResolverRules => (is => 'ro', isa => ArrayRef[Route53Resolver_ResolverRule]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ResolverRules' => {
                                    'type' => 'ArrayRef[Route53Resolver_ResolverRule]',
                                    'class' => 'Paws::Route53Resolver::ResolverRule'
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

Paws::Route53Resolver::ListResolverRulesResponse

=head1 ATTRIBUTES


=head2 MaxResults => Int

The value that you specified for C<MaxResults> in the request.


=head2 NextToken => Str

If more than C<MaxResults> resolver rules match the specified criteria,
you can submit another C<ListResolverRules> request to get the next
group of results. In the next request, specify the value of
C<NextToken> from the previous response.


=head2 ResolverRules => ArrayRef[Route53Resolver_ResolverRule]

The resolver rules that were created using the current AWS account and
that match the specified filters, if any.


=head2 _request_id => Str


=cut

1;