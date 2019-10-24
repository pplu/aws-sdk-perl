# Generated from json/callresult_class.tt

package Paws::Transfer::CreateUserResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Transfer::Types qw//;
  has ServerId => (is => 'ro', isa => Str, required => 1);
  has UserName => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserName' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ServerId' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'UserName' => 1,
                    'ServerId' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Transfer::CreateUserResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServerId => Str

The ID of the SFTP server that the user is attached to.


=head2 B<REQUIRED> UserName => Str

A unique string that identifies a user account associated with an SFTP
server.


=head2 _request_id => Str


=cut

1;