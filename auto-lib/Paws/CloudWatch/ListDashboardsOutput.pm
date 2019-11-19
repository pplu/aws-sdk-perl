# Generated from callresult_class.tt

package Paws::CloudWatch::ListDashboardsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatch::Types qw/CloudWatch_DashboardEntry/;
  has DashboardEntries => (is => 'ro', isa => ArrayRef[CloudWatch_DashboardEntry]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'DashboardEntries' => {
                                       'type' => 'ArrayRef[CloudWatch_DashboardEntry]',
                                       'class' => 'Paws::CloudWatch::DashboardEntry'
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

Paws::CloudWatch::ListDashboardsOutput

=head1 ATTRIBUTES


=head2 DashboardEntries => ArrayRef[CloudWatch_DashboardEntry]

The list of matching dashboards.


=head2 NextToken => Str

The token that marks the start of the next batch of returned results.


=head2 _request_id => Str


=cut

