# Generated from json/callresult_class.tt

package Paws::DS::DescribeConditionalForwardersResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DS::Types qw/DS_ConditionalForwarder/;
  has ConditionalForwarders => (is => 'ro', isa => ArrayRef[DS_ConditionalForwarder]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ConditionalForwarders' => {
                                            'class' => 'Paws::DS::ConditionalForwarder',
                                            'type' => 'ArrayRef[DS_ConditionalForwarder]'
                                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeConditionalForwardersResult

=head1 ATTRIBUTES


=head2 ConditionalForwarders => ArrayRef[DS_ConditionalForwarder]

The list of conditional forwarders that have been created.


=head2 _request_id => Str


=cut

1;