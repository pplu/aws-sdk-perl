# Generated from default/object.tt
package Paws::Kafka::EncryptionInTransit;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Kafka::Types qw//;
  has ClientBroker => (is => 'ro', isa => Str);
  has InCluster => (is => 'ro', isa => Bool);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InCluster' => {
                                'type' => 'Bool'
                              },
               'ClientBroker' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'InCluster' => 'inCluster',
                       'ClientBroker' => 'clientBroker'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::EncryptionInTransit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kafka::EncryptionInTransit object:

  $service_obj->Method(Att1 => { ClientBroker => $value, ..., InCluster => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::EncryptionInTransit object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientBroker

=head1 DESCRIPTION

The settings for encrypting data in transit.

=head1 ATTRIBUTES


=head2 ClientBroker => Str

  Indicates the encryption setting for data in transit between clients
and brokers. The following are the possible values.

TLS means that client-broker communication is enabled with TLS only.

TLS_PLAINTEXT means that client-broker communication is enabled for
both TLS-encrypted, as well as plaintext data.

PLAINTEXT means that client-broker communication is enabled in
plaintext only.

The default value is TLS_PLAINTEXT.


=head2 InCluster => Bool

  When set to true, it indicates that data communication among the broker
nodes of the cluster is encrypted. When set to false, the communication
happens in plaintext.

The default value is true.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

