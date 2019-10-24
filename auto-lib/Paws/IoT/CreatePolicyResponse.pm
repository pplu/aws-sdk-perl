
package Paws::IoT::CreatePolicyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has PolicyArn => (is => 'ro', isa => Str);
  has PolicyDocument => (is => 'ro', isa => Str);
  has PolicyName => (is => 'ro', isa => Str);
  has PolicyVersionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PolicyArn' => {
                                'type' => 'Str'
                              },
               'PolicyVersionId' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PolicyDocument' => {
                                     'type' => 'Str'
                                   },
               'PolicyName' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'PolicyArn' => 'policyArn',
                       'PolicyVersionId' => 'policyVersionId',
                       'PolicyDocument' => 'policyDocument',
                       'PolicyName' => 'policyName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreatePolicyResponse

=head1 ATTRIBUTES


=head2 PolicyArn => Str

The policy ARN.


=head2 PolicyDocument => Str

The JSON document that describes the policy.


=head2 PolicyName => Str

The policy name.


=head2 PolicyVersionId => Str

The policy version ID.


=head2 _request_id => Str


=cut

