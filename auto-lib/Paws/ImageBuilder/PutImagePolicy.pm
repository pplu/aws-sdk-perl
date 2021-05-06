
package Paws::ImageBuilder::PutImagePolicy;
  use Moose;
  has ImageArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageArn', required => 1);
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutImagePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/PutImagePolicy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::PutImagePolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::PutImagePolicy - Arguments for method PutImagePolicy on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutImagePolicy on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method PutImagePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutImagePolicy.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $PutImagePolicyResponse = $imagebuilder->PutImagePolicy(
      ImageArn => 'MyImageBuildVersionArn',
      Policy   => 'MyNonEmptyString',

    );

    # Results:
    my $ImageArn  = $PutImagePolicyResponse->ImageArn;
    my $RequestId = $PutImagePolicyResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::PutImagePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/PutImagePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImageArn => Str

The Amazon Resource Name (ARN) of the image that this policy should be
applied to.



=head2 B<REQUIRED> Policy => Str

The policy to apply.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutImagePolicy in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

