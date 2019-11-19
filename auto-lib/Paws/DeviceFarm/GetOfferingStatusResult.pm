# Generated from json/callresult_class.tt

package Paws::DeviceFarm::GetOfferingStatusResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_OfferingStatusMap/;
  has Current => (is => 'ro', isa => DeviceFarm_OfferingStatusMap);
  has NextPeriod => (is => 'ro', isa => DeviceFarm_OfferingStatusMap);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextPeriod' => {
                                 'type' => 'DeviceFarm_OfferingStatusMap',
                                 'class' => 'Paws::DeviceFarm::OfferingStatusMap'
                               },
               'Current' => {
                              'class' => 'Paws::DeviceFarm::OfferingStatusMap',
                              'type' => 'DeviceFarm_OfferingStatusMap'
                            },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'NextPeriod' => 'nextPeriod',
                       'Current' => 'current',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetOfferingStatusResult

=head1 ATTRIBUTES


=head2 Current => DeviceFarm_OfferingStatusMap

When specified, gets the offering status for the current period.


=head2 NextPeriod => DeviceFarm_OfferingStatusMap

When specified, gets the offering status for the next period.


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 _request_id => Str


=cut

1;