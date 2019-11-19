# Generated from json/callresult_class.tt

package Paws::CloudHSMv2::DescribeBackupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudHSMv2::Types qw/CloudHSMv2_Backup/;
  has Backups => (is => 'ro', isa => ArrayRef[CloudHSMv2_Backup]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Backups' => {
                              'type' => 'ArrayRef[CloudHSMv2_Backup]',
                              'class' => 'Paws::CloudHSMv2::Backup'
                            },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::CloudHSMv2::DescribeBackupsResponse

=head1 ATTRIBUTES


=head2 Backups => ArrayRef[CloudHSMv2_Backup]

A list of backups.


=head2 NextToken => Str

An opaque string that indicates that the response contains only a
subset of backups. Use this value in a subsequent C<DescribeBackups>
request to get more backups.


=head2 _request_id => Str


=cut

1;