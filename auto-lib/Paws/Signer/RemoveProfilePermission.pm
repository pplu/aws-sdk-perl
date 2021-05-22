
package Paws::Signer::RemoveProfilePermission;
  use Moose;
  has ProfileName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profileName', required => 1);
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'revisionId', required => 1);
  has StatementId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'statementId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveProfilePermission');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/signing-profiles/{profileName}/permissions/{statementId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Signer::RemoveProfilePermissionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::RemoveProfilePermission - Arguments for method RemoveProfilePermission on L<Paws::Signer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveProfilePermission on the
L<AWS Signer|Paws::Signer> service. Use the attributes of this class
as arguments to method RemoveProfilePermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveProfilePermission.

=head1 SYNOPSIS

    my $signer = Paws->service('Signer');
    my $RemoveProfilePermissionResponse = $signer->RemoveProfilePermission(
      ProfileName => 'MyProfileName',
      RevisionId  => 'MyString',
      StatementId => 'MyString',

    );

    # Results:
    my $RevisionId = $RemoveProfilePermissionResponse->RevisionId;

    # Returns a L<Paws::Signer::RemoveProfilePermissionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/signer/RemoveProfilePermission>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfileName => Str

A human-readable name for the signing profile with permissions to be
removed.



=head2 B<REQUIRED> RevisionId => Str

An identifier for the current revision of the signing profile
permissions.



=head2 B<REQUIRED> StatementId => Str

A unique identifier for the cross-account permissions statement.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveProfilePermission in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

