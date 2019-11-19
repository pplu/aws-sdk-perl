# Generated from json/callresult_class.tt

package Paws::ECS::ListTasksResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ECS::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has TaskArns => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'TaskArns' => 'taskArns'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'TaskArns' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListTasksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListTasks> request.
When the results of a C<ListTasks> request exceed C<maxResults>, this
value can be used to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 TaskArns => ArrayRef[Str|Undef]

The list of task ARN entries for the C<ListTasks> request.


=head2 _request_id => Str


=cut

1;