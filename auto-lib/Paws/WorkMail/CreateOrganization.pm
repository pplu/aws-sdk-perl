
package Paws::WorkMail::CreateOrganization;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has DirectoryId => (is => 'ro', isa => 'Str');
  has Domains => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::Domain]');
  has EnableInteroperability => (is => 'ro', isa => 'Bool');
  has KmsKeyArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOrganization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::CreateOrganizationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::CreateOrganization - Arguments for method CreateOrganization on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateOrganization on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method CreateOrganization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateOrganization.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $CreateOrganizationResponse = $workmail->CreateOrganization(
      Alias       => 'MyOrganizationName',
      ClientToken => 'MyIdempotencyClientToken',    # OPTIONAL
      DirectoryId => 'MyDirectoryId',               # OPTIONAL
      Domains     => [
        {
          DomainName   => 'MyDomainName',           # min: 3, max: 255; OPTIONAL
          HostedZoneId => 'MyHostedZoneId',         # min: 1, max: 32; OPTIONAL
        },
        ...
      ],                                            # OPTIONAL
      EnableInteroperability => 1,                  # OPTIONAL
      KmsKeyArn              => 'MyKmsKeyArn',      # OPTIONAL
    );

    # Results:
    my $OrganizationId = $CreateOrganizationResponse->OrganizationId;

    # Returns a L<Paws::WorkMail::CreateOrganizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/CreateOrganization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Alias => Str

The organization alias.



=head2 ClientToken => Str

The idempotency token associated with the request.



=head2 DirectoryId => Str

The AWS Directory Service directory ID.



=head2 Domains => ArrayRef[L<Paws::WorkMail::Domain>]

The email domains to associate with the organization.



=head2 EnableInteroperability => Bool

When C<true>, allows organization interoperability between Amazon
WorkMail and Microsoft Exchange. Can only be set to C<true> if an AD
Connector directory ID is included in the request.



=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) of a customer managed master key from
AWS KMS.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateOrganization in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

