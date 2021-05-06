
package Paws::ImageBuilder::DeleteComponent;
  use Moose;
  has ComponentBuildVersionArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'componentBuildVersionArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteComponent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DeleteComponent');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::DeleteComponentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::DeleteComponent - Arguments for method DeleteComponent on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteComponent on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method DeleteComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteComponent.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $DeleteComponentResponse = $imagebuilder->DeleteComponent(
      ComponentBuildVersionArn => 'MyComponentBuildVersionArn',

    );

    # Results:
    my $ComponentBuildVersionArn =
      $DeleteComponentResponse->ComponentBuildVersionArn;
    my $RequestId = $DeleteComponentResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::DeleteComponentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/DeleteComponent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComponentBuildVersionArn => Str

The Amazon Resource Name (ARN) of the component build version to
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteComponent in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

