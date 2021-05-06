
package Paws::DS::RemoveTagsFromResource;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTagsFromResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::RemoveTagsFromResourceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::RemoveTagsFromResource - Arguments for method RemoveTagsFromResource on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTagsFromResource on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method RemoveTagsFromResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTagsFromResource.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $RemoveTagsFromResourceResult = $ds->RemoveTagsFromResource(
      ResourceId => 'MyResourceId',
      TagKeys    => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/RemoveTagsFromResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

Identifier (ID) of the directory from which to remove the tag.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The tag key (name) of the tag to be removed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveTagsFromResource in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

