
package Paws::CustomerProfiles::PutProfileObjectType;
  use Moose;
  has AllowProfileCreation => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has EncryptionKey => (is => 'ro', isa => 'Str');
  has ExpirationDays => (is => 'ro', isa => 'Int');
  has Fields => (is => 'ro', isa => 'Paws::CustomerProfiles::FieldMap');
  has Keys => (is => 'ro', isa => 'Paws::CustomerProfiles::KeyMap');
  has ObjectTypeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ObjectTypeName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CustomerProfiles::TagMap');
  has TemplateId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutProfileObjectType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/object-types/{ObjectTypeName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::PutProfileObjectTypeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::PutProfileObjectType - Arguments for method PutProfileObjectType on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutProfileObjectType on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method PutProfileObjectType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutProfileObjectType.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $PutProfileObjectTypeResponse = $profile->PutProfileObjectType(
      Description          => 'Mytext',
      DomainName           => 'Myname',
      ObjectTypeName       => 'MytypeName',
      AllowProfileCreation => 1,                    # OPTIONAL
      EncryptionKey        => 'MyencryptionKey',    # OPTIONAL
      ExpirationDays       => 1,                    # OPTIONAL
      Fields               => {
        'Myname' => {
          ContentType => 'STRING'
          , # values: STRING, NUMBER, PHONE_NUMBER, EMAIL_ADDRESS, NAME; OPTIONAL
          Source => 'Mytext',    # min: 1, max: 1000
          Target => 'Mytext',    # min: 1, max: 1000
        },    # key: min: 1, max: 64
      },    # OPTIONAL
      Keys => {
        'Myname' => [
          {
            FieldNames => [
              'Myname', ...    # min: 1, max: 64
            ],    # OPTIONAL
            StandardIdentifiers => [
              'PROFILE',
              ...    # values: PROFILE, UNIQUE, SECONDARY, LOOKUP_ONLY, NEW_ONLY
            ],    # OPTIONAL
          },
          ...
        ],    # key: min: 1, max: 64
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      TemplateId => 'Myname',    # OPTIONAL
    );

    # Results:
    my $AllowProfileCreation =
      $PutProfileObjectTypeResponse->AllowProfileCreation;
    my $CreatedAt      = $PutProfileObjectTypeResponse->CreatedAt;
    my $Description    = $PutProfileObjectTypeResponse->Description;
    my $EncryptionKey  = $PutProfileObjectTypeResponse->EncryptionKey;
    my $ExpirationDays = $PutProfileObjectTypeResponse->ExpirationDays;
    my $Fields         = $PutProfileObjectTypeResponse->Fields;
    my $Keys           = $PutProfileObjectTypeResponse->Keys;
    my $LastUpdatedAt  = $PutProfileObjectTypeResponse->LastUpdatedAt;
    my $ObjectTypeName = $PutProfileObjectTypeResponse->ObjectTypeName;
    my $Tags           = $PutProfileObjectTypeResponse->Tags;
    my $TemplateId     = $PutProfileObjectTypeResponse->TemplateId;

    # Returns a L<Paws::CustomerProfiles::PutProfileObjectTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/PutProfileObjectType>

=head1 ATTRIBUTES


=head2 AllowProfileCreation => Bool

Indicates whether a profile should be created when data is received if
one doesnE<rsquo>t exist for an object of this type. The default is
C<FALSE>. If the AllowProfileCreation flag is set to C<FALSE>, then the
service tries to fetch a standard profile and associate this object
with the profile. If it is set to C<TRUE>, and if no match is found,
then the service creates a new standard profile.



=head2 B<REQUIRED> Description => Str

Description of the profile object type.



=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 EncryptionKey => Str

The customer-provided key to encrypt the profile object that will be
created in this profile object type.



=head2 ExpirationDays => Int

The number of days until the data in the object expires.



=head2 Fields => L<Paws::CustomerProfiles::FieldMap>

A map of the name and ObjectType field.



=head2 Keys => L<Paws::CustomerProfiles::KeyMap>

A list of unique keys that can be used to map data to the profile.



=head2 B<REQUIRED> ObjectTypeName => Str

The name of the profile object type.



=head2 Tags => L<Paws::CustomerProfiles::TagMap>

The tags used to organize, track, or control access for this resource.



=head2 TemplateId => Str

A unique identifier for the object template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutProfileObjectType in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

