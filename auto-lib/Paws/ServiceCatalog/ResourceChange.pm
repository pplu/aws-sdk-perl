package Paws::ServiceCatalog::ResourceChange;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has Details => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ResourceChangeDetail]');
  has LogicalResourceId => (is => 'ro', isa => 'Str');
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has Replacement => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has Scope => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ResourceChange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ResourceChange object:

  $service_obj->Method(Att1 => { Action => $value, ..., Scope => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ResourceChange object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Information about a resource change that will occur when a plan is
executed.

=head1 ATTRIBUTES


=head2 Action => Str

  The change action.


=head2 Details => ArrayRef[L<Paws::ServiceCatalog::ResourceChangeDetail>]

  Information about the resource changes.


=head2 LogicalResourceId => Str

  The ID of the resource, as defined in the CloudFormation template.


=head2 PhysicalResourceId => Str

  The ID of the resource, if it was already created.


=head2 Replacement => Str

  If the change type is C<Modify>, indicates whether the existing
resource is deleted and replaced with a new one.


=head2 ResourceType => Str

  The type of resource.


=head2 Scope => ArrayRef[Str|Undef]

  The change scope.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

