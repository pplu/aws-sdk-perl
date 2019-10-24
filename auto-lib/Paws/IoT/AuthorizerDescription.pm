# Generated from default/object.tt
package Paws::IoT::AuthorizerDescription;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_PublicKeyMap/;
  has AuthorizerArn => (is => 'ro', isa => Str);
  has AuthorizerFunctionArn => (is => 'ro', isa => Str);
  has AuthorizerName => (is => 'ro', isa => Str);
  has CreationDate => (is => 'ro', isa => Str);
  has LastModifiedDate => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has TokenKeyName => (is => 'ro', isa => Str);
  has TokenSigningPublicKeys => (is => 'ro', isa => IoT_PublicKeyMap);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TokenSigningPublicKeys' => {
                                             'class' => 'Paws::IoT::PublicKeyMap',
                                             'type' => 'IoT_PublicKeyMap'
                                           },
               'AuthorizerName' => {
                                     'type' => 'Str'
                                   },
               'Status' => {
                             'type' => 'Str'
                           },
               'TokenKeyName' => {
                                   'type' => 'Str'
                                 },
               'LastModifiedDate' => {
                                       'type' => 'Str'
                                     },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'AuthorizerArn' => {
                                    'type' => 'Str'
                                  },
               'AuthorizerFunctionArn' => {
                                            'type' => 'Str'
                                          }
             },
  'NameInRequest' => {
                       'TokenSigningPublicKeys' => 'tokenSigningPublicKeys',
                       'AuthorizerName' => 'authorizerName',
                       'Status' => 'status',
                       'TokenKeyName' => 'tokenKeyName',
                       'LastModifiedDate' => 'lastModifiedDate',
                       'CreationDate' => 'creationDate',
                       'AuthorizerArn' => 'authorizerArn',
                       'AuthorizerFunctionArn' => 'authorizerFunctionArn'
                     }
}
;
    return $Params_map;
  }


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


=head2 TokenSigningPublicKeys => IoT_PublicKeyMap

  The public keys used to validate the token signature returned by your
custom authentication service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

