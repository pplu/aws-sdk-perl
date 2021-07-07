
package Paws::WellArchitected::UpdateWorkload;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ArchitecturalDesign => (is => 'ro', isa => 'Str');
  has AwsRegions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Description => (is => 'ro', isa => 'Str');
  has Environment => (is => 'ro', isa => 'Str');
  has ImprovementStatus => (is => 'ro', isa => 'Str');
  has Industry => (is => 'ro', isa => 'Str');
  has IndustryType => (is => 'ro', isa => 'Str');
  has IsReviewOwnerUpdateAcknowledged => (is => 'ro', isa => 'Bool');
  has NonAwsRegions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Notes => (is => 'ro', isa => 'Str');
  has PillarPriorities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ReviewOwner => (is => 'ro', isa => 'Str');
  has WorkloadId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'WorkloadId', required => 1);
  has WorkloadName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkload');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workloads/{WorkloadId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::UpdateWorkloadOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::UpdateWorkload - Arguments for method UpdateWorkload on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkload on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method UpdateWorkload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkload.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $UpdateWorkloadOutput = $wellarchitected->UpdateWorkload(
      WorkloadId          => 'MyWorkloadId',
      AccountIds          => [ 'MyAwsAccountId', ... ],          # OPTIONAL
      ArchitecturalDesign => 'MyWorkloadArchitecturalDesign',    # OPTIONAL
      AwsRegions          => [
        'MyAwsRegion', ...                                       # max: 100
      ],    # OPTIONAL
      Description                     => 'MyWorkloadDescription',     # OPTIONAL
      Environment                     => 'PRODUCTION',                # OPTIONAL
      ImprovementStatus               => 'NOT_APPLICABLE',            # OPTIONAL
      Industry                        => 'MyWorkloadIndustry',        # OPTIONAL
      IndustryType                    => 'MyWorkloadIndustryType',    # OPTIONAL
      IsReviewOwnerUpdateAcknowledged => 1,                           # OPTIONAL
      NonAwsRegions                   => [
        'MyWorkloadNonAwsRegion', ...    # min: 3, max: 25
      ],    # OPTIONAL
      Notes            => 'MyNotes',    # OPTIONAL
      PillarPriorities => [
        'MyPillarId', ...               # min: 1, max: 64
      ],    # OPTIONAL
      ReviewOwner  => 'MyWorkloadReviewOwner',    # OPTIONAL
      WorkloadName => 'MyWorkloadName',           # OPTIONAL
    );

    # Results:
    my $Workload = $UpdateWorkloadOutput->Workload;

    # Returns a L<Paws::WellArchitected::UpdateWorkloadOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/UpdateWorkload>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]





=head2 ArchitecturalDesign => Str





=head2 AwsRegions => ArrayRef[Str|Undef]





=head2 Description => Str





=head2 Environment => Str



Valid values are: C<"PRODUCTION">, C<"PREPRODUCTION">

=head2 ImprovementStatus => Str



Valid values are: C<"NOT_APPLICABLE">, C<"NOT_STARTED">, C<"IN_PROGRESS">, C<"COMPLETE">, C<"RISK_ACKNOWLEDGED">

=head2 Industry => Str





=head2 IndustryType => Str





=head2 IsReviewOwnerUpdateAcknowledged => Bool

Flag indicating whether the workload owner has acknowledged that the
I<Review owner> field is required.

If a B<Review owner> is not added to the workload within 60 days of
acknowledgement, access to the workload is restricted until an owner is
added.



=head2 NonAwsRegions => ArrayRef[Str|Undef]





=head2 Notes => Str





=head2 PillarPriorities => ArrayRef[Str|Undef]





=head2 ReviewOwner => Str





=head2 B<REQUIRED> WorkloadId => Str





=head2 WorkloadName => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkload in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

