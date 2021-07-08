
package Paws::ImageBuilder::PutComponentPolicy;
  use Moose;
  has ComponentArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentArn', required => 1);
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutComponentPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/PutComponentPolicy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::PutComponentPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::PutComponentPolicy - Arguments for method PutComponentPolicy on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutComponentPolicy on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method PutComponentPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutComponentPolicy.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $PutComponentPolicyResponse = $imagebuilder->PutComponentPolicy(
      ComponentArn => 'MyComponentBuildVersionArn',
      Policy       => 'MyResourcePolicyDocument',

    );

    # Results:
    my $ComponentArn = $PutComponentPolicyResponse->ComponentArn;
    my $RequestId    = $PutComponentPolicyResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::PutComponentPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/PutComponentPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComponentArn => Str

The Amazon Resource Name (ARN) of the component that this policy should
be applied to.



=head2 B<REQUIRED> Policy => Str

The policy to apply.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutComponentPolicy in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

