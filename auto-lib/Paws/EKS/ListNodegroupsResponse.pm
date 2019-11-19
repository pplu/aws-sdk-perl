
package Paws::EKS::ListNodegroupsResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::EKS::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has Nodegroups => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Nodegroups' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Nodegroups' => 'nodegroups'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::ListNodegroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListNodegroups>
request. When the results of a C<ListNodegroups> request exceed
C<maxResults>, you can use this value to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 Nodegroups => ArrayRef[Str|Undef]

A list of all of the node groups associated with the specified cluster.


=head2 _request_id => Str


=cut

