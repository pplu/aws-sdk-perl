
package Paws::Backup::DescribeProtectedResourceOutput;
  use Moose;
  has LastBackupTime => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeProtectedResourceOutput

=head1 ATTRIBUTES


=head2 LastBackupTime => Str

The date and time that a resource was last backed up, in Unix format
and Coordinated Universal Time (UTC). The value of C<LastBackupTime> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 ResourceArn => Str

An ARN that uniquely identifies a resource. The format of the ARN
depends on the resource type.


=head2 ResourceType => Str

The type of AWS resource saved as a recovery point; for example, an EBS
volume or an Amazon RDS database.


=head2 _request_id => Str


=cut

