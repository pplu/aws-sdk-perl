
package Paws::IoT::GetRegistrationCodeResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has RegistrationCode => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RegistrationCode' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'RegistrationCode' => 'registrationCode'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetRegistrationCodeResponse

=head1 ATTRIBUTES


=head2 RegistrationCode => Str

The CA certificate registration code.


=head2 _request_id => Str


=cut

