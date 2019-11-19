# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ListSamplesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Sample/;
  has NextToken => (is => 'ro', isa => Str);
  has Samples => (is => 'ro', isa => ArrayRef[DeviceFarm_Sample]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Samples' => 'samples',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Samples' => {
                              'class' => 'Paws::DeviceFarm::Sample',
                              'type' => 'ArrayRef[DeviceFarm_Sample]'
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

Paws::DeviceFarm::ListSamplesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.


=head2 Samples => ArrayRef[DeviceFarm_Sample]

Information about the samples.


=head2 _request_id => Str


=cut

1;