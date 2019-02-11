
package Paws::WorkSpaces::CreateTags;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::CreateTagsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CreateTags - Arguments for method CreateTags on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTags on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method CreateTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTags.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $CreateTagsResult = $workspaces->CreateTags(
      ResourceId => 'MyNonEmptyString',
      Tags       => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 127
          Value => 'MyTagValue',    # max: 255; OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/CreateTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The identifier of the WorkSpace. To find this ID, use
DescribeWorkspaces.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::WorkSpaces::Tag>]

The tags. Each WorkSpace can have a maximum of 50 tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTags in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

