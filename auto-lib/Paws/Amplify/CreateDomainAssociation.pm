
package Paws::Amplify::CreateDomainAssociation;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has AutoSubDomainCreationPatterns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'autoSubDomainCreationPatterns');
  has AutoSubDomainIAMRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'autoSubDomainIAMRole');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName', required => 1);
  has EnableAutoSubDomain => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableAutoSubDomain');
  has SubDomainSettings => (is => 'ro', isa => 'ArrayRef[Paws::Amplify::SubDomainSetting]', traits => ['NameInRequest'], request_name => 'subDomainSettings', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomainAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps/{appId}/domains');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Amplify::CreateDomainAssociationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::CreateDomainAssociation - Arguments for method CreateDomainAssociation on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDomainAssociation on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method CreateDomainAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDomainAssociation.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $CreateDomainAssociationResult = $amplify->CreateDomainAssociation(
      AppId             => 'MyAppId',
      DomainName        => 'MyDomainName',
      SubDomainSettings => [
        {
          BranchName => 'MyBranchName',      # min: 1, max: 255
          Prefix     => 'MyDomainPrefix',    # max: 255

        },
        ...
      ],
      AutoSubDomainCreationPatterns => [
        'MyAutoSubDomainCreationPattern',
        ...                                  # min: 1, max: 2048
      ],                                     # OPTIONAL
      AutoSubDomainIAMRole => 'MyAutoSubDomainIAMRole',    # OPTIONAL
      EnableAutoSubDomain  => 1,                           # OPTIONAL
    );

    # Results:
    my $DomainAssociation = $CreateDomainAssociationResult->DomainAssociation;

    # Returns a L<Paws::Amplify::CreateDomainAssociationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/CreateDomainAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique ID for an Amplify app.



=head2 AutoSubDomainCreationPatterns => ArrayRef[Str|Undef]

Sets the branch patterns for automatic subdomain creation.



=head2 AutoSubDomainIAMRole => Str

The required AWS Identity and Access Management (IAM) service role for
the Amazon Resource Name (ARN) for automatically creating subdomains.



=head2 B<REQUIRED> DomainName => Str

The domain name for the domain association.



=head2 EnableAutoSubDomain => Bool

Enables the automated creation of subdomains for branches.



=head2 B<REQUIRED> SubDomainSettings => ArrayRef[L<Paws::Amplify::SubDomainSetting>]

The setting for the subdomain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDomainAssociation in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

