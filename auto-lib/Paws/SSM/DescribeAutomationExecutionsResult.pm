# Generated from json/callresult_class.tt

package Paws::SSM::DescribeAutomationExecutionsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_AutomationExecutionMetadata/;
  has AutomationExecutionMetadataList => (is => 'ro', isa => ArrayRef[SSM_AutomationExecutionMetadata]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AutomationExecutionMetadataList' => {
                                                      'class' => 'Paws::SSM::AutomationExecutionMetadata',
                                                      'type' => 'ArrayRef[SSM_AutomationExecutionMetadata]'
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

Paws::SSM::DescribeAutomationExecutionsResult

=head1 ATTRIBUTES


=head2 AutomationExecutionMetadataList => ArrayRef[SSM_AutomationExecutionMetadata]

The list of details about each automation execution which has occurred
which matches the filter specification, if any.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;