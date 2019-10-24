# Generated from json/callresult_class.tt

package Paws::OpsWorksCM::DescribeBackupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorksCM::Types qw/OpsWorksCM_Backup/;
  has Backups => (is => 'ro', isa => ArrayRef[OpsWorksCM_Backup]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Backups' => {
                              'class' => 'Paws::OpsWorksCM::Backup',
                              'type' => 'ArrayRef[OpsWorksCM_Backup]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::DescribeBackupsResponse

=head1 ATTRIBUTES


=head2 Backups => ArrayRef[OpsWorksCM_Backup]

Contains the response to a C<DescribeBackups> request.


=head2 NextToken => Str

This is not currently implemented for C<DescribeBackups> requests.


=head2 _request_id => Str


=cut

1;