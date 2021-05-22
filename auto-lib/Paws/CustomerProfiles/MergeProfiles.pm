
package Paws::CustomerProfiles::MergeProfiles;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has FieldSourceProfileIds => (is => 'ro', isa => 'Paws::CustomerProfiles::FieldSourceProfileIds');
  has MainProfileId => (is => 'ro', isa => 'Str', required => 1);
  has ProfileIdsToBeMerged => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'MergeProfiles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/profiles/objects/merge');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::MergeProfilesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::MergeProfiles - Arguments for method MergeProfiles on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method MergeProfiles on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method MergeProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to MergeProfiles.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $MergeProfilesResponse = $profile->MergeProfiles(
      DomainName            => 'Myname',
      MainProfileId         => 'Myuuid',
      ProfileIdsToBeMerged  => [ 'Myuuid', ... ],
      FieldSourceProfileIds => {
        AccountNumber         => 'Myuuid',
        AdditionalInformation => 'Myuuid',
        Address               => 'Myuuid',
        Attributes            => {
          'Mystring1To255' => 'Myuuid',    # key: min: 1, max: 255
        },    # OPTIONAL
        BillingAddress       => 'Myuuid',
        BirthDate            => 'Myuuid',
        BusinessEmailAddress => 'Myuuid',
        BusinessName         => 'Myuuid',
        BusinessPhoneNumber  => 'Myuuid',
        EmailAddress         => 'Myuuid',
        FirstName            => 'Myuuid',
        Gender               => 'Myuuid',
        HomePhoneNumber      => 'Myuuid',
        LastName             => 'Myuuid',
        MailingAddress       => 'Myuuid',
        MiddleName           => 'Myuuid',
        MobilePhoneNumber    => 'Myuuid',
        PartyType            => 'Myuuid',
        PersonalEmailAddress => 'Myuuid',
        PhoneNumber          => 'Myuuid',
        ShippingAddress      => 'Myuuid',
      },    # OPTIONAL
    );

    # Results:
    my $Message = $MergeProfilesResponse->Message;

    # Returns a L<Paws::CustomerProfiles::MergeProfilesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/MergeProfiles>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 FieldSourceProfileIds => L<Paws::CustomerProfiles::FieldSourceProfileIds>

The identifiers of the fields in the profile that has the information
you want to apply to the merge. For example, say you want to merge
EmailAddress from Profile1 into MainProfile. This would be the
identifier of the EmailAddress field in Profile1.



=head2 B<REQUIRED> MainProfileId => Str

The identifier of the profile to be taken.



=head2 B<REQUIRED> ProfileIdsToBeMerged => ArrayRef[Str|Undef]

The identifier of the profile to be merged into MainProfileId.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method MergeProfiles in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

