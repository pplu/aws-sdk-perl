# Generated from json/callresult_class.tt

package Paws::Cloud9::CreateEnvironmentEC2Result;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Cloud9::Types qw//;
  has EnvironmentId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EnvironmentId' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'EnvironmentId' => 'environmentId'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::CreateEnvironmentEC2Result

=head1 ATTRIBUTES


=head2 EnvironmentId => Str

The ID of the environment that was created.


=head2 _request_id => Str


=cut

1;