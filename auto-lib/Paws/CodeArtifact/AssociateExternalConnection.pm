
package Paws::CodeArtifact::AssociateExternalConnection;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has ExternalConnection => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'external-connection', required => 1);
  has Repository => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'repository', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateExternalConnection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/repository/external-connection');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::AssociateExternalConnectionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::AssociateExternalConnection - Arguments for method AssociateExternalConnection on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateExternalConnection on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method AssociateExternalConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateExternalConnection.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $AssociateExternalConnectionResult =
      $codeartifact->AssociateExternalConnection(
      Domain             => 'MyDomainName',
      ExternalConnection => 'MyExternalConnectionName',
      Repository         => 'MyRepositoryName',
      DomainOwner        => 'MyAccountId',                # OPTIONAL
      );

    # Results:
    my $Repository = $AssociateExternalConnectionResult->Repository;

    # Returns a L<Paws::CodeArtifact::AssociateExternalConnectionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/AssociateExternalConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the repository.



=head2 DomainOwner => Str

The 12-digit account number of the AWS account that owns the domain. It
does not include dashes or spaces.



=head2 B<REQUIRED> ExternalConnection => Str

The name of the external connection to add to the repository. The
following values are supported:

=over

=item *

C<public:npmjs> - for the npm public repository.

=item *

C<public:pypi> - for the Python Package Index.

=item *

C<public:maven-central> - for Maven Central.

=item *

C<public:maven-googleandroid> - for the Google Android repository.

=item *

C<public:maven-gradleplugins> - for the Gradle plugins repository.

=item *

C<public:maven-commonsware> - for the CommonsWare Android repository.

=back




=head2 B<REQUIRED> Repository => Str

The name of the repository to which the external connection is added.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateExternalConnection in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

