# Generated from json/callresult_class.tt

package Paws::ECS::ListServicesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ECS::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has ServiceArns => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceArns' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ServiceArns' => 'serviceArns',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListServicesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListServices> request.
When the results of a C<ListServices> request exceed C<maxResults>,
this value can be used to retrieve the next page of results. This value
is C<null> when there are no more results to return.


=head2 ServiceArns => ArrayRef[Str|Undef]

The list of full ARN entries for each service associated with the
specified cluster.


=head2 _request_id => Str


=cut

1;