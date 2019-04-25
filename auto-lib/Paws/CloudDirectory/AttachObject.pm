
package Paws::CloudDirectory::AttachObject;
  use Moose;
  has ChildReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);
  has LinkName => (is => 'ro', isa => 'Str', required => 1);
  has ParentReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/object/attach');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::AttachObjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::AttachObject - Arguments for method AttachObject on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachObject on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method AttachObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachObject.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $AttachObjectResponse = $clouddirectory->AttachObject(
      ChildReference => {
        Selector => 'MySelectorObjectReference',    # OPTIONAL
      },
      DirectoryArn    => 'MyArn',
      LinkName        => 'MyLinkName',
      ParentReference => {
        Selector => 'MySelectorObjectReference',    # OPTIONAL
      },

    );

    # Results:
    my $AttachedObjectIdentifier =
      $AttachObjectResponse->AttachedObjectIdentifier;

    # Returns a L<Paws::CloudDirectory::AttachObjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/AttachObject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChildReference => L<Paws::CloudDirectory::ObjectReference>

The child object reference to be attached to the object.



=head2 B<REQUIRED> DirectoryArn => Str

Amazon Resource Name (ARN) that is associated with the Directory where
both objects reside. For more information, see arns.



=head2 B<REQUIRED> LinkName => Str

The link name with which the child object is attached to the parent.



=head2 B<REQUIRED> ParentReference => L<Paws::CloudDirectory::ObjectReference>

The parent object reference.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachObject in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

