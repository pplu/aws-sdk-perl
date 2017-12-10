package Paws::CognitoIdp::ProviderUserIdentifierType;
  use Moose;
  has ProviderAttributeName => (is => 'ro', isa => 'Str');
  has ProviderAttributeValue => (is => 'ro', isa => 'Str');
  has ProviderName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ProviderUserIdentifierType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::ProviderUserIdentifierType object:

  $service_obj->Method(Att1 => { ProviderAttributeName => $value, ..., ProviderName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::ProviderUserIdentifierType object:

  $result = $service_obj->Method(...);
  $result->Att1->ProviderAttributeName

=head1 DESCRIPTION

A container for information about an identity provider for a user pool.

=head1 ATTRIBUTES


=head2 ProviderAttributeName => Str

  The name of the provider attribute to link to, for example, C<NameID>.


=head2 ProviderAttributeValue => Str

  The value of the provider attribute to link to, for example,
C<xxxxx_account>.


=head2 ProviderName => Str

  The name of the provider, for example, Facebook, Google, or Login with
Amazon.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

