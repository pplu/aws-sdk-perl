
package Paws::Macie2::PutFindingsPublicationConfiguration;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has SecurityHubConfiguration => (is => 'ro', isa => 'Paws::Macie2::SecurityHubConfiguration', traits => ['NameInRequest'], request_name => 'securityHubConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutFindingsPublicationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findings-publication-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::PutFindingsPublicationConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::PutFindingsPublicationConfiguration - Arguments for method PutFindingsPublicationConfiguration on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutFindingsPublicationConfiguration on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method PutFindingsPublicationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutFindingsPublicationConfiguration.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $PutFindingsPublicationConfigurationResponse =
      $macie2->PutFindingsPublicationConfiguration(
      ClientToken              => 'My__string',    # OPTIONAL
      SecurityHubConfiguration => {
        PublishClassificationFindings => 1,
        PublishPolicyFindings         => 1,

      },                                           # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/PutFindingsPublicationConfiguration>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive token that you provide to ensure the
idempotency of the request.



=head2 SecurityHubConfiguration => L<Paws::Macie2::SecurityHubConfiguration>

The configuration settings that determine which findings to publish to
AWS Security Hub.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutFindingsPublicationConfiguration in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

