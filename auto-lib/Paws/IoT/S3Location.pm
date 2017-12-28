package Paws::IoT::S3Location;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', request_name => 'bucket', traits => ['NameInRequest'], required => 1);
  has Key => (is => 'ro', isa => 'Str', request_name => 'key', traits => ['NameInRequest'], required => 1);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::S3Location

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::S3Location object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::S3Location object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

The location in S3 the contains the files to stream.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

  The S3 bucket that contains the file to stream.


=head2 B<REQUIRED> Key => Str

  The name of the file within the S3 bucket to stream.


=head2 Version => Str

  The file version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

