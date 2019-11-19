# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ListRunsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Run/;
  has NextToken => (is => 'ro', isa => Str);
  has Runs => (is => 'ro', isa => ArrayRef[DeviceFarm_Run]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Runs' => {
                           'type' => 'ArrayRef[DeviceFarm_Run]',
                           'class' => 'Paws::DeviceFarm::Run'
                         },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Runs' => 'runs'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListRunsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.


=head2 Runs => ArrayRef[DeviceFarm_Run]

Information about the runs.


=head2 _request_id => Str


=cut

1;