# Generated from json/callresult_class.tt

package Paws::FSX::DescribeBackupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::FSX::Types qw/FSX_Backup/;
  has Backups => (is => 'ro', isa => ArrayRef[FSX_Backup]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Backups' => {
                              'class' => 'Paws::FSX::Backup',
                              'type' => 'ArrayRef[FSX_Backup]'
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

Paws::FSX::DescribeBackupsResponse

=head1 ATTRIBUTES


=head2 Backups => ArrayRef[FSX_Backup]

Any array of backups.


=head2 NextToken => Str

This is present if there are more backups than returned in the response
(String). You can use the C<NextToken> value in the later request to
fetch the backups.


=head2 _request_id => Str


=cut

1;