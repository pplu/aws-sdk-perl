
package Paws::CustomerProfiles::GetDomain;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDomain');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::GetDomainResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetDomain - Arguments for method GetDomain on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDomain on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method GetDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDomain.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $GetDomainResponse = $profile->GetDomain(
      DomainName => 'Myname',

    );

    # Results:
    my $CreatedAt             = $GetDomainResponse->CreatedAt;
    my $DeadLetterQueueUrl    = $GetDomainResponse->DeadLetterQueueUrl;
    my $DefaultEncryptionKey  = $GetDomainResponse->DefaultEncryptionKey;
    my $DefaultExpirationDays = $GetDomainResponse->DefaultExpirationDays;
    my $DomainName            = $GetDomainResponse->DomainName;
    my $LastUpdatedAt         = $GetDomainResponse->LastUpdatedAt;
    my $Matching              = $GetDomainResponse->Matching;
    my $Stats                 = $GetDomainResponse->Stats;
    my $Tags                  = $GetDomainResponse->Tags;

    # Returns a L<Paws::CustomerProfiles::GetDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/GetDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDomain in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

