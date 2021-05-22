
package Paws::Signer::ListProfilePermissions;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ProfileName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profileName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProfilePermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/signing-profiles/{profileName}/permissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Signer::ListProfilePermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::ListProfilePermissions - Arguments for method ListProfilePermissions on L<Paws::Signer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProfilePermissions on the
L<AWS Signer|Paws::Signer> service. Use the attributes of this class
as arguments to method ListProfilePermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProfilePermissions.

=head1 SYNOPSIS

    my $signer = Paws->service('Signer');
    my $ListProfilePermissionsResponse = $signer->ListProfilePermissions(
      ProfileName => 'MyProfileName',
      NextToken   => 'MyString',        # OPTIONAL
    );

    # Results:
    my $NextToken       = $ListProfilePermissionsResponse->NextToken;
    my $Permissions     = $ListProfilePermissionsResponse->Permissions;
    my $PolicySizeBytes = $ListProfilePermissionsResponse->PolicySizeBytes;
    my $RevisionId      = $ListProfilePermissionsResponse->RevisionId;

    # Returns a L<Paws::Signer::ListProfilePermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/signer/ListProfilePermissions>

=head1 ATTRIBUTES


=head2 NextToken => Str

String for specifying the next set of paginated results.



=head2 B<REQUIRED> ProfileName => Str

Name of the signing profile containing the cross-account permissions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProfilePermissions in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

