
package Paws::ResourceGroups::UpdateGroupQuery;
  use Moose;
  has Group => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has ResourceQuery => (is => 'ro', isa => 'Paws::ResourceGroups::ResourceQuery', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGroupQuery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-group-query');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceGroups::UpdateGroupQueryOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::UpdateGroupQuery - Arguments for method UpdateGroupQuery on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGroupQuery on the
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method UpdateGroupQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGroupQuery.

=head1 SYNOPSIS

    my $resource-groups = Paws->service('ResourceGroups');
    my $UpdateGroupQueryOutput = $resource -groups->UpdateGroupQuery(
      ResourceQuery => {
        Query => 'MyQuery',          # max: 4096
        Type  => 'TAG_FILTERS_1_0'
        ,    # values: TAG_FILTERS_1_0, CLOUDFORMATION_STACK_1_0min: 1, max: 128

      },
      Group     => 'MyGroupString',    # OPTIONAL
      GroupName => 'MyGroupName',      # OPTIONAL
    );

    # Results:
    my $GroupQuery = $UpdateGroupQueryOutput->GroupQuery;

    # Returns a L<Paws::ResourceGroups::UpdateGroupQueryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/UpdateGroupQuery>

=head1 ATTRIBUTES


=head2 Group => Str

The name or the ARN of the resource group to query.



=head2 GroupName => Str

Don't use this parameter. Use C<Group> instead.



=head2 B<REQUIRED> ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>

The resource query to determine which AWS resources are members of this
resource group.

A resource group can contain either a C<Configuration> or a
C<ResourceQuery>, but not both.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGroupQuery in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

