
package Paws::EC2::DeleteFleetsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_DeleteFleetSuccessItem EC2_DeleteFleetErrorItem/;
  has SuccessfulFleetDeletions => (is => 'ro', isa => ArrayRef[EC2_DeleteFleetSuccessItem]);
  has UnsuccessfulFleetDeletions => (is => 'ro', isa => ArrayRef[EC2_DeleteFleetErrorItem]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'SuccessfulFleetDeletions' => 'successfulFleetDeletionSet',
                       'UnsuccessfulFleetDeletions' => 'unsuccessfulFleetDeletionSet'
                     },
  'types' => {
               'SuccessfulFleetDeletions' => {
                                               'class' => 'Paws::EC2::DeleteFleetSuccessItem',
                                               'type' => 'ArrayRef[EC2_DeleteFleetSuccessItem]'
                                             },
               'UnsuccessfulFleetDeletions' => {
                                                 'class' => 'Paws::EC2::DeleteFleetErrorItem',
                                                 'type' => 'ArrayRef[EC2_DeleteFleetErrorItem]'
                                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteFleetsResult

=head1 ATTRIBUTES


=head2 SuccessfulFleetDeletions => ArrayRef[EC2_DeleteFleetSuccessItem]

Information about the EC2 Fleets that are successfully deleted.


=head2 UnsuccessfulFleetDeletions => ArrayRef[EC2_DeleteFleetErrorItem]

Information about the EC2 Fleets that are not successfully deleted.


=head2 _request_id => Str


=cut

