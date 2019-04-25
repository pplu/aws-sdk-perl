
package Paws::SSM::ListTagsForResource;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::ListTagsForResourceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $ListTagsForResourceResult = $ssm->ListTagsForResource(
      ResourceId   => 'MyResourceId',
      ResourceType => 'Document',

    );

    # Results:
    my $TagList = $ListTagsForResourceResult->TagList;

    # Returns a L<Paws::SSM::ListTagsForResourceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/ListTagsForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The resource ID for which you want to see a list of tags.



=head2 B<REQUIRED> ResourceType => Str

Returns a list of tags for a specific resource type.

Valid values are: C<"Document">, C<"ManagedInstance">, C<"MaintenanceWindow">, C<"Parameter">, C<"PatchBaseline">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

