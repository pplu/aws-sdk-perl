package Paws::IoT::AuthorizerDescription;
  use Moose;
  has AuthorizerArn => (is => 'ro', isa => 'Str', request_name => 'authorizerArn', traits => ['NameInRequest']);
  has AuthorizerFunctionArn => (is => 'ro', isa => 'Str', request_name => 'authorizerFunctionArn', traits => ['NameInRequest']);
  has AuthorizerName => (is => 'ro', isa => 'Str', request_name => 'authorizerName', traits => ['NameInRequest']);
  has CreationDate => (is => 'ro', isa => 'Str', request_name => 'creationDate', traits => ['NameInRequest']);
  has LastModifiedDate => (is => 'ro', isa => 'Str', request_name => 'lastModifiedDate', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has TokenKeyName => (is => 'ro', isa => 'Str', request_name => 'tokenKeyName', traits => ['NameInRequest']);
  has TokenSigningPublicKeys => (is => 'ro', isa => 'Paws::IoT::PublicKeyMap', request_name => 'tokenSigningPublicKeys', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AuthorizerDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AuthorizerDescription object:

  $service_obj->Method(Att1 => { AuthorizerArn => $value, ..., TokenSigningPublicKeys => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AuthorizerDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthorizerArn

=head1 DESCRIPTION

The authorizer description.

=head1 ATTRIBUTES


=head2 AuthorizerArn => Str

  The authorizer ARN.


=head2 AuthorizerFunctionArn => Str

  The authorizer's Lambda function ARN.


=head2 AuthorizerName => Str

  The authorizer name.


=head2 CreationDate => Str

  The UNIX timestamp of when the authorizer was created.


=head2 LastModifiedDate => Str

  The UNIX timestamp of when the authorizer was last updated.


=head2 Status => Str

  The status of the authorizer.


=head2 TokenKeyName => Str

  The key used to extract the token from the HTTP headers.


=head2 TokenSigningPublicKeys => L<Paws::IoT::PublicKeyMap>

  The public keys used to validate the token signature returned by your
custom authentication service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

