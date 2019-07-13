
package Paws::Inspector::GetExclusionsPreview;
  use Moose;
  has AssessmentTemplateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentTemplateArn' , required => 1);
  has Locale => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'locale' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has PreviewToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'previewToken' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetExclusionsPreview');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::GetExclusionsPreviewResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::GetExclusionsPreview - Arguments for method GetExclusionsPreview on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetExclusionsPreview on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method GetExclusionsPreview.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetExclusionsPreview.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
    my $GetExclusionsPreviewResponse = $inspector->GetExclusionsPreview(
      AssessmentTemplateArn => 'MyArn',
      PreviewToken          => 'MyUUID',
      Locale                => 'EN_US',                # OPTIONAL
      MaxResults            => 1,                      # OPTIONAL
      NextToken             => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $ExclusionPreviews = $GetExclusionsPreviewResponse->ExclusionPreviews;
    my $NextToken         = $GetExclusionsPreviewResponse->NextToken;
    my $PreviewStatus     = $GetExclusionsPreviewResponse->PreviewStatus;

    # Returns a L<Paws::Inspector::GetExclusionsPreviewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/GetExclusionsPreview>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTemplateArn => Str

The ARN that specifies the assessment template for which the exclusions
preview was requested.



=head2 Locale => Str

The locale into which you want to translate the exclusion's title,
description, and recommendation.

Valid values are: C<"EN_US">

=head2 MaxResults => Int

You can use this parameter to indicate the maximum number of items you
want in the response. The default value is 100. The maximum value is
500.



=head2 NextToken => Str

You can use this parameter when paginating results. Set the value of
this parameter to null on your first call to the
GetExclusionsPreviewRequest action. Subsequent calls to the action fill
nextToken in the request with the value of nextToken from the previous
response to continue listing data.



=head2 B<REQUIRED> PreviewToken => Str

The unique identifier associated of the exclusions preview.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetExclusionsPreview in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

