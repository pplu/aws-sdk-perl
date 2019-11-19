# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeStackSummaryResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorks::Types qw/OpsWorks_StackSummary/;
  has StackSummary => (is => 'ro', isa => OpsWorks_StackSummary);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StackSummary' => {
                                   'class' => 'Paws::OpsWorks::StackSummary',
                                   'type' => 'OpsWorks_StackSummary'
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

Paws::OpsWorks::DescribeStackSummaryResult

=head1 ATTRIBUTES


=head2 StackSummary => OpsWorks_StackSummary

A C<StackSummary> object that contains the results.


=head2 _request_id => Str


=cut

1;