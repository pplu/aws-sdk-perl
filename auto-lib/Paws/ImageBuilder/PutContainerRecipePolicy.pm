
package Paws::ImageBuilder::PutContainerRecipePolicy;
  use Moose;
  has ContainerRecipeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'containerRecipeArn', required => 1);
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutContainerRecipePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/PutContainerRecipePolicy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::PutContainerRecipePolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::PutContainerRecipePolicy - Arguments for method PutContainerRecipePolicy on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutContainerRecipePolicy on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method PutContainerRecipePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutContainerRecipePolicy.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $PutContainerRecipePolicyResponse =
      $imagebuilder->PutContainerRecipePolicy(
      ContainerRecipeArn => 'MyContainerRecipeArn',
      Policy             => 'MyResourcePolicyDocument',

      );

    # Results:
    my $ContainerRecipeArn =
      $PutContainerRecipePolicyResponse->ContainerRecipeArn;
    my $RequestId = $PutContainerRecipePolicyResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::PutContainerRecipePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/PutContainerRecipePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContainerRecipeArn => Str

The Amazon Resource Name (ARN) of the container recipe that this policy
should be applied to.



=head2 B<REQUIRED> Policy => Str

The policy to apply to the container recipe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutContainerRecipePolicy in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

