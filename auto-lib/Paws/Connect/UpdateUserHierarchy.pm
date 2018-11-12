
package Paws::Connect::UpdateUserHierarchy;
  use Moose;
  has HierarchyGroupId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'UserId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUserHierarchy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/users/{InstanceId}/{UserId}/hierarchy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateUserHierarchy - Arguments for method UpdateUserHierarchy on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUserHierarchy on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateUserHierarchy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUserHierarchy.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->UpdateUserHierarchy(
      InstanceId       => 'MyInstanceId',
      UserId           => 'MyUserId',
      HierarchyGroupId => 'MyHierarchyGroupId',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateUserHierarchy>

=head1 ATTRIBUTES


=head2 HierarchyGroupId => Str

The identifier for the hierarchy group to assign to the user.



=head2 B<REQUIRED> InstanceId => Str

The identifier for your Amazon Connect instance. To find the ID of your
instance, open the AWS console and select Amazon Connect. Select the
alias of the instance in the Instance alias column. The instance ID is
displayed in the Overview section of your instance settings. For
example, the instance ID is the set of characters at the end of the
instance ARN, after instance/, such as
10a4c4eb-f57e-4d4c-b602-bf39176ced07.



=head2 B<REQUIRED> UserId => Str

The identifier of the user account to assign the hierarchy group to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUserHierarchy in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

