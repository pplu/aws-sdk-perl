
package Paws::CustomerProfiles::DeleteProfileKey;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has KeyName => (is => 'ro', isa => 'Str', required => 1);
  has ProfileId => (is => 'ro', isa => 'Str', required => 1);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteProfileKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/profiles/keys/delete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::DeleteProfileKeyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::DeleteProfileKey - Arguments for method DeleteProfileKey on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteProfileKey on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method DeleteProfileKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteProfileKey.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $DeleteProfileKeyResponse = $profile->DeleteProfileKey(
      DomainName => 'Myname',
      KeyName    => 'Myname',
      ProfileId  => 'Myuuid',
      Values     => [
        'Mystring1To255', ...    # min: 1, max: 255
      ],

    );

    # Results:
    my $Message = $DeleteProfileKeyResponse->Message;

    # Returns a L<Paws::CustomerProfiles::DeleteProfileKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/DeleteProfileKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 B<REQUIRED> KeyName => Str

A searchable identifier of a customer profile.



=head2 B<REQUIRED> ProfileId => Str

The unique identifier of a customer profile.



=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

A list of key values.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteProfileKey in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

