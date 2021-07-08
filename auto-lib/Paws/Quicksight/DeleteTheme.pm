
package Paws::Quicksight::DeleteTheme;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has ThemeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ThemeId', required => 1);
  has VersionNumber => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'version-number');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTheme');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/themes/{ThemeId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DeleteThemeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DeleteTheme - Arguments for method DeleteTheme on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTheme on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DeleteTheme.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTheme.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DeleteThemeResponse = $quicksight->DeleteTheme(
      AwsAccountId  => 'MyAwsAccountId',
      ThemeId       => 'MyRestrictiveResourceId',
      VersionNumber => 1,                           # OPTIONAL
    );

    # Results:
    my $Arn       = $DeleteThemeResponse->Arn;
    my $RequestId = $DeleteThemeResponse->RequestId;
    my $Status    = $DeleteThemeResponse->Status;
    my $ThemeId   = $DeleteThemeResponse->ThemeId;

    # Returns a L<Paws::Quicksight::DeleteThemeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DeleteTheme>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the theme that you're deleting.



=head2 B<REQUIRED> ThemeId => Str

An ID for the theme that you want to delete.



=head2 VersionNumber => Int

The version of the theme that you want to delete.

B<Note:> If you don't provide a version number, you're using this call
to C<DeleteTheme> to delete all versions of the theme.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTheme in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

