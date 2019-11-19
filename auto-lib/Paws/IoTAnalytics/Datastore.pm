# Generated from default/object.tt
package Paws::IoTAnalytics::Datastore;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_RetentionPeriod IoTAnalytics_DatastoreStorage/;
  has Arn => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Str);
  has LastUpdateTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has RetentionPeriod => (is => 'ro', isa => IoTAnalytics_RetentionPeriod);
  has Status => (is => 'ro', isa => Str);
  has Storage => (is => 'ro', isa => IoTAnalytics_DatastoreStorage);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'RetentionPeriod' => 'retentionPeriod',
                       'Storage' => 'storage',
                       'CreationTime' => 'creationTime',
                       'Status' => 'status',
                       'Name' => 'name',
                       'Arn' => 'arn',
                       'LastUpdateTime' => 'lastUpdateTime'
                     },
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'LastUpdateTime' => {
                                     'type' => 'Str'
                                   },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Name' => {
                           'type' => 'Str'
                         },
               'RetentionPeriod' => {
                                      'class' => 'Paws::IoTAnalytics::RetentionPeriod',
                                      'type' => 'IoTAnalytics_RetentionPeriod'
                                    },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'Storage' => {
                              'type' => 'IoTAnalytics_DatastoreStorage',
                              'class' => 'Paws::IoTAnalytics::DatastoreStorage'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::Datastore

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::Datastore object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Storage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::Datastore object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about a data store.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of the data store.


=head2 CreationTime => Str

  When the data store was created.


=head2 LastUpdateTime => Str

  The last time the data store was updated.


=head2 Name => Str

  The name of the data store.


=head2 RetentionPeriod => IoTAnalytics_RetentionPeriod

  How long, in days, message data is kept for the data store. When
"customerManagedS3" storage is selected, this parameter is ignored.


=head2 Status => Str

  The status of a data store:

=over

=item CREATING

The data store is being created.

=item ACTIVE

The data store has been created and can be used.

=item DELETING

The data store is being deleted.

=back



=head2 Storage => IoTAnalytics_DatastoreStorage

  Where data store data is stored. You may choose one of
"serviceManagedS3" or "customerManagedS3" storage. If not specified,
the default is "serviceManagedS3". This cannot be changed after the
data store is created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

