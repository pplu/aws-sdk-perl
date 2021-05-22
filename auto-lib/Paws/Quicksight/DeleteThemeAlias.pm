
package Paws::Quicksight::DeleteThemeAlias;
  use Moose;
  has AliasName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AliasName', required => 1);
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has ThemeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ThemeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteThemeAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/themes/{ThemeId}/aliases/{AliasName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DeleteThemeAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DeleteThemeAlias - Arguments for method DeleteThemeAlias on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteThemeAlias on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DeleteThemeAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteThemeAlias.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DeleteThemeAliasResponse = $quicksight->DeleteThemeAlias(
      AliasName    => 'MyAliasName',
      AwsAccountId => 'MyAwsAccountId',
      ThemeId      => 'MyRestrictiveResourceId',

    );

    # Results:
    my $AliasName = $DeleteThemeAliasResponse->AliasName;
    my $Arn       = $DeleteThemeAliasResponse->Arn;
    my $RequestId = $DeleteThemeAliasResponse->RequestId;
    my $Status    = $DeleteThemeAliasResponse->Status;
    my $ThemeId   = $DeleteThemeAliasResponse->ThemeId;

    # Returns a L<Paws::Quicksight::DeleteThemeAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DeleteThemeAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AliasName => Str

The unique name for the theme alias to delete.



=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the theme alias to delete.



=head2 B<REQUIRED> ThemeId => Str

The ID for the theme that the specified alias is for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteThemeAlias in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

