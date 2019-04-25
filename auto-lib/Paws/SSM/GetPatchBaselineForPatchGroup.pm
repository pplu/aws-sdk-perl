
package Paws::SSM::GetPatchBaselineForPatchGroup;
  use Moose;
  has OperatingSystem => (is => 'ro', isa => 'Str');
  has PatchGroup => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPatchBaselineForPatchGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetPatchBaselineForPatchGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetPatchBaselineForPatchGroup - Arguments for method GetPatchBaselineForPatchGroup on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPatchBaselineForPatchGroup on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetPatchBaselineForPatchGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPatchBaselineForPatchGroup.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $GetPatchBaselineForPatchGroupResult =
      $ssm->GetPatchBaselineForPatchGroup(
      PatchGroup      => 'MyPatchGroup',
      OperatingSystem => 'WINDOWS',        # OPTIONAL
      );

    # Results:
    my $BaselineId      = $GetPatchBaselineForPatchGroupResult->BaselineId;
    my $OperatingSystem = $GetPatchBaselineForPatchGroupResult->OperatingSystem;
    my $PatchGroup      = $GetPatchBaselineForPatchGroupResult->PatchGroup;

    # Returns a L<Paws::SSM::GetPatchBaselineForPatchGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/GetPatchBaselineForPatchGroup>

=head1 ATTRIBUTES


=head2 OperatingSystem => Str

Returns he operating system rule specified for patch groups using the
patch baseline.

Valid values are: C<"WINDOWS">, C<"AMAZON_LINUX">, C<"AMAZON_LINUX_2">, C<"UBUNTU">, C<"REDHAT_ENTERPRISE_LINUX">, C<"SUSE">, C<"CENTOS">

=head2 B<REQUIRED> PatchGroup => Str

The name of the patch group whose patch baseline should be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPatchBaselineForPatchGroup in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

