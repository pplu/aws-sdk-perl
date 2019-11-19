
package Paws::EC2::CreateFlowLogsResult;
  use Moo;

  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::EC2::Types qw/EC2_UnsuccessfulItem/;
  has ClientToken => (is => 'ro', isa => Str);
  has FlowLogIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Unsuccessful => (is => 'ro', isa => ArrayRef[EC2_UnsuccessfulItem]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FlowLogIds' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Unsuccessful' => {
                                   'type' => 'ArrayRef[EC2_UnsuccessfulItem]',
                                   'class' => 'Paws::EC2::UnsuccessfulItem'
                                 }
             },
  'NameInRequest' => {
                       'FlowLogIds' => 'flowLogIdSet',
                       'ClientToken' => 'clientToken',
                       'Unsuccessful' => 'unsuccessful'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateFlowLogsResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.


=head2 FlowLogIds => ArrayRef[Str|Undef]

The IDs of the flow logs.


=head2 Unsuccessful => ArrayRef[EC2_UnsuccessfulItem]

Information about the flow logs that could not be created successfully.


=head2 _request_id => Str


=cut

