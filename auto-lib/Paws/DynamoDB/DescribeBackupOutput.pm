
package Paws::DynamoDB::DescribeBackupOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Type::Utils qw/class_type/;
    my $BackupDescription = class_type 'Paws::DynamoDB::BackupDescription';
  
  has BackupDescription => (is => 'ro', isa => $BackupDescription);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'BackupDescription' => {
                                                   'class' => 'Paws::DynamoDB::BackupDescription',
                                                   'type' => '$BackupDescription'
                                                 }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeBackupOutput

=head1 ATTRIBUTES


=head2 BackupDescription => $BackupDescription

Contains the description of the backup created for the table.


=head2 _request_id => Str


=cut

1;