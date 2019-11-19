# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ListTestsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Test/;
  has NextToken => (is => 'ro', isa => Str);
  has Tests => (is => 'ro', isa => ArrayRef[DeviceFarm_Test]);

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
               'Tests' => {
                            'class' => 'Paws::DeviceFarm::Test',
                            'type' => 'ArrayRef[DeviceFarm_Test]'
                          }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Tests' => 'tests'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListTestsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.


=head2 Tests => ArrayRef[DeviceFarm_Test]

Information about the tests.


=head2 _request_id => Str


=cut

1;