# Generated from json/callresult_class.tt

package Paws::DeviceFarm::GetTestResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Test/;
  has Test => (is => 'ro', isa => DeviceFarm_Test);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Test' => {
                           'class' => 'Paws::DeviceFarm::Test',
                           'type' => 'DeviceFarm_Test'
                         }
             },
  'NameInRequest' => {
                       'Test' => 'test'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetTestResult

=head1 ATTRIBUTES


=head2 Test => DeviceFarm_Test

A test condition that is evaluated.


=head2 _request_id => Str


=cut

1;