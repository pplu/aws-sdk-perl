
package Paws::Quicksight::CreateTemplate;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');
  has SourceEntity => (is => 'ro', isa => 'Paws::Quicksight::TemplateSourceEntity', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::Tag]');
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TemplateId', required => 1);
  has VersionDescription => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/templates/{TemplateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::CreateTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateTemplate - Arguments for method CreateTemplate on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTemplate on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method CreateTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTemplate.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $CreateTemplateResponse = $quicksight->CreateTemplate(
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
      TemplateId  => 'MyRestrictiveResourceId',
      Name        => 'MyTemplateName',            # OPTIONAL
      Permissions => [
        {
          Actions => [ 'MyString', ... ],         # min: 1, max: 16
          Principal => 'MyPrincipal',             # min: 1, max: 256

        },
        ...
      ],                                          # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',                    # min: 1, max: 128
          Value => 'MyTagValue',                  # min: 1, max: 256

        },
        ...
      ],                                          # OPTIONAL
      VersionDescription => 'MyVersionDescription',    # OPTIONAL
    );

    # Results:
    my $Arn            = $CreateTemplateResponse->Arn;
    my $CreationStatus = $CreateTemplateResponse->CreationStatus;
    my $RequestId      = $CreateTemplateResponse->RequestId;
    my $Status         = $CreateTemplateResponse->Status;
    my $TemplateId     = $CreateTemplateResponse->TemplateId;
    my $VersionArn     = $CreateTemplateResponse->VersionArn;

    # Returns a L<Paws::Quicksight::CreateTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/CreateTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID for the AWS account that the group is in. Currently, you use the
ID for the AWS account that contains your Amazon QuickSight account.



=head2 Name => Str

A display name for the template.



=head2 Permissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

A list of resource permissions to be set on the template.



=head2 B<REQUIRED> SourceEntity => L<Paws::Quicksight::TemplateSourceEntity>

The Amazon Resource Name (ARN) of the source entity from which this
template is being created. Currently, you can create a template from an
analysis or another template. If the ARN is for an analysis, include
its dataset references.



=head2 Tags => ArrayRef[L<Paws::Quicksight::Tag>]

Contains a map of the key-value pairs for the resource tag or tags
assigned to the resource.



=head2 B<REQUIRED> TemplateId => Str

An ID for the template that you want to create. This template is unique
per AWS Region in each AWS account.



=head2 VersionDescription => Str

A description of the current template version being created. This API
operation creates the first version of the template. Every time
C<UpdateTemplate> is called, a new version is created. Each version of
the template maintains a description of the version in the
C<VersionDescription> field.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTemplate in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

