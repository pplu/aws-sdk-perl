
package Paws::SecurityHub::BatchUpdateFindings;
  use Moose;
  has Confidence => (is => 'ro', isa => 'Int');
  has Criticality => (is => 'ro', isa => 'Int');
  has FindingIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsSecurityFindingIdentifier]', required => 1);
  has Note => (is => 'ro', isa => 'Paws::SecurityHub::NoteUpdate');
  has RelatedFindings => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::RelatedFinding]');
  has Severity => (is => 'ro', isa => 'Paws::SecurityHub::SeverityUpdate');
  has Types => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UserDefinedFields => (is => 'ro', isa => 'Paws::SecurityHub::FieldMap');
  has VerificationState => (is => 'ro', isa => 'Str');
  has Workflow => (is => 'ro', isa => 'Paws::SecurityHub::WorkflowUpdate');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchUpdateFindings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findings/batchupdate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::BatchUpdateFindingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchUpdateFindings - Arguments for method BatchUpdateFindings on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchUpdateFindings on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method BatchUpdateFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchUpdateFindings.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $BatchUpdateFindingsResponse = $securityhub->BatchUpdateFindings(
      FindingIdentifiers => [
        {
          Id         => 'MyNonEmptyString',
          ProductArn => 'MyNonEmptyString',

        },
        ...
      ],
      Confidence  => 1,    # OPTIONAL
      Criticality => 1,    # OPTIONAL
      Note        => {
        Text      => 'MyNonEmptyString',
        UpdatedBy => 'MyNonEmptyString',

      },                   # OPTIONAL
      RelatedFindings => [
        {
          Id         => 'MyNonEmptyString',
          ProductArn => 'MyNonEmptyString',

        },
        ...
      ],                   # OPTIONAL
      Severity => {
        Label => 'INFORMATIONAL'
        ,    # values: INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL; OPTIONAL
        Normalized => 1,    # max: 100
        Product    => 1,    # OPTIONAL
      },    # OPTIONAL
      Types => [ 'MyNonEmptyString', ... ],    # OPTIONAL
      UserDefinedFields => { 'MyNonEmptyString' => 'MyNonEmptyString', }
      ,                                        # OPTIONAL
      VerificationState => 'UNKNOWN',          # OPTIONAL
      Workflow          => {
        Status => 'NEW', # values: NEW, NOTIFIED, RESOLVED, SUPPRESSED; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ProcessedFindings   = $BatchUpdateFindingsResponse->ProcessedFindings;
    my $UnprocessedFindings = $BatchUpdateFindingsResponse->UnprocessedFindings;

    # Returns a L<Paws::SecurityHub::BatchUpdateFindingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/BatchUpdateFindings>

=head1 ATTRIBUTES


=head2 Confidence => Int

The updated value for the finding confidence. Confidence is defined as
the likelihood that a finding accurately identifies the behavior or
issue that it was intended to identify.

Confidence is scored on a 0-100 basis using a ratio scale, where 0
means zero percent confidence and 100 means 100 percent confidence.



=head2 Criticality => Int

The updated value for the level of importance assigned to the resources
associated with the findings.

A score of 0 means that the underlying resources have no criticality,
and a score of 100 is reserved for the most critical resources.



=head2 B<REQUIRED> FindingIdentifiers => ArrayRef[L<Paws::SecurityHub::AwsSecurityFindingIdentifier>]

The list of findings to update. C<BatchUpdateFindings> can be used to
update up to 100 findings at a time.

For each finding, the list provides the finding identifier and the ARN
of the finding provider.



=head2 Note => L<Paws::SecurityHub::NoteUpdate>





=head2 RelatedFindings => ArrayRef[L<Paws::SecurityHub::RelatedFinding>]

A list of findings that are related to the updated findings.



=head2 Severity => L<Paws::SecurityHub::SeverityUpdate>

Used to update the finding severity.



=head2 Types => ArrayRef[Str|Undef]

One or more finding types in the format of
namespace/category/classifier that classify a finding.

Valid namespace values are as follows.

=over

=item *

Software and Configuration Checks

=item *

TTPs

=item *

Effects

=item *

Unusual Behaviors

=item *

Sensitive Data Identifications

=back




=head2 UserDefinedFields => L<Paws::SecurityHub::FieldMap>

A list of name/value string pairs associated with the finding. These
are custom, user-defined fields added to a finding.



=head2 VerificationState => Str

Indicates the veracity of a finding.

The available values for C<VerificationState> are as follows.

=over

=item *

C<UNKNOWN> E<ndash> The default disposition of a security finding

=item *

C<TRUE_POSITIVE> E<ndash> The security finding is confirmed

=item *

C<FALSE_POSITIVE> E<ndash> The security finding was determined to be a
false alarm

=item *

C<BENIGN_POSITIVE> E<ndash> A special case of C<TRUE_POSITIVE> where
the finding doesn't pose any threat, is expected, or both

=back


Valid values are: C<"UNKNOWN">, C<"TRUE_POSITIVE">, C<"FALSE_POSITIVE">, C<"BENIGN_POSITIVE">

=head2 Workflow => L<Paws::SecurityHub::WorkflowUpdate>

Used to update the workflow status of a finding.

The workflow status indicates the progress of the investigation into
the finding.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchUpdateFindings in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

