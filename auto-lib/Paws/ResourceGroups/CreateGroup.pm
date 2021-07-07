
package Paws::ResourceGroups::CreateGroup;
  use Moose;
  has Configuration => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::GroupConfigurationItem]');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ResourceQuery => (is => 'ro', isa => 'Paws::ResourceGroups::ResourceQuery');
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
      Configuration => [
        {
          Type       => 'MyGroupConfigurationType',    # max: 40
          Parameters => [
            {
              Name   => 'MyGroupConfigurationParameterName',   # min: 1, max: 80
              Values => [
                'MyGroupConfigurationParameterValue', ...    # min: 1, max: 256
              ],    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Description   => 'MyDescription',    # OPTIONAL
      ResourceQuery => {
        Query => 'MyQuery',                # max: 4096
        Type  => 'TAG_FILTERS_1_0'
        ,    # values: TAG_FILTERS_1_0, CLOUDFORMATION_STACK_1_0min: 1, max: 128

      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Group              = $CreateGroupOutput->Group;
    my $GroupConfiguration = $CreateGroupOutput->GroupConfiguration;
    my $ResourceQuery      = $CreateGroupOutput->ResourceQuery;
    my $Tags               = $CreateGroupOutput->Tags;

    # Returns a L<Paws::ResourceGroups::CreateGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/CreateGroup>

=head1 ATTRIBUTES


=head2 Configuration => ArrayRef[L<Paws::ResourceGroups::GroupConfigurationItem>]

A configuration associates the resource group with an AWS service and
specifies how the service can interact with the resources in the group.
A configuration is an array of GroupConfigurationItem elements. For
details about the syntax of service configurations, see Service
configurations for resource groups
(https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html).

A resource group can contain either a C<Configuration> or a
C<ResourceQuery>, but not both.



=head2 Description => Str

The description of the resource group. Descriptions can consist of
letters, numbers, hyphens, underscores, periods, and spaces.



=head2 B<REQUIRED> Name => Str

The name of the group, which is the identifier of the group in other
operations. You can't change the name of a resource group after you
create it. A resource group name can consist of letters, numbers,
hyphens, periods, and underscores. The name cannot start with C<AWS> or
C<aws>; these are reserved. A resource group name must be unique within
each AWS Region in your AWS account.



=head2 ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>

The resource query that determines which AWS resources are members of
this group. For more information about resource queries, see Create a
tag-based group in Resource Groups
(https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag).

A resource group can contain either a C<ResourceQuery> or a
C<Configuration>, but not both.



=head2 Tags => L<Paws::ResourceGroups::Tags>

The tags to add to the group. A tag is key-value pair string.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGroup in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

