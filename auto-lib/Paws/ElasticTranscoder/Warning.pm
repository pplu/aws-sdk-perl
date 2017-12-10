package Paws::ElasticTranscoder::Warning;
  use Moose;
  has Code => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::Warning

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::Warning object:

  $service_obj->Method(Att1 => { Code => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::Warning object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

Elastic Transcoder returns a warning if the resources used by your
pipeline are not in the same region as the pipeline.

Using resources in the same region, such as your Amazon S3 buckets,
Amazon SNS notification topics, and AWS KMS key, reduces processing
time and prevents cross-regional charges.

=head1 ATTRIBUTES


=head2 Code => Str

  The code of the cross-regional warning.


=head2 Message => Str

  The message explaining what resources are in a different region from
the pipeline.

AWS KMS keys must be in the same region as the pipeline.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

