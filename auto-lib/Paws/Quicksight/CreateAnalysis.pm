
package Paws::Quicksight::CreateAnalysis;
  use Moose;
  has AnalysisId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AnalysisId', required => 1);
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::Quicksight::Parameters');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');
  has SourceEntity => (is => 'ro', isa => 'Paws::Quicksight::AnalysisSourceEntity', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::Tag]');
  has ThemeArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAnalysis');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/analyses/{AnalysisId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::CreateAnalysisResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateAnalysis - Arguments for method CreateAnalysis on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAnalysis on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method CreateAnalysis.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAnalysis.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $CreateAnalysisResponse = $quicksight->CreateAnalysis(
      AnalysisId   => 'MyRestrictiveResourceId',
      AwsAccountId => 'MyAwsAccountId',
      Name         => 'MyAnalysisName',
      SourceEntity => {
        SourceTemplate => {
          Arn               => 'MyArn',
          DataSetReferences => [
            {
              DataSetArn         => 'MyArn',
              DataSetPlaceholder => 'MyNonEmptyString',

            },
            ...
          ],    # min: 1

        },    # OPTIONAL
      },
      Parameters => {
        DateTimeParameters => [
          {
            Name   => 'MyNonEmptyString',
            Values => [ '1970-01-01T01:00:00', ... ],

          },
          ...
        ],    # max: 100; OPTIONAL
        DecimalParameters => [
          {
            Name   => 'MyNonEmptyString',
            Values => [ 1, ... ],

          },
          ...
        ],    # max: 100; OPTIONAL
        IntegerParameters => [
          {
            Name   => 'MyNonEmptyString',
            Values => [ 1, ... ],

          },
          ...
        ],    # max: 100; OPTIONAL
        StringParameters => [
          {
            Name   => 'MyNonEmptyString',
            Values => [ 'MyString', ... ],

          },
          ...
        ],    # max: 100; OPTIONAL
      },    # OPTIONAL
      Permissions => [
        {
          Actions   => [ 'MyString', ... ],    # min: 1, max: 16
          Principal => 'MyPrincipal',          # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
      ThemeArn => 'MyArn',    # OPTIONAL
    );

    # Results:
    my $AnalysisId     = $CreateAnalysisResponse->AnalysisId;
    my $Arn            = $CreateAnalysisResponse->Arn;
    my $CreationStatus = $CreateAnalysisResponse->CreationStatus;
    my $RequestId      = $CreateAnalysisResponse->RequestId;
    my $Status         = $CreateAnalysisResponse->Status;

    # Returns a L<Paws::Quicksight::CreateAnalysisResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/CreateAnalysis>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisId => Str

The ID for the analysis that you're creating. This ID displays in the
URL of the analysis.



=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account where you are creating an analysis.



=head2 B<REQUIRED> Name => Str

A descriptive name for the analysis that you're creating. This name
displays for the analysis in the QuickSight console.



=head2 Parameters => L<Paws::Quicksight::Parameters>

The parameter names and override values that you want to use. An
analysis can have any parameter type, and some parameters might accept
multiple values.



=head2 Permissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

A structure that describes the principals and the resource-level
permissions on an analysis. You can use the C<Permissions> structure to
grant permissions by providing a list of AWS Identity and Access
Management (IAM) action information for each principal listed by Amazon
Resource Name (ARN).

To specify no permissions, omit C<Permissions>.



=head2 B<REQUIRED> SourceEntity => L<Paws::Quicksight::AnalysisSourceEntity>

A source entity to use for the analysis that you're creating. This
metadata structure contains details that describe a source template and
one or more datasets.



=head2 Tags => ArrayRef[L<Paws::Quicksight::Tag>]

Contains a map of the key-value pairs for the resource tag or tags
assigned to the analysis.



=head2 ThemeArn => Str

The ARN for the theme to apply to the analysis that you're creating. To
see the theme in the QuickSight console, make sure that you have access
to it.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAnalysis in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

