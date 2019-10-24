
package Paws::EC2::GetPasswordDataResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has InstanceId => (is => 'ro', isa => Str);
  has PasswordData => (is => 'ro', isa => Str);
  has Timestamp => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Timestamp' => {
                                'type' => 'Str'
                              },
               'PasswordData' => {
                                   'type' => 'Str'
                                 },
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Timestamp' => 'timestamp',
                       'PasswordData' => 'passwordData',
                       'InstanceId' => 'instanceId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetPasswordDataResult

=head1 ATTRIBUTES


=head2 InstanceId => Str

The ID of the Windows instance.


=head2 PasswordData => Str

The password of the instance. Returns an empty string if the password
is not available.


=head2 Timestamp => Str

The time the data was last updated.


=head2 _request_id => Str


=cut

