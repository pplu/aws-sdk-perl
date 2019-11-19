# Generated from json/callresult_class.tt

package Paws::Route53Resolver::ListResolverEndpointsResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::Route53Resolver::Types qw/Route53Resolver_ResolverEndpoint/;
  has MaxResults => (is => 'ro', isa => Int);
  has NextToken => (is => 'ro', isa => Str);
  has ResolverEndpoints => (is => 'ro', isa => ArrayRef[Route53Resolver_ResolverEndpoint]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResolverEndpoints' => {
                                        'type' => 'ArrayRef[Route53Resolver_ResolverEndpoint]',
                                        'class' => 'Paws::Route53Resolver::ResolverEndpoint'
                                      },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListResolverEndpointsResponse

=head1 ATTRIBUTES


=head2 MaxResults => Int

The value that you specified for C<MaxResults> in the request.


=head2 NextToken => Str

If more than C<MaxResults> IP addresses match the specified criteria,
you can submit another C<ListResolverEndpoint> request to get the next
group of results. In the next request, specify the value of
C<NextToken> from the previous response.


=head2 ResolverEndpoints => ArrayRef[Route53Resolver_ResolverEndpoint]

The resolver endpoints that were created by using the current AWS
account, and that match the specified filters, if any.


=head2 _request_id => Str


=cut

1;