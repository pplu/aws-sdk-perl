# Generated from default/object.tt
package Paws::IoTAnalytics::DatasetContentDeliveryRule;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_DatasetContentDeliveryDestination/;
  has Destination => (is => 'ro', isa => IoTAnalytics_DatasetContentDeliveryDestination, required => 1);
  has EntryName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Destination' => {
                                  'class' => 'Paws::IoTAnalytics::DatasetContentDeliveryDestination',
                                  'type' => 'IoTAnalytics_DatasetContentDeliveryDestination'
                                },
               'EntryName' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'Destination' => 'destination',
                       'EntryName' => 'entryName'
                     },
  'IsRequired' => {
                    'Destination' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DatasetContentDeliveryRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::DatasetContentDeliveryRule object:

  $service_obj->Method(Att1 => { Destination => $value, ..., EntryName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::DatasetContentDeliveryRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

When data set contents are created they are delivered to destination
specified here.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => IoTAnalytics_DatasetContentDeliveryDestination

  The destination to which data set contents are delivered.


=head2 EntryName => Str

  The name of the data set content delivery rules entry.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

