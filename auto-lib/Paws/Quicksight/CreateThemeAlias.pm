
package Paws::Quicksight::CreateThemeAlias;
  use Moose;
  has AliasName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AliasName', required => 1);
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has ThemeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ThemeId', required => 1);
  has ThemeVersionNumber => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateThemeAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/themes/{ThemeId}/aliases/{AliasName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::CreateThemeAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateThemeAlias - Arguments for method CreateThemeAlias on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateThemeAlias on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method CreateThemeAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateThemeAlias.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $CreateThemeAliasResponse = $quicksight->CreateThemeAlias(
      AliasName          => 'MyAliasName',
      AwsAccountId       => 'MyAwsAccountId',
      ThemeId            => 'MyRestrictiveResourceId',
      ThemeVersionNumber => 1,

    );

    # Results:
    my $RequestId  = $CreateThemeAliasResponse->RequestId;
    my $Status     = $CreateThemeAliasResponse->Status;
    my $ThemeAlias = $CreateThemeAliasResponse->ThemeAlias;

    # Returns a L<Paws::Quicksight::CreateThemeAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/CreateThemeAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AliasName => Str

The name that you want to give to the theme alias that you are
creating. The alias name can't begin with a C<$>. Alias names that
start with C<$> are reserved by Amazon QuickSight.



=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the theme for the new theme
alias.



=head2 B<REQUIRED> ThemeId => Str

An ID for the theme alias.



=head2 B<REQUIRED> ThemeVersionNumber => Int

The version number of the theme.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateThemeAlias in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

