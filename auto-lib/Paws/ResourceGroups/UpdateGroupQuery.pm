
package Paws::ResourceGroups::UpdateGroupQuery;
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupName', required => 1);
  has ResourceQuery => (is => 'ro', isa => 'Paws::ResourceGroups::ResourceQuery', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGroupQuery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/groups/{GroupName}/query');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
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
      GroupName     => 'MyGroupName',
      ResourceQuery => {
        Query => 'MyQuery',    # max: 2048
        Type =>
          'TAG_FILTERS_1_0', # values: TAG_FILTERS_1_0, CLOUDFORMATION_STACK_1_0

      },

    );

    # Results:
    my $GroupQuery = $UpdateGroupQueryOutput->GroupQuery;

    # Returns a L<Paws::ResourceGroups::UpdateGroupQueryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/UpdateGroupQuery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupName => Str

The name of the resource group for which you want to edit the query.



=head2 B<REQUIRED> ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>

The resource query that determines which AWS resources are members of
the resource group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGroupQuery in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

