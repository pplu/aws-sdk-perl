
package Paws::Quicksight::UpdateTheme;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has BaseThemeId => (is => 'ro', isa => 'Str', required => 1);
  has Configuration => (is => 'ro', isa => 'Paws::Quicksight::ThemeConfiguration');
  has Name => (is => 'ro', isa => 'Str');
  has ThemeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ThemeId', required => 1);
  has VersionDescription => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTheme');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/themes/{ThemeId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::UpdateThemeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateTheme - Arguments for method UpdateTheme on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTheme on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method UpdateTheme.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTheme.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $UpdateThemeResponse = $quicksight->UpdateTheme(
      AwsAccountId  => 'MyAwsAccountId',
      BaseThemeId   => 'MyRestrictiveResourceId',
      ThemeId       => 'MyRestrictiveResourceId',
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
      },    # OPTIONAL
      Name               => 'MyThemeName',             # OPTIONAL
      VersionDescription => 'MyVersionDescription',    # OPTIONAL
    );

    # Results:
    my $Arn            = $UpdateThemeResponse->Arn;
    my $CreationStatus = $UpdateThemeResponse->CreationStatus;
    my $RequestId      = $UpdateThemeResponse->RequestId;
    my $Status         = $UpdateThemeResponse->Status;
    my $ThemeId        = $UpdateThemeResponse->ThemeId;
    my $VersionArn     = $UpdateThemeResponse->VersionArn;

    # Returns a L<Paws::Quicksight::UpdateThemeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/UpdateTheme>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the theme that you're updating.



=head2 B<REQUIRED> BaseThemeId => Str

The theme ID, defined by Amazon QuickSight, that a custom theme
inherits from. All themes initially inherit from a default QuickSight
theme.



=head2 Configuration => L<Paws::Quicksight::ThemeConfiguration>

The theme configuration, which contains the theme display properties.



=head2 Name => Str

The name for the theme.



=head2 B<REQUIRED> ThemeId => Str

The ID for the theme.



=head2 VersionDescription => Str

A description of the theme version that you're updating Every time that
you call C<UpdateTheme>, you create a new version of the theme. Each
version of the theme maintains a description of the version in
C<VersionDescription>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTheme in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

