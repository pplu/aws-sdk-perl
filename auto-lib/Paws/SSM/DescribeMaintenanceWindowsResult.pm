# Generated from json/callresult_class.tt

package Paws::SSM::DescribeMaintenanceWindowsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_MaintenanceWindowIdentity/;
  has NextToken => (is => 'ro', isa => Str);
  has WindowIdentities => (is => 'ro', isa => ArrayRef[SSM_MaintenanceWindowIdentity]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WindowIdentities' => {
                                       'type' => 'ArrayRef[SSM_MaintenanceWindowIdentity]',
                                       'class' => 'Paws::SSM::MaintenanceWindowIdentity'
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

Paws::SSM::DescribeMaintenanceWindowsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 WindowIdentities => ArrayRef[SSM_MaintenanceWindowIdentity]

Information about the maintenance windows.


=head2 _request_id => Str


=cut

1;