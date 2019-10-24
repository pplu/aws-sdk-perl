# Generated from json/callresult_class.tt

package Paws::Cloud9::DescribeEnvironmentMembershipsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Cloud9::Types qw/Cloud9_EnvironmentMember/;
  has Memberships => (is => 'ro', isa => ArrayRef[Cloud9_EnvironmentMember]);
  has NextToken => (is => 'ro', isa => Str);

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
               'Memberships' => {
                                  'class' => 'Paws::Cloud9::EnvironmentMember',
                                  'type' => 'ArrayRef[Cloud9_EnvironmentMember]'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Memberships' => 'memberships'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::DescribeEnvironmentMembershipsResult

=head1 ATTRIBUTES


=head2 Memberships => ArrayRef[Cloud9_EnvironmentMember]

Information about the environment members for the environment.


=head2 NextToken => Str

If there are more than 25 items in the list, only the first 25 items
are returned, along with a unique string called a I<next token>. To get
the next batch of items in the list, call this operation again, adding
the next token to the call.


=head2 _request_id => Str


=cut

1;