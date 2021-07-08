
package Paws::CustomerProfiles::GetProfileObjectType;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has ObjectTypeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ObjectTypeName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProfileObjectType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/object-types/{ObjectTypeName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::GetProfileObjectTypeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetProfileObjectType - Arguments for method GetProfileObjectType on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProfileObjectType on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method GetProfileObjectType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProfileObjectType.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $GetProfileObjectTypeResponse = $profile->GetProfileObjectType(
      DomainName     => 'Myname',
      ObjectTypeName => 'MytypeName',

    );

    # Results:
    my $AllowProfileCreation =
      $GetProfileObjectTypeResponse->AllowProfileCreation;
    my $CreatedAt      = $GetProfileObjectTypeResponse->CreatedAt;
    my $Description    = $GetProfileObjectTypeResponse->Description;
    my $EncryptionKey  = $GetProfileObjectTypeResponse->EncryptionKey;
    my $ExpirationDays = $GetProfileObjectTypeResponse->ExpirationDays;
    my $Fields         = $GetProfileObjectTypeResponse->Fields;
    my $Keys           = $GetProfileObjectTypeResponse->Keys;
    my $LastUpdatedAt  = $GetProfileObjectTypeResponse->LastUpdatedAt;
    my $ObjectTypeName = $GetProfileObjectTypeResponse->ObjectTypeName;
    my $Tags           = $GetProfileObjectTypeResponse->Tags;
    my $TemplateId     = $GetProfileObjectTypeResponse->TemplateId;

    # Returns a L<Paws::CustomerProfiles::GetProfileObjectTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/GetProfileObjectType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 B<REQUIRED> ObjectTypeName => Str

The name of the profile object type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProfileObjectType in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

