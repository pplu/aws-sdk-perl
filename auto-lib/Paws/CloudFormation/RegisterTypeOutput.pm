# Generated from callresult_class.tt

package Paws::CloudFormation::RegisterTypeOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFormation::Types qw//;
  has RegistrationToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RegistrationToken' => {
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
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::RegisterTypeOutput

=head1 ATTRIBUTES


=head2 RegistrationToken => Str

The identifier for this registration request.

Use this registration token when calling C< DescribeTypeRegistration >,
which returns information about the status and IDs of the type
registration.


=head2 _request_id => Str


=cut

