# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ListSuitesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Suite/;
  has NextToken => (is => 'ro', isa => Str);
  has Suites => (is => 'ro', isa => ArrayRef[DeviceFarm_Suite]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Suites' => {
                             'class' => 'Paws::DeviceFarm::Suite',
                             'type' => 'ArrayRef[DeviceFarm_Suite]'
                           }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Suites' => 'suites'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListSuitesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.


=head2 Suites => ArrayRef[DeviceFarm_Suite]

Information about the suites.


=head2 _request_id => Str


=cut

1;