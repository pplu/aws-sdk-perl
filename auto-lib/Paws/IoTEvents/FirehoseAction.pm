# Generated from default/object.tt
package Paws::IoTEvents::FirehoseAction;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEvents::Types qw//;
  has DeliveryStreamName => (is => 'ro', isa => Str, required => 1);
  has Separator => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DeliveryStreamName' => 'deliveryStreamName',
                       'Separator' => 'separator'
                     },
  'IsRequired' => {
                    'DeliveryStreamName' => 1
                  },
  'types' => {
               'Separator' => {
                                'type' => 'Str'
                              },
               'DeliveryStreamName' => {
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

Paws::IoTEvents::FirehoseAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::FirehoseAction object:

  $service_obj->Method(Att1 => { DeliveryStreamName => $value, ..., Separator => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::FirehoseAction object:

  $result = $service_obj->Method(...);
  $result->Att1->DeliveryStreamName

=head1 DESCRIPTION

Sends information about the detector model instance and the event which
triggered the action to a Kinesis Data Firehose delivery stream.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliveryStreamName => Str

  The name of the Kinesis Data Firehose delivery stream where the data is
written.


=head2 Separator => Str

  A character separator that is used to separate records written to the
Kinesis Data Firehose delivery stream. Valid values are: '\n'
(newline), '\t' (tab), '\r\n' (Windows newline), ',' (comma).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

