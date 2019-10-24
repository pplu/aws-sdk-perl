
package Paws::IoT::CreatePolicyVersionResponse;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::IoT::Types qw//;
  has IsDefaultVersion => (is => 'ro', isa => Bool);
  has PolicyArn => (is => 'ro', isa => Str);
  has PolicyDocument => (is => 'ro', isa => Str);
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
               'IsDefaultVersion' => {
                                       'type' => 'Bool'
                                     },
               'PolicyDocument' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'PolicyArn' => 'policyArn',
                       'PolicyVersionId' => 'policyVersionId',
                       'IsDefaultVersion' => 'isDefaultVersion',
                       'PolicyDocument' => 'policyDocument'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreatePolicyVersionResponse

=head1 ATTRIBUTES


=head2 IsDefaultVersion => Bool

Specifies whether the policy version is the default.


=head2 PolicyArn => Str

The policy ARN.


=head2 PolicyDocument => Str

The JSON document that describes the policy.


=head2 PolicyVersionId => Str

The policy version ID.


=head2 _request_id => Str


=cut

