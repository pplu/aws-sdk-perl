
package Paws::ECS::DeleteCapacityProvider;
  use Moose;
  has CapacityProvider => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'capacityProvider' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCapacityProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::DeleteCapacityProviderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeleteCapacityProvider - Arguments for method DeleteCapacityProvider on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCapacityProvider on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method DeleteCapacityProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCapacityProvider.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $DeleteCapacityProviderResponse = $ecs->DeleteCapacityProvider(
      CapacityProvider => 'MyString',

    );

    # Results:
    my $CapacityProvider = $DeleteCapacityProviderResponse->CapacityProvider;

    # Returns a L<Paws::ECS::DeleteCapacityProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/DeleteCapacityProvider>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapacityProvider => Str

The short name or full Amazon Resource Name (ARN) of the capacity
provider to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCapacityProvider in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

