
package Paws::EC2::GetPasswordDataResult;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest',]);
  has PasswordData => (is => 'ro', isa => 'Str', request_name => 'passwordData', traits => ['NameInRequest',]);
  has Timestamp => (is => 'ro', isa => 'Str', request_name => 'timestamp', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetPasswordDataResult

=head1 ATTRIBUTES


=head2 InstanceId => Str

The ID of the Windows instance.



=head2 PasswordData => Str

The password of the instance.



=head2 Timestamp => Str

The time the data was last updated.




=cut

