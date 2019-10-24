# Generated from json/callresult_class.tt

package Paws::DeviceFarm::GetSuiteResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Suite/;
  has Suite => (is => 'ro', isa => DeviceFarm_Suite);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Suite' => {
                            'class' => 'Paws::DeviceFarm::Suite',
                            'type' => 'DeviceFarm_Suite'
                          }
             },
  'NameInRequest' => {
                       'Suite' => 'suite'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetSuiteResult

=head1 ATTRIBUTES


=head2 Suite => DeviceFarm_Suite

A collection of one or more tests.


=head2 _request_id => Str


=cut

1;