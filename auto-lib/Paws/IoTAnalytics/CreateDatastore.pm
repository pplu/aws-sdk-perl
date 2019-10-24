
package Paws::IoTAnalytics::CreateDatastore;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_RetentionPeriod IoTAnalytics_Tag IoTAnalytics_DatastoreStorage/;
  has DatastoreName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DatastoreStorage => (is => 'ro', isa => IoTAnalytics_DatastoreStorage, predicate => 1);
  has RetentionPeriod => (is => 'ro', isa => IoTAnalytics_RetentionPeriod, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[IoTAnalytics_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDatastore');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/datastores');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTAnalytics::CreateDatastoreResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RetentionPeriod' => {
                                      'class' => 'Paws::IoTAnalytics::RetentionPeriod',
                                      'type' => 'IoTAnalytics_RetentionPeriod'
                                    },
               'DatastoreStorage' => {
                                       'class' => 'Paws::IoTAnalytics::DatastoreStorage',
                                       'type' => 'IoTAnalytics_DatastoreStorage'
                                     },
               'Tags' => {
                           'class' => 'Paws::IoTAnalytics::Tag',
                           'type' => 'ArrayRef[IoTAnalytics_Tag]'
                         },
               'DatastoreName' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'RetentionPeriod' => 'retentionPeriod',
                       'DatastoreStorage' => 'datastoreStorage',
                       'Tags' => 'tags',
                       'DatastoreName' => 'datastoreName'
                     },
  'IsRequired' => {
                    'DatastoreName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::CreateDatastore - Arguments for method CreateDatastore on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDatastore on the
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method CreateDatastore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDatastore.

=head1 SYNOPSIS

    my $iotanalytics = Paws->service('IoTAnalytics');
    my $CreateDatastoreResponse = $iotanalytics->CreateDatastore(
      DatastoreName    => 'MyDatastoreName',
      DatastoreStorage => {
        CustomerManagedS3 => {
          Bucket    => 'MyBucketName',     # min: 3, max: 255
          RoleArn   => 'MyRoleArn',        # min: 20, max: 2048
          KeyPrefix => 'MyS3KeyPrefix',    # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        ServiceManagedS3 => {

        },    # OPTIONAL
      },    # OPTIONAL
      RetentionPeriod => {
        NumberOfDays => 1,    # min: 1; OPTIONAL
        Unlimited    => 1,    # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $DatastoreArn    = $CreateDatastoreResponse->DatastoreArn;
    my $DatastoreName   = $CreateDatastoreResponse->DatastoreName;
    my $RetentionPeriod = $CreateDatastoreResponse->RetentionPeriod;

    # Returns a L<Paws::IoTAnalytics::CreateDatastoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/CreateDatastore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreName => Str

The name of the data store.



=head2 DatastoreStorage => IoTAnalytics_DatastoreStorage

Where data store data is stored.



=head2 RetentionPeriod => IoTAnalytics_RetentionPeriod

How long, in days, message data is kept for the data store.



=head2 Tags => ArrayRef[IoTAnalytics_Tag]

Metadata which can be used to manage the data store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDatastore in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

