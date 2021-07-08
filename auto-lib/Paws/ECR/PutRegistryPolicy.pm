
package Paws::ECR::PutRegistryPolicy;
  use Moose;
  has PolicyText => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyText' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRegistryPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::PutRegistryPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::PutRegistryPolicy - Arguments for method PutRegistryPolicy on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRegistryPolicy on the
L<Amazon EC2 Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method PutRegistryPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRegistryPolicy.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $PutRegistryPolicyResponse = $api . ecr->PutRegistryPolicy(
      PolicyText => 'MyRegistryPolicyText',

    );

    # Results:
    my $PolicyText = $PutRegistryPolicyResponse->PolicyText;
    my $RegistryId = $PutRegistryPolicyResponse->RegistryId;

    # Returns a L<Paws::ECR::PutRegistryPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/PutRegistryPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyText => Str

The JSON policy text to apply to your registry. The policy text follows
the same format as IAM policy text. For more information, see Registry
permissions
(https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html)
in the I<Amazon Elastic Container Registry User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRegistryPolicy in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

