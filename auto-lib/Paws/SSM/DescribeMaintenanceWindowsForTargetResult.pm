# Generated from json/callresult_class.tt

package Paws::SSM::DescribeMaintenanceWindowsForTargetResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_MaintenanceWindowIdentityForTarget/;
  has NextToken => (is => 'ro', isa => Str);
  has WindowIdentities => (is => 'ro', isa => ArrayRef[SSM_MaintenanceWindowIdentityForTarget]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'WindowIdentities' => {
                                       'class' => 'Paws::SSM::MaintenanceWindowIdentityForTarget',
                                       'type' => 'ArrayRef[SSM_MaintenanceWindowIdentityForTarget]'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeMaintenanceWindowsForTargetResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. (You use this token in
the next call.)


=head2 WindowIdentities => ArrayRef[SSM_MaintenanceWindowIdentityForTarget]

Information about the maintenance window targets and tasks an instance
is associated with.


=head2 _request_id => Str


=cut

1;