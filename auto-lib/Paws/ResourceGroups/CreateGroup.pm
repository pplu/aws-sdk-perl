
package Paws::ResourceGroups::CreateGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ResourceQuery => (is => 'ro', isa => 'Paws::ResourceGroups::ResourceQuery', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ResourceGroups::Tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/groups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceGroups::CreateGroupOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::CreateGroup - Arguments for method CreateGroup on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGroup on the
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method CreateGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGroup.

=head1 SYNOPSIS

    my $resource-groups = Paws->service('ResourceGroups');
    my $CreateGroupOutput = $resource -groups->CreateGroup(
      Name          => 'MyGroupName',
      ResourceQuery => {
        Query => 'MyQuery',    # max: 2048
        Type =>
          'TAG_FILTERS_1_0', # values: TAG_FILTERS_1_0, CLOUDFORMATION_STACK_1_0

      },
      Description => 'MyGroupDescription',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Group         = $CreateGroupOutput->Group;
    my $ResourceQuery = $CreateGroupOutput->ResourceQuery;
    my $Tags          = $CreateGroupOutput->Tags;

    # Returns a L<Paws::ResourceGroups::CreateGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/CreateGroup>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the resource group. Descriptions can have a maximum
of 511 characters, including letters, numbers, hyphens, underscores,
punctuation, and spaces.



=head2 B<REQUIRED> Name => Str

The name of the group, which is the identifier of the group in other
operations. A resource group name cannot be updated after it is
created. A resource group name can have a maximum of 128 characters,
including letters, numbers, hyphens, dots, and underscores. The name
cannot start with C<AWS> or C<aws>; these are reserved. A resource
group name must be unique within your account.



=head2 B<REQUIRED> ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>

The resource query that determines which AWS resources are members of
this group.



=head2 Tags => L<Paws::ResourceGroups::Tags>

The tags to add to the group. A tag is a string-to-string map of
key-value pairs. Tag keys can have a maximum character length of 128
characters, and tag values can have a maximum length of 256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGroup in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

