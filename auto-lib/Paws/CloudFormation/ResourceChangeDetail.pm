package Paws::CloudFormation::ResourceChangeDetail;
  use Moose;
  has CausingEntity => (is => 'ro', isa => 'Str');
  has ChangeSource => (is => 'ro', isa => 'Str');
  has Evaluation => (is => 'ro', isa => 'Str');
  has Target => (is => 'ro', isa => 'Paws::CloudFormation::ResourceTargetDefinition');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ResourceChangeDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::ResourceChangeDetail object:

  $service_obj->Method(Att1 => { CausingEntity => $value, ..., Target => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::ResourceChangeDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->CausingEntity

=head1 DESCRIPTION

For a resource with C<Modify> as the action, the C<ResourceChange>
structure describes the changes AWS CloudFormation will make to that
resource.

=head1 ATTRIBUTES


=head2 CausingEntity => Str

  The identity of the entity that triggered this change. This entity is a
member of the group that is specified by the C<ChangeSource> field. For
example, if you modified the value of the C<KeyPairName> parameter, the
C<CausingEntity> is the name of the parameter (C<KeyPairName>).

If the C<ChangeSource> value is C<DirectModification>, no value is
given for C<CausingEntity>.


=head2 ChangeSource => Str

  The group to which the C<CausingEntity> value belongs. There are five
entity groups:

=over

=item *

C<ResourceReference> entities are C<Ref> intrinsic functions that refer
to resources in the template, such as C<{ "Ref" :
"MyEC2InstanceResource" }>.

=item *

C<ParameterReference> entities are C<Ref> intrinsic functions that get
template parameter values, such as C<{ "Ref" : "MyPasswordParameter"
}>.

=item *

C<ResourceAttribute> entities are C<Fn::GetAtt> intrinsic functions
that get resource attribute values, such as C<{ "Fn::GetAtt" : [
"MyEC2InstanceResource", "PublicDnsName" ] }>.

=item *

C<DirectModification> entities are changes that are made directly to
the template.

=item *

C<Automatic> entities are C<AWS::CloudFormation::Stack> resource types,
which are also known as nested stacks. If you made no changes to the
C<AWS::CloudFormation::Stack> resource, AWS CloudFormation sets the
C<ChangeSource> to C<Automatic> because the nested stack's template
might have changed. Changes to a nested stack's template aren't visible
to AWS CloudFormation until you run an update on the parent stack.

=back



=head2 Evaluation => Str

  Indicates whether AWS CloudFormation can determine the target value,
and whether the target value will change before you execute a change
set.

For C<Static> evaluations, AWS CloudFormation can determine that the
target value will change, and its value. For example, if you directly
modify the C<InstanceType> property of an EC2 instance, AWS
CloudFormation knows that this property value will change, and its
value, so this is a C<Static> evaluation.

For C<Dynamic> evaluations, cannot determine the target value because
it depends on the result of an intrinsic function, such as a C<Ref> or
C<Fn::GetAtt> intrinsic function, when the stack is updated. For
example, if your template includes a reference to a resource that is
conditionally recreated, the value of the reference (the physical ID of
the resource) might change, depending on if the resource is recreated.
If the resource is recreated, it will have a new physical ID, so all
references to that resource will also be updated.


=head2 Target => L<Paws::CloudFormation::ResourceTargetDefinition>

  A C<ResourceTargetDefinition> structure that describes the field that
AWS CloudFormation will change and whether the resource will be
recreated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

