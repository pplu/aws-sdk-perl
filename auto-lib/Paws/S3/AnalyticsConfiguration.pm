package Paws::S3::AnalyticsConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_AnalyticsFilter S3_StorageClassAnalysis/;
  has Filter => (is => 'ro', isa => S3_AnalyticsFilter);
  has Id => (is => 'ro', isa => Str, required => 1);
  has StorageClassAnalysis => (is => 'ro', isa => S3_StorageClassAnalysis, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Filter' => {
                             'class' => 'Paws::S3::AnalyticsFilter',
                             'type' => 'S3_AnalyticsFilter'
                           },
               'Id' => {
                         'type' => 'Str'
                       },
               'StorageClassAnalysis' => {
                                           'class' => 'Paws::S3::StorageClassAnalysis',
                                           'type' => 'S3_StorageClassAnalysis'
                                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::AnalyticsConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::AnalyticsConfiguration object:

  $service_obj->Method(Att1 => { Filter => $value, ..., StorageClassAnalysis => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::AnalyticsConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Filter

=head1 DESCRIPTION

Specifies the configuration and any analyses for the analytics filter
of an Amazon S3 bucket.

For more information, see GET Bucket analytics
(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketGETAnalyticsConfig.html)
in the I<Amazon Simple Storage Service API Reference>.

=head1 ATTRIBUTES


=head2 Filter => S3_AnalyticsFilter

  The filter used to describe a set of objects for analyses. A filter
must have exactly one prefix, one tag, or one conjunction
(AnalyticsAndOperator). If no filter is provided, all objects will be
considered in any analysis.


=head2 B<REQUIRED> Id => Str

  The ID that identifies the analytics configuration.


=head2 B<REQUIRED> StorageClassAnalysis => S3_StorageClassAnalysis

  Contains data related to access patterns to be collected and made
available to analyze the tradeoffs between different storage classes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

