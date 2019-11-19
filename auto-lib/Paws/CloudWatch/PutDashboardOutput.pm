# Generated from callresult_class.tt

package Paws::CloudWatch::PutDashboardOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatch::Types qw/CloudWatch_DashboardValidationMessage/;
  has DashboardValidationMessages => (is => 'ro', isa => ArrayRef[CloudWatch_DashboardValidationMessage]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DashboardValidationMessages' => {
                                                  'class' => 'Paws::CloudWatch::DashboardValidationMessage',
                                                  'type' => 'ArrayRef[CloudWatch_DashboardValidationMessage]'
                                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::PutDashboardOutput

=head1 ATTRIBUTES


=head2 DashboardValidationMessages => ArrayRef[CloudWatch_DashboardValidationMessage]

If the input for C<PutDashboard> was correct and the dashboard was
successfully created or modified, this result is empty.

If this result includes only warning messages, then the input was valid
enough for the dashboard to be created or modified, but some elements
of the dashboard may not render.

If this result includes error messages, the input was not valid and the
operation failed.


=head2 _request_id => Str


=cut

