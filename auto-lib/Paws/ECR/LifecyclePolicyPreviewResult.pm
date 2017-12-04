package Paws::ECR::LifecyclePolicyPreviewResult;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::ECR::LifecyclePolicyRuleAction', request_name => 'action', traits => ['NameInRequest']);
  has AppliedRulePriority => (is => 'ro', isa => 'Int', request_name => 'appliedRulePriority', traits => ['NameInRequest']);
  has ImageDigest => (is => 'ro', isa => 'Str', request_name => 'imageDigest', traits => ['NameInRequest']);
  has ImagePushedAt => (is => 'ro', isa => 'Str', request_name => 'imagePushedAt', traits => ['NameInRequest']);
  has ImageTags => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'imageTags', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::LifecyclePolicyPreviewResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECR::LifecyclePolicyPreviewResult object:

  $service_obj->Method(Att1 => { Action => $value, ..., ImageTags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECR::LifecyclePolicyPreviewResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

The result of the lifecycle policy preview.

=head1 ATTRIBUTES


=head2 Action => L<Paws::ECR::LifecyclePolicyRuleAction>

  The type of action to be taken.


=head2 AppliedRulePriority => Int

  The priority of the applied rule.


=head2 ImageDigest => Str

  The C<sha256> digest of the image manifest.


=head2 ImagePushedAt => Str

  The date and time, expressed in standard JavaScript date format, at
which the current image was pushed to the repository.


=head2 ImageTags => ArrayRef[Str|Undef]

  The list of tags associated with this image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

