
package Paws::MQ::ListUsersResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::MQ::Types qw/MQ_UserSummary/;
  has BrokerId => (is => 'ro', isa => Str);
  has MaxResults => (is => 'ro', isa => Int);
  has NextToken => (is => 'ro', isa => Str);
  has Users => (is => 'ro', isa => ArrayRef[MQ_UserSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'BrokerId' => 'brokerId',
                       'NextToken' => 'nextToken',
                       'MaxResults' => 'maxResults',
                       'Users' => 'users'
                     },
  'types' => {
               'BrokerId' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Users' => {
                            'type' => 'ArrayRef[MQ_UserSummary]',
                            'class' => 'Paws::MQ::UserSummary'
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

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::ListUsersResponse

=head1 ATTRIBUTES


=head2 BrokerId => Str

Required. The unique ID that Amazon MQ generates for the broker.


=head2 MaxResults => Int

Required. The maximum number of ActiveMQ users that can be returned per
page (20 by default). This value must be an integer from 5 to 100.


=head2 NextToken => Str

The token that specifies the next page of results Amazon MQ should
return. To request the first page, leave nextToken empty.


=head2 Users => ArrayRef[MQ_UserSummary]

Required. The list of all ActiveMQ usernames for the specified broker.


=head2 _request_id => Str


=cut

