# Generated by default/object.tt
package Paws::Robomaker::TemplateLocation;
  use Moose;
  has S3Bucket => (is => 'ro', isa => 'Str', request_name => 's3Bucket', traits => ['NameInRequest'], required => 1);
  has S3Key => (is => 'ro', isa => 'Str', request_name => 's3Key', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::TemplateLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::TemplateLocation object:

  $service_obj->Method(Att1 => { S3Bucket => $value, ..., S3Key => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::TemplateLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Bucket

=head1 DESCRIPTION

Information about a template location.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3Bucket => Str

The Amazon S3 bucket name.


=head2 B<REQUIRED> S3Key => Str

The list of S3 keys identifying the data source files.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

