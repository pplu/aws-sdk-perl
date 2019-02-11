
package Paws::SecurityHub::UpdateFindings;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::SecurityHub::AwsSecurityFindingFilters', required => 1);
  has Note => (is => 'ro', isa => 'Paws::SecurityHub::NoteUpdate');
  has RecordState => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFindings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::UpdateFindingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::UpdateFindings - Arguments for method UpdateFindings on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFindings on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method UpdateFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFindings.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $UpdateFindingsResponse = $securityhub->UpdateFindings(
      Filters => {
        AwsAccountId => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        CompanyName => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ComplianceStatus => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        Confidence => [
          {
            Eq  => 1,                       # OPTIONAL
            Gte => 1,                       # OPTIONAL
            Lte => 1,                       # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        CreatedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',              # values: DAYS; OPTIONAL
              Value => 1,                   # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        Criticality => [
          {
            Eq  => 1,                       # OPTIONAL
            Gte => 1,                       # OPTIONAL
            Lte => 1,                       # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        Description => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        FirstObservedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',              # values: DAYS; OPTIONAL
              Value => 1,                   # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        GeneratorId => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        Id => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        Keyword => [
          {
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        LastObservedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',              # values: DAYS; OPTIONAL
              Value => 1,                   # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        MalwareName => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        MalwarePath => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        MalwareState => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        MalwareType => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        NetworkDestinationDomain => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        NetworkDestinationIpV4 => [
          {
            Cidr => 'MyNonEmptyString',     # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        NetworkDestinationIpV6 => [
          {
            Cidr => 'MyNonEmptyString',     # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        NetworkDestinationPort => [
          {
            Eq  => 1,                       # OPTIONAL
            Gte => 1,                       # OPTIONAL
            Lte => 1,                       # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        NetworkDirection => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        NetworkProtocol => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        NetworkSourceDomain => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        NetworkSourceIpV4 => [
          {
            Cidr => 'MyNonEmptyString',     # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        NetworkSourceIpV6 => [
          {
            Cidr => 'MyNonEmptyString',     # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        NetworkSourceMac => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        NetworkSourcePort => [
          {
            Eq  => 1,                       # OPTIONAL
            Gte => 1,                       # OPTIONAL
            Lte => 1,                       # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        NoteText => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        NoteUpdatedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',              # values: DAYS; OPTIONAL
              Value => 1,                   # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        NoteUpdatedBy => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ProcessLaunchedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',              # values: DAYS; OPTIONAL
              Value => 1,                   # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ProcessName => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ProcessParentPid => [
          {
            Eq  => 1,                       # OPTIONAL
            Gte => 1,                       # OPTIONAL
            Lte => 1,                       # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ProcessPath => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ProcessPid => [
          {
            Eq  => 1,                       # OPTIONAL
            Gte => 1,                       # OPTIONAL
            Lte => 1,                       # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ProcessTerminatedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',              # values: DAYS; OPTIONAL
              Value => 1,                   # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ProductArn => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ProductFields => [
          {
            Comparison => 'CONTAINS',            # values: CONTAINS; OPTIONAL
            Key        => 'MyNonEmptyString',    # OPTIONAL
            Value      => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                       # OPTIONAL
        ProductName => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        RecommendationText => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        RecordState => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        RelatedFindingsId => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        RelatedFindingsProductArn => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceAwsEc2InstanceIamInstanceProfileArn => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceAwsEc2InstanceImageId => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceAwsEc2InstanceIpV4Addresses => [
          {
            Cidr => 'MyNonEmptyString',     # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceAwsEc2InstanceIpV6Addresses => [
          {
            Cidr => 'MyNonEmptyString',     # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceAwsEc2InstanceKeyName => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceAwsEc2InstanceLaunchedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',              # values: DAYS; OPTIONAL
              Value => 1,                   # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceAwsEc2InstanceSubnetId => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceAwsEc2InstanceType => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceAwsEc2InstanceVpcId => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceAwsIamAccessKeyCreatedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',              # values: DAYS; OPTIONAL
              Value => 1,                   # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceAwsIamAccessKeyStatus => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceAwsIamAccessKeyUserName => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceAwsS3BucketOwnerId => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceAwsS3BucketOwnerName => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceContainerImageId => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceContainerImageName => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceContainerLaunchedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',              # values: DAYS; OPTIONAL
              Value => 1,                   # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceContainerName => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceDetailsOther => [
          {
            Comparison => 'CONTAINS',            # values: CONTAINS; OPTIONAL
            Key        => 'MyNonEmptyString',    # OPTIONAL
            Value      => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                       # OPTIONAL
        ResourceId => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourcePartition => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceRegion => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ResourceTags => [
          {
            Comparison => 'CONTAINS',            # values: CONTAINS; OPTIONAL
            Key        => 'MyNonEmptyString',    # OPTIONAL
            Value      => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                       # OPTIONAL
        ResourceType => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        SeverityLabel => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        SeverityNormalized => [
          {
            Eq  => 1,                       # OPTIONAL
            Gte => 1,                       # OPTIONAL
            Lte => 1,                       # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        SeverityProduct => [
          {
            Eq  => 1,                       # OPTIONAL
            Gte => 1,                       # OPTIONAL
            Lte => 1,                       # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        SourceUrl => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ThreatIntelIndicatorCategory => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ThreatIntelIndicatorLastObservedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',              # values: DAYS; OPTIONAL
              Value => 1,                   # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ThreatIntelIndicatorSource => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ThreatIntelIndicatorSourceUrl => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ThreatIntelIndicatorType => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        ThreatIntelIndicatorValue => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        Title => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        Type => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        UpdatedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',              # values: DAYS; OPTIONAL
              Value => 1,                   # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',    # OPTIONAL
            Start => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        UserDefinedFields => [
          {
            Comparison => 'CONTAINS',            # values: CONTAINS; OPTIONAL
            Key        => 'MyNonEmptyString',    # OPTIONAL
            Value      => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                       # OPTIONAL
        VerificationState => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        WorkflowState => [
          {
            Comparison => 'EQUALS', # values: EQUALS, CONTAINS, PREFIX; OPTIONAL
            Value => 'MyNonEmptyString',    # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
      },
      Note => {
        Text      => 'MyNonEmptyString',    # OPTIONAL
        UpdatedBy => 'MyNonEmptyString',    # OPTIONAL

      },    # OPTIONAL
      RecordState => 'ACTIVE',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/UpdateFindings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Filters => L<Paws::SecurityHub::AwsSecurityFindingFilters>

A collection of attributes that specify what findings you want to
update.



=head2 Note => L<Paws::SecurityHub::NoteUpdate>

The updated note for the finding.



=head2 RecordState => Str

The updated record state for the finding.

Valid values are: C<"ACTIVE">, C<"ARCHIVED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFindings in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

