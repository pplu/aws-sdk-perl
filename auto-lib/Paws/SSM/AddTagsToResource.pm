
package Paws::SSM::AddTagsToResource;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddTagsToResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::AddTagsToResourceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::AddTagsToResource - Arguments for method AddTagsToResource on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddTagsToResource on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method AddTagsToResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddTagsToResource.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $AddTagsToResourceResult = $ssm->AddTagsToResource(
      ResourceId   => 'MyResourceId',
      ResourceType => 'Document',
      Tags         => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/AddTagsToResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The resource ID you want to tag.

Use the ID of the resource. Here are some examples:

ManagedInstance: mi-012345abcde

MaintenanceWindow: mw-012345abcde

PatchBaseline: pb-012345abcde

For the Document and Parameter values, use the name of the resource.

The ManagedInstance type for this API action is only for on-premises
managed instances. You must specify the the name of the managed
instance in the following format: mi-ID_number. For example,
mi-1a2b3c4d5e6f.



=head2 B<REQUIRED> ResourceType => Str

Specifies the type of resource you are tagging.

The ManagedInstance type for this API action is for on-premises managed
instances. You must specify the the name of the managed instance in the
following format: mi-ID_number. For example, mi-1a2b3c4d5e6f.

Valid values are: C<"Document">, C<"ManagedInstance">, C<"MaintenanceWindow">, C<"Parameter">, C<"PatchBaseline">

=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::SSM::Tag>]

One or more tags. The value parameter is required, but if you don't
want the tag to have a value, specify the parameter with no value, and
we set the value to an empty string.

Do not enter personally identifiable information in this field.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddTagsToResource in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

