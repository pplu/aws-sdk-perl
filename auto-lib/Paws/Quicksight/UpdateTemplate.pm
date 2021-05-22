
package Paws::Quicksight::UpdateTemplate;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has SourceEntity => (is => 'ro', isa => 'Paws::Quicksight::TemplateSourceEntity', required => 1);
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TemplateId', required => 1);
  has VersionDescription => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/templates/{TemplateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::UpdateTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateTemplate - Arguments for method UpdateTemplate on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTemplate on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method UpdateTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTemplate.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $UpdateTemplateResponse = $quicksight->UpdateTemplate(
      AwsAccountId => 'MyAwsAccountId',
      SourceEntity => {
        SourceAnalysis => {
          Arn               => 'MyArn',
          DataSetReferences => [
            {
              DataSetArn         => 'MyArn',
              DataSetPlaceholder => 'MyNonEmptyString',

            },
            ...
          ],    # min: 1

        },    # OPTIONAL
        SourceTemplate => {
          Arn => 'MyArn',

        },    # OPTIONAL
      },
      TemplateId         => 'MyRestrictiveResourceId',
      Name               => 'MyTemplateName',            # OPTIONAL
      VersionDescription => 'MyVersionDescription',      # OPTIONAL
    );

    # Results:
    my $Arn            = $UpdateTemplateResponse->Arn;
    my $CreationStatus = $UpdateTemplateResponse->CreationStatus;
    my $RequestId      = $UpdateTemplateResponse->RequestId;
    my $Status         = $UpdateTemplateResponse->Status;
    my $TemplateId     = $UpdateTemplateResponse->TemplateId;
    my $VersionArn     = $UpdateTemplateResponse->VersionArn;

    # Returns a L<Paws::Quicksight::UpdateTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/UpdateTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the template that you're
updating.



=head2 Name => Str

The name for the template.



=head2 B<REQUIRED> SourceEntity => L<Paws::Quicksight::TemplateSourceEntity>

The entity that you are using as a source when you update the template.
In C<SourceEntity>, you specify the type of object you're using as
source: C<SourceTemplate> for a template or C<SourceAnalysis> for an
analysis. Both of these require an Amazon Resource Name (ARN). For
C<SourceTemplate>, specify the ARN of the source template. For
C<SourceAnalysis>, specify the ARN of the source analysis. The
C<SourceTemplate> ARN can contain any AWS Account and any
QuickSight-supported AWS Region.

Use the C<DataSetReferences> entity within C<SourceTemplate> or
C<SourceAnalysis> to list the replacement datasets for the placeholders
listed in the original. The schema in each dataset must match its
placeholder.



=head2 B<REQUIRED> TemplateId => Str

The ID for the template.



=head2 VersionDescription => Str

A description of the current template version that is being updated.
Every time you call C<UpdateTemplate>, you create a new version of the
template. Each version of the template maintains a description of the
version in the C<VersionDescription> field.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTemplate in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

