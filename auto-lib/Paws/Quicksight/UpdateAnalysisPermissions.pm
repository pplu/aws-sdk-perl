
package Paws::Quicksight::UpdateAnalysisPermissions;
  use Moose;
  has AnalysisId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AnalysisId', required => 1);
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has GrantPermissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');
  has RevokePermissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAnalysisPermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/analyses/{AnalysisId}/permissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::UpdateAnalysisPermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateAnalysisPermissions - Arguments for method UpdateAnalysisPermissions on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAnalysisPermissions on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method UpdateAnalysisPermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAnalysisPermissions.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $UpdateAnalysisPermissionsResponse =
      $quicksight->UpdateAnalysisPermissions(
      AnalysisId       => 'MyRestrictiveResourceId',
      AwsAccountId     => 'MyAwsAccountId',
      GrantPermissions => [
        {
          Actions   => [ 'MyString', ... ],    # min: 1, max: 16
          Principal => 'MyPrincipal',          # min: 1, max: 256

        },
        ...
      ],                                       # OPTIONAL
      RevokePermissions => [
        {
          Actions   => [ 'MyString', ... ],    # min: 1, max: 16
          Principal => 'MyPrincipal',          # min: 1, max: 256

        },
        ...
      ],                                       # OPTIONAL
      );

    # Results:
    my $AnalysisArn = $UpdateAnalysisPermissionsResponse->AnalysisArn;
    my $AnalysisId  = $UpdateAnalysisPermissionsResponse->AnalysisId;
    my $Permissions = $UpdateAnalysisPermissionsResponse->Permissions;
    my $RequestId   = $UpdateAnalysisPermissionsResponse->RequestId;
    my $Status      = $UpdateAnalysisPermissionsResponse->Status;

    # Returns a L<Paws::Quicksight::UpdateAnalysisPermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/UpdateAnalysisPermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisId => Str

The ID of the analysis whose permissions you're updating. The ID is
part of the analysis URL.



=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the analysis whose permissions
you're updating. You must be using the AWS account that the analysis is
in.



=head2 GrantPermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

A structure that describes the permissions to add and the principal to
add them to.



=head2 RevokePermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

A structure that describes the permissions to remove and the principal
to remove them from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAnalysisPermissions in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

