# Generated from default/object.tt
package Paws::Inspector::TelemetryMetadata;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::Inspector::Types qw//;
  has Count => (is => 'ro', isa => Int, required => 1);
  has DataSize => (is => 'ro', isa => Int);
  has MessageType => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DataSize' => {
                               'type' => 'Int'
                             },
               'MessageType' => {
                                  'type' => 'Str'
                                },
               'Count' => {
                            'type' => 'Int'
                          }
             },
  'NameInRequest' => {
                       'DataSize' => 'dataSize',
                       'MessageType' => 'messageType',
                       'Count' => 'count'
                     },
  'IsRequired' => {
                    'MessageType' => 1,
                    'Count' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::TelemetryMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::TelemetryMetadata object:

  $service_obj->Method(Att1 => { Count => $value, ..., MessageType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::TelemetryMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->Count

=head1 DESCRIPTION

The metadata about the Amazon Inspector application data metrics
collected by the agent. This data type is used as the response element
in the GetTelemetryMetadata action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Count => Int

  The count of messages that the agent sends to the Amazon Inspector
service.


=head2 DataSize => Int

  The data size of messages that the agent sends to the Amazon Inspector
service.


=head2 B<REQUIRED> MessageType => Str

  A specific type of behavioral data that is collected by the agent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

