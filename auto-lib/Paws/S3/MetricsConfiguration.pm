package Paws::S3::MetricsConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_MetricsFilter/;
  has Filter => (is => 'ro', isa => S3_MetricsFilter);
  has Id => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Filter' => {
                             'class' => 'Paws::S3::MetricsFilter',
                             'type' => 'S3_MetricsFilter'
                           },
               'Id' => {
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

Paws::S3::MetricsConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::MetricsConfiguration object:

  $service_obj->Method(Att1 => { Filter => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::MetricsConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Filter

=head1 DESCRIPTION

Specifies a metrics configuration for the CloudWatch request metrics
(specified by the metrics configuration ID) from an Amazon S3 bucket.
If you're updating an existing metrics configuration, note that this is
a full replacement of the existing metrics configuration. If you don't
include the elements you want to keep, they are erased. For more
information, see PUT Bucket metrics
(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTMetricConfiguration.html)
in the I<Amazon Simple Storage Service API Reference>.

=head1 ATTRIBUTES


=head2 Filter => S3_MetricsFilter

  Specifies a metrics configuration filter. The metrics configuration
will only include objects that meet the filter's criteria. A filter
must be a prefix, a tag, or a conjunction (MetricsAndOperator).


=head2 B<REQUIRED> Id => Str

  The ID used to identify the metrics configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

