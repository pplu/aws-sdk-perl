# Generated from json/callresult_class.tt

package Paws::SSM::DescribeMaintenanceWindowTargetsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_MaintenanceWindowTarget/;
  has NextToken => (is => 'ro', isa => Str);
  has Targets => (is => 'ro', isa => ArrayRef[SSM_MaintenanceWindowTarget]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Targets' => {
                              'class' => 'Paws::SSM::MaintenanceWindowTarget',
                              'type' => 'ArrayRef[SSM_MaintenanceWindowTarget]'
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

Paws::SSM::DescribeMaintenanceWindowTargetsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 Targets => ArrayRef[SSM_MaintenanceWindowTarget]

Information about the targets in the maintenance window.


=head2 _request_id => Str


=cut

1;