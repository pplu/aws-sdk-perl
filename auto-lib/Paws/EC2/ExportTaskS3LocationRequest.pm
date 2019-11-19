package Paws::EC2::ExportTaskS3LocationRequest;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has S3Bucket => (is => 'ro', isa => Str, required => 1);
  has S3Prefix => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'S3Bucket' => {
                               'type' => 'Str'
                             },
               'S3Prefix' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'S3Bucket' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ExportTaskS3LocationRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ExportTaskS3LocationRequest object:

  $service_obj->Method(Att1 => { S3Bucket => $value, ..., S3Prefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ExportTaskS3LocationRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Bucket

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3Bucket => Str

  The destination S3 bucket.


=head2 S3Prefix => Str

  The prefix (logical hierarchy) in the bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
