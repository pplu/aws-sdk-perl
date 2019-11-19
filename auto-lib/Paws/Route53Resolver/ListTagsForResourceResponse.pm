# Generated from json/callresult_class.tt

package Paws::Route53Resolver::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Route53Resolver::Types qw/Route53Resolver_Tag/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[Route53Resolver_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::Route53Resolver::Tag',
                           'type' => 'ArrayRef[Route53Resolver_Tag]'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If more than C<MaxResults> tags match the specified criteria, you can
submit another C<ListTagsForResource> request to get the next group of
results. In the next request, specify the value of C<NextToken> from
the previous response.


=head2 Tags => ArrayRef[Route53Resolver_Tag]

The tags that are associated with the resource that you specified in
the C<ListTagsForResource> request.


=head2 _request_id => Str


=cut

1;