
package Paws::Connect::DescribeUserResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Connect::Types qw/Connect_User/;
  has User => (is => 'ro', isa => Connect_User);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'User' => {
                           'class' => 'Paws::Connect::User',
                           'type' => 'Connect_User'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeUserResponse

=head1 ATTRIBUTES


=head2 User => Connect_User

A C<User> object that contains information about the user account and
configuration settings.


=head2 _request_id => Str


=cut

