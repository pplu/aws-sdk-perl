
package Paws::CodeArtifact::DisassociateExternalConnection;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has ExternalConnection => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'external-connection', required => 1);
  has Repository => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'repository', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateExternalConnection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/repository/external-connection');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::DisassociateExternalConnectionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::DisassociateExternalConnection - Arguments for method DisassociateExternalConnection on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateExternalConnection on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method DisassociateExternalConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateExternalConnection.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $DisassociateExternalConnectionResult =
      $codeartifact->DisassociateExternalConnection(
      Domain             => 'MyDomainName',
      ExternalConnection => 'MyExternalConnectionName',
      Repository         => 'MyRepositoryName',
      DomainOwner        => 'MyAccountId',                # OPTIONAL
      );

    # Results:
    my $Repository = $DisassociateExternalConnectionResult->Repository;

 # Returns a L<Paws::CodeArtifact::DisassociateExternalConnectionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/DisassociateExternalConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the repository from which to
remove the external repository.



=head2 DomainOwner => Str

The 12-digit account number of the AWS account that owns the domain. It
does not include dashes or spaces.



=head2 B<REQUIRED> ExternalConnection => Str

The name of the external connection to be removed from the repository.



=head2 B<REQUIRED> Repository => Str

The name of the repository from which the external connection will be
removed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateExternalConnection in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

