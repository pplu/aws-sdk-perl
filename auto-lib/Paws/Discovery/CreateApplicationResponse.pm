# Generated from json/callresult_class.tt

package Paws::Discovery::CreateApplicationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Discovery::Types qw//;
  has ConfigurationId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ConfigurationId' => 'configurationId'
                     },
  'types' => {
               'ConfigurationId' => {
                                      'type' => 'Str'
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

Paws::Discovery::CreateApplicationResponse

=head1 ATTRIBUTES


=head2 ConfigurationId => Str

Configuration ID of an application to be created.


=head2 _request_id => Str


=cut

1;