
package Paws::SSM::DescribePatchGroupState;
  use Moose;
  has PatchGroup => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePatchGroupState');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribePatchGroupStateResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribePatchGroupState - Arguments for method DescribePatchGroupState on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePatchGroupState on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribePatchGroupState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePatchGroupState.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribePatchGroupStateResult = $ssm->DescribePatchGroupState(
      PatchGroup => 'MyPatchGroup',

    );

    # Results:
    my $Instances = $DescribePatchGroupStateResult->Instances;
    my $InstancesWithFailedPatches =
      $DescribePatchGroupStateResult->InstancesWithFailedPatches;
    my $InstancesWithInstalledOtherPatches =
      $DescribePatchGroupStateResult->InstancesWithInstalledOtherPatches;
    my $InstancesWithInstalledPatches =
      $DescribePatchGroupStateResult->InstancesWithInstalledPatches;
    my $InstancesWithInstalledRejectedPatches =
      $DescribePatchGroupStateResult->InstancesWithInstalledRejectedPatches;
    my $InstancesWithMissingPatches =
      $DescribePatchGroupStateResult->InstancesWithMissingPatches;
    my $InstancesWithNotApplicablePatches =
      $DescribePatchGroupStateResult->InstancesWithNotApplicablePatches;

    # Returns a L<Paws::SSM::DescribePatchGroupStateResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribePatchGroupState>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PatchGroup => Str

The name of the patch group whose patch snapshot should be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePatchGroupState in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

