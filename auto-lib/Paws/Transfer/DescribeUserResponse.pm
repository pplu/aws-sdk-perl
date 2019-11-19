# Generated from json/callresult_class.tt

package Paws::Transfer::DescribeUserResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Transfer::Types qw/Transfer_DescribedUser/;
  has ServerId => (is => 'ro', isa => Str, required => 1);
  has User => (is => 'ro', isa => Transfer_DescribedUser, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ServerId' => 1,
                    'User' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ServerId' => {
                               'type' => 'Str'
                             },
               'User' => {
                           'type' => 'Transfer_DescribedUser',
                           'class' => 'Paws::Transfer::DescribedUser'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeUserResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for an SFTP server that has this
user assigned.


=head2 B<REQUIRED> User => Transfer_DescribedUser

An array containing the properties of the user account for the
C<ServerID> value that you specified.


=head2 _request_id => Str


=cut

1;