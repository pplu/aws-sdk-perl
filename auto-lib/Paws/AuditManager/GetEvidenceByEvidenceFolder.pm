
package Paws::AuditManager::GetEvidenceByEvidenceFolder;
  use Moose;
  has AssessmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assessmentId', required => 1);
  has ControlSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'controlSetId', required => 1);
  has EvidenceFolderId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'evidenceFolderId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEvidenceByEvidenceFolder');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}/evidence');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::GetEvidenceByEvidenceFolderResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetEvidenceByEvidenceFolder - Arguments for method GetEvidenceByEvidenceFolder on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEvidenceByEvidenceFolder on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method GetEvidenceByEvidenceFolder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEvidenceByEvidenceFolder.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $GetEvidenceByEvidenceFolderResponse =
      $auditmanager->GetEvidenceByEvidenceFolder(
      AssessmentId     => 'MyUUID',
      ControlSetId     => 'MyControlSetId',
      EvidenceFolderId => 'MyUUID',
      MaxResults       => 1,                  # OPTIONAL
      NextToken        => 'MyToken',          # OPTIONAL
      );

    # Results:
    my $Evidence  = $GetEvidenceByEvidenceFolderResponse->Evidence;
    my $NextToken = $GetEvidenceByEvidenceFolderResponse->NextToken;

  # Returns a L<Paws::AuditManager::GetEvidenceByEvidenceFolderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/GetEvidenceByEvidenceFolder>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentId => Str

The identifier for the specified assessment.



=head2 B<REQUIRED> ControlSetId => Str

The identifier for the control set.



=head2 B<REQUIRED> EvidenceFolderId => Str

The unique identifier for the folder in which the evidence is stored.



=head2 MaxResults => Int

Represents the maximum number of results per page, or per API request
call.



=head2 NextToken => Str

The pagination token used to fetch the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEvidenceByEvidenceFolder in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

