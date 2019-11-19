
package Paws::IoT::GetPolicyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has CreationDate => (is => 'ro', isa => Str);
  has DefaultVersionId => (is => 'ro', isa => Str);
  has GenerationId => (is => 'ro', isa => Str);
  has LastModifiedDate => (is => 'ro', isa => Str);
  has PolicyArn => (is => 'ro', isa => Str);
  has PolicyDocument => (is => 'ro', isa => Str);
  has PolicyName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'PolicyArn' => 'policyArn',
                       'GenerationId' => 'generationId',
                       'PolicyDocument' => 'policyDocument',
                       'LastModifiedDate' => 'lastModifiedDate',
                       'PolicyName' => 'policyName',
                       'CreationDate' => 'creationDate',
                       'DefaultVersionId' => 'defaultVersionId'
                     },
  'types' => {
               'DefaultVersionId' => {
                                       'type' => 'Str'
                                     },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PolicyName' => {
                                 'type' => 'Str'
                               },
               'LastModifiedDate' => {
                                       'type' => 'Str'
                                     },
               'PolicyDocument' => {
                                     'type' => 'Str'
                                   },
               'GenerationId' => {
                                   'type' => 'Str'
                                 },
               'PolicyArn' => {
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

Paws::IoT::GetPolicyResponse

=head1 ATTRIBUTES


=head2 CreationDate => Str

The date the policy was created.


=head2 DefaultVersionId => Str

The default policy version ID.


=head2 GenerationId => Str

The generation ID of the policy.


=head2 LastModifiedDate => Str

The date the policy was last modified.


=head2 PolicyArn => Str

The policy ARN.


=head2 PolicyDocument => Str

The JSON document that describes the policy.


=head2 PolicyName => Str

The policy name.


=head2 _request_id => Str


=cut

