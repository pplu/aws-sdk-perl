
package Paws::Signer::AddProfilePermission;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'action', required => 1);
  has Principal => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principal', required => 1);
  has ProfileName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profileName', required => 1);
  has ProfileVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileVersion');
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revisionId');
  has StatementId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statementId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddProfilePermission');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/signing-profiles/{profileName}/permissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Signer::AddProfilePermissionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::AddProfilePermission - Arguments for method AddProfilePermission on L<Paws::Signer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddProfilePermission on the
L<AWS Signer|Paws::Signer> service. Use the attributes of this class
as arguments to method AddProfilePermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddProfilePermission.

=head1 SYNOPSIS

    my $signer = Paws->service('Signer');
    my $AddProfilePermissionResponse = $signer->AddProfilePermission(
      Action         => 'MyString',
      Principal      => 'MyString',
      ProfileName    => 'MyProfileName',
      StatementId    => 'MyString',
      ProfileVersion => 'MyProfileVersion',    # OPTIONAL
      RevisionId     => 'MyString',            # OPTIONAL
    );

    # Results:
    my $RevisionId = $AddProfilePermissionResponse->RevisionId;

    # Returns a L<Paws::Signer::AddProfilePermissionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/signer/AddProfilePermission>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

The AWS Signer action permitted as part of cross-account permissions.



=head2 B<REQUIRED> Principal => Str

The AWS principal receiving cross-account permissions. This may be an
IAM role or another AWS account ID.



=head2 B<REQUIRED> ProfileName => Str

The human-readable name of the signing profile.



=head2 ProfileVersion => Str

The version of the signing profile.



=head2 RevisionId => Str

A unique identifier for the current profile revision.



=head2 B<REQUIRED> StatementId => Str

A unique identifier for the cross-account permission statement.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddProfilePermission in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

