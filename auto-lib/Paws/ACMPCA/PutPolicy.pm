
package Paws::ACMPCA::PutPolicy;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::PutPolicy - Arguments for method PutPolicy on L<Paws::ACMPCA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutPolicy on the
L<AWS Certificate Manager Private Certificate Authority|Paws::ACMPCA> service. Use the attributes of this class
as arguments to method PutPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutPolicy.

=head1 SYNOPSIS

    my $acm-pca = Paws->service('ACMPCA');
    $acm -pca->PutPolicy(
      Policy      => 'MyAWSPolicy',
      ResourceArn => 'MyArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm-pca/PutPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => Str

The path and file name of a JSON-formatted IAM policy to attach to the
specified private CA resource. If this policy does not contain all
required statements or if it includes any statement that is not
allowed, the C<PutPolicy> action returns an C<InvalidPolicyException>.
For information about IAM policy and statement structure, see Overview
of JSON Policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policies-json).



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Number (ARN) of the private CA to associate with
the policy. The ARN of the CA can be found by calling the
ListCertificateAuthorities
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html)
action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutPolicy in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

