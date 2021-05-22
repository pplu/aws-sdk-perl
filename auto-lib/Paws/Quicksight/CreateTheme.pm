
package Paws::Quicksight::CreateTheme;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has BaseThemeId => (is => 'ro', isa => 'Str', required => 1);
  has Configuration => (is => 'ro', isa => 'Paws::Quicksight::ThemeConfiguration', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::Tag]');
  has ThemeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ThemeId', required => 1);
  has VersionDescription => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTheme');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/themes/{ThemeId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::CreateThemeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateTheme - Arguments for method CreateTheme on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTheme on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method CreateTheme.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTheme.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $CreateThemeResponse = $quicksight->CreateTheme(
      AwsAccountId  => 'MyAwsAccountId',
      BaseThemeId   => 'MyRestrictiveResourceId',
      Configuration => {
        DataColorPalette => {
          Colors         => [ 'MyHexColor', ... ],    # max: 100; OPTIONAL
          EmptyFillColor => 'MyHexColor',
          MinMaxGradient => [ 'MyHexColor', ... ],    # max: 100; OPTIONAL
        },    # OPTIONAL
        Sheet => {
          Tile => {
            Border => {
              Show => 1,    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          TileLayout => {
            Gutter => {
              Show => 1,    # OPTIONAL
            },    # OPTIONAL
            Margin => {
              Show => 1,    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        UIColorPalette => {
          Accent              => 'MyHexColor',
          AccentForeground    => 'MyHexColor',
          Danger              => 'MyHexColor',
          DangerForeground    => 'MyHexColor',
          Dimension           => 'MyHexColor',
          DimensionForeground => 'MyHexColor',
          Measure             => 'MyHexColor',
          MeasureForeground   => 'MyHexColor',
          PrimaryBackground   => 'MyHexColor',
          PrimaryForeground   => 'MyHexColor',
          SecondaryBackground => 'MyHexColor',
          SecondaryForeground => 'MyHexColor',
          Success             => 'MyHexColor',
          SuccessForeground   => 'MyHexColor',
          Warning             => 'MyHexColor',
          WarningForeground   => 'MyHexColor',
        },    # OPTIONAL
      },
      Name        => 'MyThemeName',
      ThemeId     => 'MyRestrictiveResourceId',
      Permissions => [
        {
          Actions   => [ 'MyString', ... ],    # min: 1, max: 16
          Principal => 'MyPrincipal',          # min: 1, max: 256

        },
        ...
      ],                                       # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',                 # min: 1, max: 128
          Value => 'MyTagValue',               # min: 1, max: 256

        },
        ...
      ],                                       # OPTIONAL
      VersionDescription => 'MyVersionDescription',    # OPTIONAL
    );

    # Results:
    my $Arn            = $CreateThemeResponse->Arn;
    my $CreationStatus = $CreateThemeResponse->CreationStatus;
    my $RequestId      = $CreateThemeResponse->RequestId;
    my $Status         = $CreateThemeResponse->Status;
    my $ThemeId        = $CreateThemeResponse->ThemeId;
    my $VersionArn     = $CreateThemeResponse->VersionArn;

    # Returns a L<Paws::Quicksight::CreateThemeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/CreateTheme>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account where you want to store the new theme.



=head2 B<REQUIRED> BaseThemeId => Str

The ID of the theme that a custom theme will inherit from. All themes
inherit from one of the starting themes defined by Amazon QuickSight.
For a list of the starting themes, use C<ListThemes> or choose
B<Themes> from within a QuickSight analysis.



=head2 B<REQUIRED> Configuration => L<Paws::Quicksight::ThemeConfiguration>

The theme configuration, which contains the theme display properties.



=head2 B<REQUIRED> Name => Str

A display name for the theme.



=head2 Permissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

A valid grouping of resource permissions to apply to the new theme.



=head2 Tags => ArrayRef[L<Paws::Quicksight::Tag>]

A map of the key-value pairs for the resource tag or tags that you want
to add to the resource.



=head2 B<REQUIRED> ThemeId => Str

An ID for the theme that you want to create. The theme ID is unique per
AWS Region in each AWS account.



=head2 VersionDescription => Str

A description of the first version of the theme that you're creating.
Every time C<UpdateTheme> is called, a new version is created. Each
version of the theme has a description of the version in the
C<VersionDescription> field.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTheme in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

