package Paws::CognitoIdp::ProviderDescription;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has ProviderName => (is => 'ro', isa => 'Str');
  has ProviderType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ProviderDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::ProviderDescription object:

  $service_obj->Method(Att1 => { CreationDate => $value, ..., ProviderType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::ProviderDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDate

=head1 DESCRIPTION

A container for identity provider details.

=head1 ATTRIBUTES


=head2 CreationDate => Str

  The date the provider was added to the user pool.


=head2 LastModifiedDate => Str

  The date the provider was last modified.


=head2 ProviderName => Str

  The identity provider name.


=head2 ProviderType => Str

  The identity provider type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

