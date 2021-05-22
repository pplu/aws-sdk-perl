
package Paws::Quicksight::UpdateTemplatePermissions;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has GrantPermissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');
  has RevokePermissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TemplateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTemplatePermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/templates/{TemplateId}/permissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::UpdateTemplatePermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateTemplatePermissions - Arguments for method UpdateTemplatePermissions on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTemplatePermissions on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method UpdateTemplatePermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTemplatePermissions.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $UpdateTemplatePermissionsResponse =
      $quicksight->UpdateTemplatePermissions(
      AwsAccountId     => 'MyAwsAccountId',
      TemplateId       => 'MyRestrictiveResourceId',
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
    my $Permissions = $UpdateTemplatePermissionsResponse->Permissions;
    my $RequestId   = $UpdateTemplatePermissionsResponse->RequestId;
    my $Status      = $UpdateTemplatePermissionsResponse->Status;
    my $TemplateArn = $UpdateTemplatePermissionsResponse->TemplateArn;
    my $TemplateId  = $UpdateTemplatePermissionsResponse->TemplateId;

    # Returns a L<Paws::Quicksight::UpdateTemplatePermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/UpdateTemplatePermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the template.



=head2 GrantPermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

A list of resource permissions to be granted on the template.



=head2 RevokePermissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

A list of resource permissions to be revoked from the template.



=head2 B<REQUIRED> TemplateId => Str

The ID for the template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTemplatePermissions in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

