
package Paws::ResourceGroups::UpdateGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Group => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-group');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceGroups::UpdateGroupOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::UpdateGroup - Arguments for method UpdateGroup on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGroup on the
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method UpdateGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGroup.

=head1 SYNOPSIS

    my $resource-groups = Paws->service('ResourceGroups');
    my $UpdateGroupOutput = $resource -groups->UpdateGroup(
      Description => 'MyDescription',    # OPTIONAL
      Group       => 'MyGroupString',    # OPTIONAL
      GroupName   => 'MyGroupName',      # OPTIONAL
    );

    # Results:
    my $Group = $UpdateGroupOutput->Group;

    # Returns a L<Paws::ResourceGroups::UpdateGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/UpdateGroup>

=head1 ATTRIBUTES


=head2 Description => Str

The new description that you want to update the resource group with.
Descriptions can contain letters, numbers, hyphens, underscores,
periods, and spaces.



=head2 Group => Str

The name or the ARN of the resource group to modify.



=head2 GroupName => Str

Don't use this parameter. Use C<Group> instead.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGroup in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

