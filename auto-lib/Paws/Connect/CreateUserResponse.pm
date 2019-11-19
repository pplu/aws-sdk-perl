
package Paws::Connect::CreateUserResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Connect::Types qw//;
  has UserArn => (is => 'ro', isa => Str);
  has UserId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserId' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UserArn' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateUserResponse

=head1 ATTRIBUTES


=head2 UserArn => Str

The Amazon Resource Name (ARN) of the user account.


=head2 UserId => Str

The identifier of the user account.


=head2 _request_id => Str


=cut

