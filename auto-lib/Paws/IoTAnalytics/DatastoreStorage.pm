# Generated from default/object.tt
package Paws::IoTAnalytics::DatastoreStorage;
  use Moo;
  use Types::Standard qw//;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_CustomerManagedDatastoreS3Storage IoTAnalytics_ServiceManagedDatastoreS3Storage/;
  has CustomerManagedS3 => (is => 'ro', isa => IoTAnalytics_CustomerManagedDatastoreS3Storage);
  has ServiceManagedS3 => (is => 'ro', isa => IoTAnalytics_ServiceManagedDatastoreS3Storage);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceManagedS3' => {
                                       'class' => 'Paws::IoTAnalytics::ServiceManagedDatastoreS3Storage',
                                       'type' => 'IoTAnalytics_ServiceManagedDatastoreS3Storage'
                                     },
               'CustomerManagedS3' => {
                                        'class' => 'Paws::IoTAnalytics::CustomerManagedDatastoreS3Storage',
                                        'type' => 'IoTAnalytics_CustomerManagedDatastoreS3Storage'
                                      }
             },
  'NameInRequest' => {
                       'ServiceManagedS3' => 'serviceManagedS3',
                       'CustomerManagedS3' => 'customerManagedS3'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DatastoreStorage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::DatastoreStorage object:

  $service_obj->Method(Att1 => { CustomerManagedS3 => $value, ..., ServiceManagedS3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::DatastoreStorage object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomerManagedS3

=head1 DESCRIPTION

Where data store data is stored.

=head1 ATTRIBUTES


=head2 CustomerManagedS3 => IoTAnalytics_CustomerManagedDatastoreS3Storage

  Use this to store data store data in an S3 bucket that you manage.


=head2 ServiceManagedS3 => IoTAnalytics_ServiceManagedDatastoreS3Storage

  Use this to store data store data in an S3 bucket managed by the AWS
IoT Analytics service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

