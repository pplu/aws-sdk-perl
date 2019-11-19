# Generated from default/object.tt
package Paws::Robomaker::OutputLocation;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Robomaker::Types qw//;
  has S3Bucket => (is => 'ro', isa => Str);
  has S3Prefix => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'S3Bucket' => 's3Bucket',
                       'S3Prefix' => 's3Prefix'
                     },
  'types' => {
               'S3Bucket' => {
                               'type' => 'Str'
                             },
               'S3Prefix' => {
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

Paws::Robomaker::OutputLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::OutputLocation object:

  $service_obj->Method(Att1 => { S3Bucket => $value, ..., S3Prefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::OutputLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Bucket

=head1 DESCRIPTION

The output location.

=head1 ATTRIBUTES


=head2 S3Bucket => Str

  The S3 bucket for output.


=head2 S3Prefix => Str

  The S3 folder in the C<s3Bucket> where output files will be placed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

