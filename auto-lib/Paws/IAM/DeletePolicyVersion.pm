
package Paws::IAM::DeletePolicyVersion;
  use Moose;
  has PolicyArn => (is => 'ro', isa => 'Str', required => 1);
  has VersionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePolicyVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::DeletePolicyVersion - Arguments for method DeletePolicyVersion on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePolicyVersion on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method DeletePolicyVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePolicyVersion.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    $iam->DeletePolicyVersion(
      PolicyArn => 'MyarnType',
      VersionId => 'MypolicyVersionIdType',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/DeletePolicyVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyArn => Str

The Amazon Resource Name (ARN) of the IAM policy from which you want to
delete a version.

For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<AWS General Reference>.



=head2 B<REQUIRED> VersionId => Str

The policy version to delete.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters that consists
of the lowercase letter 'v' followed by one or two digits, and
optionally followed by a period '.' and a string of letters and digits.

For more information about managed policy versions, see Versioning for
Managed Policies
(http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html)
in the I<IAM User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePolicyVersion in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

