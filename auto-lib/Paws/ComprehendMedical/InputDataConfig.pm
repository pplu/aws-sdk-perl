package Paws::ComprehendMedical::InputDataConfig;
  use Moose;
  has S3Bucket => (is => 'ro', isa => 'Str', required => 1);
  has S3Key => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::InputDataConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComprehendMedical::InputDataConfig object:

  $service_obj->Method(Att1 => { S3Bucket => $value, ..., S3Key => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComprehendMedical::InputDataConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Bucket

=head1 DESCRIPTION

The input properties for an entities detection job

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3Bucket => Str

  The URI of the S3 bucket that contains the input data. The bucket must
be in the same region as the API endpoint that you are calling.

Each file in the document collection must be less than 40 KB. You can
store a maximum of 30 GB in the bucket.


=head2 S3Key => Str

  The path to the input data files in the S3 bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComprehendMedical>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

