
package Paws::AuditManager::ValidateAssessmentReportIntegrityResponse;
  use Moose;
  has SignatureAlgorithm => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'signatureAlgorithm');
  has SignatureDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'signatureDateTime');
  has SignatureKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'signatureKeyId');
  has SignatureValid => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'signatureValid');
  has ValidationErrors => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'validationErrors');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::ValidateAssessmentReportIntegrityResponse

=head1 ATTRIBUTES


=head2 SignatureAlgorithm => Str

The signature algorithm used to code sign the assessment report file.


=head2 SignatureDateTime => Str

The date and time signature that specifies when the assessment report
was created.


=head2 SignatureKeyId => Str

The unique identifier for the validation signature key.


=head2 SignatureValid => Bool

Specifies whether the signature key is valid.


=head2 ValidationErrors => ArrayRef[Str|Undef]

Represents any errors that occurred when validating the assessment
report.


=head2 _request_id => Str


=cut

