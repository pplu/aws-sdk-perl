
package Paws::SSM::RegisterPatchBaselineForPatchGroup;
  use Moose;
  has BaselineId => (is => 'ro', isa => 'Str', required => 1);
  has PatchGroup => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterPatchBaselineForPatchGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::RegisterPatchBaselineForPatchGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::RegisterPatchBaselineForPatchGroup - Arguments for method RegisterPatchBaselineForPatchGroup on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterPatchBaselineForPatchGroup on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method RegisterPatchBaselineForPatchGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterPatchBaselineForPatchGroup.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $RegisterPatchBaselineForPatchGroupResult =
      $ssm->RegisterPatchBaselineForPatchGroup(
      BaselineId => 'MyBaselineId',
      PatchGroup => 'MyPatchGroup',

      );

    # Results:
    my $BaselineId = $RegisterPatchBaselineForPatchGroupResult->BaselineId;
    my $PatchGroup = $RegisterPatchBaselineForPatchGroupResult->PatchGroup;

    # Returns a L<Paws::SSM::RegisterPatchBaselineForPatchGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/RegisterPatchBaselineForPatchGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaselineId => Str

The ID of the patch baseline to register the patch group with.



=head2 B<REQUIRED> PatchGroup => Str

The name of the patch group that should be registered with the patch
baseline.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterPatchBaselineForPatchGroup in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

