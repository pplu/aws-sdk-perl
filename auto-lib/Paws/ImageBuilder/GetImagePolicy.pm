
package Paws::ImageBuilder::GetImagePolicy;
  use Moose;
  has ImageArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'imageArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetImagePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetImagePolicy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::GetImagePolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::GetImagePolicy - Arguments for method GetImagePolicy on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetImagePolicy on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method GetImagePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetImagePolicy.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $GetImagePolicyResponse = $imagebuilder->GetImagePolicy(
      ImageArn => 'MyImageBuildVersionArn',

    );

    # Results:
    my $Policy    = $GetImagePolicyResponse->Policy;
    my $RequestId = $GetImagePolicyResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::GetImagePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/GetImagePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImageArn => Str

The Amazon Resource Name (ARN) of the image whose policy you want to
retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetImagePolicy in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

