
package Paws::IoT::GetPolicyVersionResponse;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate');
  has GenerationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'generationId');
  has IsDefaultVersion => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isDefaultVersion');
  has LastModifiedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedDate');
  has PolicyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyArn');
  has PolicyDocument => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyDocument');
  has PolicyName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyName');
  has PolicyVersionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyVersionId');

  has _request_id => (is => 'ro', isa => 'Str');
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

