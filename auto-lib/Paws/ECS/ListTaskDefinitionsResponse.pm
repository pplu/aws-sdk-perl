# Generated from json/callresult_class.tt

package Paws::ECS::ListTaskDefinitionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ECS::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has TaskDefinitionArns => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'TaskDefinitionArns' => {
                                         'type' => 'ArrayRef[Str|Undef]'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'TaskDefinitionArns' => 'taskDefinitionArns'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListTaskDefinitionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListTaskDefinitions>
request. When the results of a C<ListTaskDefinitions> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 TaskDefinitionArns => ArrayRef[Str|Undef]

The list of task definition Amazon Resource Name (ARN) entries for the
C<ListTaskDefinitions> request.


=head2 _request_id => Str


=cut

1;