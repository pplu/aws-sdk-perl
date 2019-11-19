# Generated from default/object.tt
package Paws::IoTAnalytics::S3DestinationConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_GlueConfiguration/;
  has Bucket => (is => 'ro', isa => Str, required => 1);
  has GlueConfiguration => (is => 'ro', isa => IoTAnalytics_GlueConfiguration);
  has Key => (is => 'ro', isa => Str, required => 1);
  has RoleArn => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GlueConfiguration' => {
                                        'type' => 'IoTAnalytics_GlueConfiguration',
                                        'class' => 'Paws::IoTAnalytics::GlueConfiguration'
                                      },
               'Key' => {
                          'type' => 'Str'
                        },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'RoleArn' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'GlueConfiguration' => 'glueConfiguration',
                       'Key' => 'key',
                       'Bucket' => 'bucket',
                       'RoleArn' => 'roleArn'
                     },
  'IsRequired' => {
                    'Key' => 1,
                    'Bucket' => 1,
                    'RoleArn' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::S3DestinationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::S3DestinationConfiguration object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::S3DestinationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

Configuration information for delivery of data set contents to Amazon
S3.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

  The name of the Amazon S3 bucket to which data set contents are
delivered.


=head2 GlueConfiguration => IoTAnalytics_GlueConfiguration

  Configuration information for coordination with the AWS Glue ETL
(extract, transform and load) service.


=head2 B<REQUIRED> Key => Str

  The key of the data set contents object. Each object in an Amazon S3
bucket has a key that is its unique identifier within the bucket (each
object in a bucket has exactly one key). To produce a unique key, you
can use "!{iotanalytics:scheduledTime}" to insert the time of the
scheduled SQL query run, or "!{iotanalytics:versioned} to insert a
unique hash identifying the data set, for example:
"/DataSet/!{iotanalytics:scheduledTime}/!{iotanalytics:versioned}.csv".


=head2 B<REQUIRED> RoleArn => Str

  The ARN of the role which grants AWS IoT Analytics permission to
interact with your Amazon S3 and AWS Glue resources.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

