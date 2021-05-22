
package Paws::WellArchitected::GetMilestone;
  use Moose;
  has MilestoneNumber => (is => 'ro', isa => 'Int', traits => ['ParamInURI'], uri_name => 'MilestoneNumber', required => 1);
  has WorkloadId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'WorkloadId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMilestone');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workloads/{WorkloadId}/milestones/{MilestoneNumber}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::GetMilestoneOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::GetMilestone - Arguments for method GetMilestone on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMilestone on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method GetMilestone.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMilestone.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $GetMilestoneOutput = $wellarchitected->GetMilestone(
      MilestoneNumber => 1,
      WorkloadId      => 'MyWorkloadId',

    );

    # Results:
    my $Milestone  = $GetMilestoneOutput->Milestone;
    my $WorkloadId = $GetMilestoneOutput->WorkloadId;

    # Returns a L<Paws::WellArchitected::GetMilestoneOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/GetMilestone>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MilestoneNumber => Int





=head2 B<REQUIRED> WorkloadId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMilestone in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

