# Generated from default/object.tt
package Paws::Greengrass::Connector;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw/Greengrass___mapOf__string/;
  has ConnectorArn => (is => 'ro', isa => Str, required => 1);
  has Id => (is => 'ro', isa => Str, required => 1);
  has Parameters => (is => 'ro', isa => Greengrass___mapOf__string);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ConnectorArn' => 1,
                    'Id' => 1
                  },
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'Parameters' => {
                                 'class' => 'Paws::Greengrass::__mapOf__string',
                                 'type' => 'Greengrass___mapOf__string'
                               },
               'ConnectorArn' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::Connector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::Connector object:

  $service_obj->Method(Att1 => { ConnectorArn => $value, ..., Parameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::Connector object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectorArn

=head1 DESCRIPTION

Information about a connector. Connectors run on the Greengrass core
and contain built-in integration with local infrastructure, device
protocols, AWS, and other cloud services.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorArn => Str

  The ARN of the connector.


=head2 B<REQUIRED> Id => Str

  A descriptive or arbitrary ID for the connector. This value must be
unique within the connector definition version. Max length is 128
characters with pattern [a-zA-Z0-9:_-]+.


=head2 Parameters => Greengrass___mapOf__string

  The parameters or configuration that the connector uses.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

