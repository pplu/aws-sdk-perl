# Generated from json/callresult_class.tt

package Paws::SSM::UpdateMaintenanceWindowTargetResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_Target/;
  has Description => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has OwnerInformation => (is => 'ro', isa => Str);
  has Targets => (is => 'ro', isa => ArrayRef[SSM_Target]);
  has WindowId => (is => 'ro', isa => Str);
  has WindowTargetId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OwnerInformation' => {
                                       'type' => 'Str'
                                     },
               'Targets' => {
                              'type' => 'ArrayRef[SSM_Target]',
                              'class' => 'Paws::SSM::Target'
                            },
               'Description' => {
                                  'type' => 'Str'
                                },
               'WindowId' => {
                               'type' => 'Str'
                             },
               'Name' => {
                           'type' => 'Str'
                         },
               'WindowTargetId' => {
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

Paws::SSM::UpdateMaintenanceWindowTargetResult

=head1 ATTRIBUTES


=head2 Description => Str

The updated description.


=head2 Name => Str

The updated name.


=head2 OwnerInformation => Str

The updated owner.


=head2 Targets => ArrayRef[SSM_Target]

The updated targets.


=head2 WindowId => Str

The maintenance window ID specified in the update request.


=head2 WindowTargetId => Str

The target ID specified in the update request.


=head2 _request_id => Str


=cut

1;