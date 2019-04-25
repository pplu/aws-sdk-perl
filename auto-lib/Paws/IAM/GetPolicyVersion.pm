
package Paws::IAM::GetPolicyVersion;
  use Moose;
  has PolicyArn => (is => 'ro', isa => 'Str', required => 1);
  has VersionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPolicyVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GetPolicyVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetPolicyVersionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetPolicyVersion - Arguments for method GetPolicyVersion on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPolicyVersion on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method GetPolicyVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPolicyVersion.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $GetPolicyVersionResponse = $iam->GetPolicyVersion(
      PolicyArn => 'MyarnType',
      VersionId => 'MypolicyVersionIdType',

    );

    # Results:
    my $PolicyVersion = $GetPolicyVersionResponse->PolicyVersion;

    # Returns a L<Paws::IAM::GetPolicyVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/GetPolicyVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyArn => Str

The Amazon Resource Name (ARN) of the managed policy that you want
information about.

For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<AWS General Reference>.



=head2 B<REQUIRED> VersionId => Str

Identifies the policy version to retrieve.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters that consists
of the lowercase letter 'v' followed by one or two digits, and
optionally followed by a period '.' and a string of letters and digits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPolicyVersion in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

