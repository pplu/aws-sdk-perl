
package Paws::ResourceGroups::GroupResources;
  use Moose;
  has Group => (is => 'ro', isa => 'Str', required => 1);
  has ResourceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GroupResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/group-resources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceGroups::GroupResourcesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::GroupResources - Arguments for method GroupResources on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GroupResources on the
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method GroupResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GroupResources.

=head1 SYNOPSIS

    my $resource-groups = Paws->service('ResourceGroups');
    my $GroupResourcesOutput = $resource -groups->GroupResources(
      Group        => 'MyGroupString',
      ResourceArns => [ 'MyResourceArn', ... ],

    );

    # Results:
    my $Failed    = $GroupResourcesOutput->Failed;
    my $Pending   = $GroupResourcesOutput->Pending;
    my $Succeeded = $GroupResourcesOutput->Succeeded;

    # Returns a L<Paws::ResourceGroups::GroupResourcesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/GroupResources>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Group => Str

The name or the ARN of the resource group to add resources to.



=head2 B<REQUIRED> ResourceArns => ArrayRef[Str|Undef]

The list of ARNs for resources to be added to the group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GroupResources in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

