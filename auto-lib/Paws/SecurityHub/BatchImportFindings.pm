
package Paws::SecurityHub::BatchImportFindings;
  use Moose;
  has Findings => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsSecurityFinding]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchImportFindings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findings/import');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::BatchImportFindingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchImportFindings - Arguments for method BatchImportFindings on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchImportFindings on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method BatchImportFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchImportFindings.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $BatchImportFindingsResponse = $securityhub->BatchImportFindings(
      Findings => [
        {
          AwsAccountId => 'MyNonEmptyString',
          CreatedAt    => 'MyNonEmptyString',
          GeneratorId  => 'MyNonEmptyString',
          Id           => 'MyNonEmptyString',
          ProductArn   => 'MyNonEmptyString',
          Resources    => [
            {
              Id      => 'MyNonEmptyString',
              Type    => 'MyNonEmptyString',
              Details => {
                AwsEc2Instance => {
                  IamInstanceProfileArn => 'MyNonEmptyString',
                  ImageId               => 'MyNonEmptyString',
                  IpV4Addresses => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  IpV6Addresses => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  KeyName       => 'MyNonEmptyString',
                  LaunchedAt    => 'MyNonEmptyString',
                  SubnetId      => 'MyNonEmptyString',
                  Type          => 'MyNonEmptyString',
                  VpcId         => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsIamAccessKey => {
                  CreatedAt => 'MyNonEmptyString',
                  Status => 'Active',    # values: Active, Inactive; OPTIONAL
                  UserName => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsS3Bucket => {
                  OwnerId   => 'MyNonEmptyString',
                  OwnerName => 'MyNonEmptyString',
                },    # OPTIONAL
                Container => {
                  ImageId    => 'MyNonEmptyString',
                  ImageName  => 'MyNonEmptyString',
                  LaunchedAt => 'MyNonEmptyString',
                  Name       => 'MyNonEmptyString',
                },    # OPTIONAL
                Other => { 'MyNonEmptyString' => 'MyNonEmptyString', }
                ,     # OPTIONAL
              },    # OPTIONAL
              Partition => 'aws',    # values: aws, aws-cn, aws-us-gov; OPTIONAL
              Region => 'MyNonEmptyString',
              Tags => { 'MyNonEmptyString' => 'MyNonEmptyString', },  # OPTIONAL
            },
            ...
          ],
          SchemaVersion => 'MyNonEmptyString',
          Severity      => {
            Normalized => 1,
            Product    => 1,                                          # OPTIONAL
          },
          Types      => [ 'MyNonEmptyString', ... ],
          UpdatedAt  => 'MyNonEmptyString',
          Compliance => {
            Status => 'PASSED'
            ,    # values: PASSED, WARNING, FAILED, NOT_AVAILABLE; OPTIONAL
          },    # OPTIONAL
          Confidence      => 1,
          Criticality     => 1,
          Description     => 'MyNonEmptyString',
          FirstObservedAt => 'MyNonEmptyString',
          LastObservedAt  => 'MyNonEmptyString',
          Malware         => [
            {
              Name  => 'MyNonEmptyString',
              Path  => 'MyNonEmptyString',
              State => 'OBSERVED'
              ,    # values: OBSERVED, REMOVAL_FAILED, REMOVED; OPTIONAL
              Type => 'ADWARE'
              , # values: ADWARE, BLENDED_THREAT, BOTNET_AGENT, COIN_MINER, EXPLOIT_KIT, KEYLOGGER, MACRO, POTENTIALLY_UNWANTED, SPYWARE, RANSOMWARE, REMOTE_ACCESS, ROOTKIT, TROJAN, VIRUS, WORM; OPTIONAL
            },
            ...
          ],    # OPTIONAL
          Network => {
            DestinationDomain => 'MyNonEmptyString',
            DestinationIpV4   => 'MyNonEmptyString',
            DestinationIpV6   => 'MyNonEmptyString',
            DestinationPort   => 1,
            Direction         => 'IN',               # values: IN, OUT; OPTIONAL
            Protocol          => 'MyNonEmptyString',
            SourceDomain      => 'MyNonEmptyString',
            SourceIpV4        => 'MyNonEmptyString',
            SourceIpV6        => 'MyNonEmptyString',
            SourceMac         => 'MyNonEmptyString',
            SourcePort        => 1,
          },    # OPTIONAL
          Note => {
            Text      => 'MyNonEmptyString',
            UpdatedAt => 'MyNonEmptyString',
            UpdatedBy => 'MyNonEmptyString',

          },    # OPTIONAL
          Process => {
            LaunchedAt   => 'MyNonEmptyString',
            Name         => 'MyNonEmptyString',
            ParentPid    => 1,
            Path         => 'MyNonEmptyString',
            Pid          => 1,
            TerminatedAt => 'MyNonEmptyString',
          },    # OPTIONAL
          ProductFields => { 'MyNonEmptyString' => 'MyNonEmptyString', }
          ,     # OPTIONAL
          RecordState     => 'ACTIVE',    # values: ACTIVE, ARCHIVED; OPTIONAL
          RelatedFindings => [
            {
              Id         => 'MyNonEmptyString',
              ProductArn => 'MyNonEmptyString',

            },
            ...
          ],                              # OPTIONAL
          Remediation => {
            Recommendation => {
              Text => 'MyNonEmptyString',
              Url  => 'MyNonEmptyString',
            },                            # OPTIONAL
          },    # OPTIONAL
          SourceUrl             => 'MyNonEmptyString',
          ThreatIntelIndicators => [
            {
              Category => 'BACKDOOR'
              , # values: BACKDOOR, CARD_STEALER, COMMAND_AND_CONTROL, DROP_SITE, EXPLOIT_SITE, KEYLOGGER; OPTIONAL
              LastObservedAt => 'MyNonEmptyString',
              Source         => 'MyNonEmptyString',
              SourceUrl      => 'MyNonEmptyString',
              Type           => 'DOMAIN'
              , # values: DOMAIN, EMAIL_ADDRESS, HASH_MD5, HASH_SHA1, HASH_SHA256, HASH_SHA512, IPV4_ADDRESS, IPV6_ADDRESS, MUTEX, PROCESS, URL; OPTIONAL
              Value => 'MyNonEmptyString',
            },
            ...
          ],    # OPTIONAL
          Title             => 'MyNonEmptyString',
          UserDefinedFields => { 'MyNonEmptyString' => 'MyNonEmptyString', }
          ,     # OPTIONAL
          VerificationState => 'UNKNOWN'
          , # values: UNKNOWN, TRUE_POSITIVE, FALSE_POSITIVE, BENIGN_POSITIVE; OPTIONAL
          WorkflowState => 'NEW'
          ,   # values: NEW, ASSIGNED, IN_PROGRESS, DEFERRED, RESOLVED; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $FailedCount    = $BatchImportFindingsResponse->FailedCount;
    my $FailedFindings = $BatchImportFindingsResponse->FailedFindings;
    my $SuccessCount   = $BatchImportFindingsResponse->SuccessCount;

    # Returns a L<Paws::SecurityHub::BatchImportFindingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/BatchImportFindings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Findings => ArrayRef[L<Paws::SecurityHub::AwsSecurityFinding>]

A list of findings that you want to import. Must be submitted in the
AWSSecurityFinding format.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchImportFindings in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

