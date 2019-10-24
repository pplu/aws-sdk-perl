
package Paws::IoT::CreateSecurityProfileResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has SecurityProfileArn => (is => 'ro', isa => Str);
  has SecurityProfileName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SecurityProfileArn' => {
                                         'type' => 'Str'
                                       },
               'SecurityProfileName' => {
                                          'type' => 'Str'
                                        }
             },
  'NameInRequest' => {
                       'SecurityProfileArn' => 'securityProfileArn',
                       'SecurityProfileName' => 'securityProfileName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateSecurityProfileResponse

=head1 ATTRIBUTES


=head2 SecurityProfileArn => Str

The ARN of the security profile.


=head2 SecurityProfileName => Str

The name you gave to the security profile.


=head2 _request_id => Str


=cut

