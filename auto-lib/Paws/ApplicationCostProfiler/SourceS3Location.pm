# Generated by default/object.tt
package Paws::ApplicationCostProfiler::SourceS3Location;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', request_name => 'bucket', traits => ['NameInRequest'], required => 1);
  has Key => (is => 'ro', isa => 'Str', request_name => 'key', traits => ['NameInRequest'], required => 1);
  has Region => (is => 'ro', isa => 'Str', request_name => 'region', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationCostProfiler::SourceS3Location

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationCostProfiler::SourceS3Location object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., Region => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationCostProfiler::SourceS3Location object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

Represents the Amazon Simple Storage Service (Amazon S3) location where
usage data is read from.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

Name of the bucket.


=head2 B<REQUIRED> Key => Str

Key of the object.


=head2 Region => Str

Region of the bucket. Only required for Regions that are disabled by
default. For more infomration about Regions that are disabled by
default, see Enabling a Region
(https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable)
in the I<AWS General Reference guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationCostProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

