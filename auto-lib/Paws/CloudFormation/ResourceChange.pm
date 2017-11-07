package Paws::CloudFormation::ResourceChange;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has Details => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::ResourceChangeDetail]');
  has LogicalResourceId => (is => 'ro', isa => 'Str');
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has Replacement => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has Scope => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ResourceChange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::ResourceChange object:

  $service_obj->Method(Att1 => { Action => $value, ..., Scope => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::ResourceChange object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

The C<ResourceChange> structure describes the resource and the action
that AWS CloudFormation will perform on it if you execute this change
set.

=head1 ATTRIBUTES


=head2 Action => Str

  The action that AWS CloudFormation takes on the resource, such as
C<Add> (adds a new resource), C<Modify> (changes a resource), or
C<Remove> (deletes a resource).


=head2 Details => ArrayRef[L<Paws::CloudFormation::ResourceChangeDetail>]

  For the C<Modify> action, a list of C<ResourceChangeDetail> structures
that describes the changes that AWS CloudFormation will make to the
resource.


=head2 LogicalResourceId => Str

  The resource's logical ID, which is defined in the stack's template.


=head2 PhysicalResourceId => Str

  The resource's physical ID (resource name). Resources that you are
adding don't have physical IDs because they haven't been created.


=head2 Replacement => Str

  For the C<Modify> action, indicates whether AWS CloudFormation will
replace the resource by creating a new one and deleting the old one.
This value depends on the value of the C<RequiresRecreation> property
in the C<ResourceTargetDefinition> structure. For example, if the
C<RequiresRecreation> field is C<Always> and the C<Evaluation> field is
C<Static>, C<Replacement> is C<True>. If the C<RequiresRecreation>
field is C<Always> and the C<Evaluation> field is C<Dynamic>,
C<Replacement> is C<Conditionally>.

If you have multiple changes with different C<RequiresRecreation>
values, the C<Replacement> value depends on the change with the most
impact. A C<RequiresRecreation> value of C<Always> has the most impact,
followed by C<Conditionally>, and then C<Never>.


=head2 ResourceType => Str

  The type of AWS CloudFormation resource, such as C<AWS::S3::Bucket>.


=head2 Scope => ArrayRef[Str|Undef]

  For the C<Modify> action, indicates which resource attribute is
triggering this update, such as a change in the resource attribute's
C<Metadata>, C<Properties>, or C<Tags>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

