
package Paws::CustomerProfiles::PutProfileObject;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has Object => (is => 'ro', isa => 'Str', required => 1);
  has ObjectTypeName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutProfileObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/profiles/objects');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::PutProfileObjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::PutProfileObject - Arguments for method PutProfileObject on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutProfileObject on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method PutProfileObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutProfileObject.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $PutProfileObjectResponse = $profile->PutProfileObject(
      DomainName     => 'Myname',
      Object         => 'MystringifiedJson',
      ObjectTypeName => 'MytypeName',

    );

    # Results:
    my $ProfileObjectUniqueKey =
      $PutProfileObjectResponse->ProfileObjectUniqueKey;

    # Returns a L<Paws::CustomerProfiles::PutProfileObjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/PutProfileObject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 B<REQUIRED> Object => Str

A string that is serialized from a JSON object.



=head2 B<REQUIRED> ObjectTypeName => Str

The name of the profile object type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutProfileObject in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

