
package Paws::WellArchitected::UpdateWorkloadShare;
  use Moose;
  has PermissionType => (is => 'ro', isa => 'Str', required => 1);
  has ShareId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ShareId', required => 1);
  has WorkloadId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'WorkloadId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkloadShare');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workloads/{WorkloadId}/shares/{ShareId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::UpdateWorkloadShareOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::UpdateWorkloadShare - Arguments for method UpdateWorkloadShare on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkloadShare on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method UpdateWorkloadShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkloadShare.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $UpdateWorkloadShareOutput = $wellarchitected->UpdateWorkloadShare(
      PermissionType => 'READONLY',
      ShareId        => 'MyShareId',
      WorkloadId     => 'MyWorkloadId',

    );

    # Results:
    my $WorkloadId    = $UpdateWorkloadShareOutput->WorkloadId;
    my $WorkloadShare = $UpdateWorkloadShareOutput->WorkloadShare;

    # Returns a L<Paws::WellArchitected::UpdateWorkloadShareOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/UpdateWorkloadShare>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PermissionType => Str



Valid values are: C<"READONLY">, C<"CONTRIBUTOR">

=head2 B<REQUIRED> ShareId => Str





=head2 B<REQUIRED> WorkloadId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkloadShare in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

