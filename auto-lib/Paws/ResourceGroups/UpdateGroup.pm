
package Paws::ResourceGroups::UpdateGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/groups/{GroupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
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
      GroupName   => 'MyGroupName',
      Description => 'MyGroupDescription',    # OPTIONAL
    );

    # Results:
    my $Group = $UpdateGroupOutput->Group;

    # Returns a L<Paws::ResourceGroups::UpdateGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/UpdateGroup>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the resource group. Descriptions can have a maximum
of 511 characters, including letters, numbers, hyphens, underscores,
punctuation, and spaces.



=head2 B<REQUIRED> GroupName => Str

The name of the resource group for which you want to update its
description.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGroup in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

