
package Paws::IoT::GetPolicyVersionResponse;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::IoT::Types qw//;
  has CreationDate => (is => 'ro', isa => Str);
  has GenerationId => (is => 'ro', isa => Str);
  has IsDefaultVersion => (is => 'ro', isa => Bool);
  has LastModifiedDate => (is => 'ro', isa => Str);
  has PolicyArn => (is => 'ro', isa => Str);
  has PolicyDocument => (is => 'ro', isa => Str);
  has PolicyName => (is => 'ro', isa => Str);
  has PolicyVersionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PolicyName' => {
                                 'type' => 'Str'
                               },
               'LastModifiedDate' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'PolicyArn' => {
                                'type' => 'Str'
                              },
               'IsDefaultVersion' => {
                                       'type' => 'Bool'
                                     },
               'GenerationId' => {
                                   'type' => 'Str'
                                 },
               'PolicyDocument' => {
                                     'type' => 'Str'
                                   },
               'PolicyVersionId' => {
                                      'type' => 'Str'
                                    }
             },
  'NameInRequest' => {
                       'PolicyArn' => 'policyArn',
                       'GenerationId' => 'generationId',
                       'IsDefaultVersion' => 'isDefaultVersion',
                       'PolicyVersionId' => 'policyVersionId',
                       'PolicyDocument' => 'policyDocument',
                       'LastModifiedDate' => 'lastModifiedDate',
                       'PolicyName' => 'policyName',
                       'CreationDate' => 'creationDate'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetPolicyVersionResponse

=head1 ATTRIBUTES


=head2 CreationDate => Str

The date the policy version was created.


=head2 GenerationId => Str

The generation ID of the policy version.


=head2 IsDefaultVersion => Bool

Specifies whether the policy version is the default.


=head2 LastModifiedDate => Str

The date the policy version was last modified.


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

