
package Paws::IoT::GetPolicyResponse;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate');
  has DefaultVersionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultVersionId');
  has GenerationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'generationId');
  has LastModifiedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedDate');
  has PolicyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyArn');
  has PolicyDocument => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyDocument');
  has PolicyName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyName');

  has _request_id => (is => 'ro', isa => 'Str');
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

