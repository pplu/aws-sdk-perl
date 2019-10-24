# Generated from callresult_class.tt

package Paws::IAM::GetServiceLinkedRoleDeletionStatusResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_DeletionTaskFailureReasonType/;
  has Reason => (is => 'ro', isa => IAM_DeletionTaskFailureReasonType);
  has Status => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Reason' => {
                             'class' => 'Paws::IAM::DeletionTaskFailureReasonType',
                             'type' => 'IAM_DeletionTaskFailureReasonType'
                           },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Status' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetServiceLinkedRoleDeletionStatusResponse

=head1 ATTRIBUTES


=head2 Reason => IAM_DeletionTaskFailureReasonType

An object that contains details about the reason the deletion failed.


=head2 B<REQUIRED> Status => Str

The status of the deletion.

Valid values are: C<"SUCCEEDED">, C<"IN_PROGRESS">, C<"FAILED">, C<"NOT_STARTED">
=head2 _request_id => Str


=cut

