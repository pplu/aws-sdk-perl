# Generated from json/callresult_class.tt

package Paws::ECS::ListTaskDefinitionFamiliesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ECS::Types qw//;
  has Families => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Families' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Families' => 'families'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListTaskDefinitionFamiliesResponse

=head1 ATTRIBUTES


=head2 Families => ArrayRef[Str|Undef]

The list of task definition family names that match the
C<ListTaskDefinitionFamilies> request.


=head2 NextToken => Str

The C<nextToken> value to include in a future
C<ListTaskDefinitionFamilies> request. When the results of a
C<ListTaskDefinitionFamilies> request exceed C<maxResults>, this value
can be used to retrieve the next page of results. This value is C<null>
when there are no more results to return.


=head2 _request_id => Str


=cut

1;