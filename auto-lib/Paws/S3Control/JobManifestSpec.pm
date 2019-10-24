# Generated from default/object.tt
package Paws::S3Control::JobManifestSpec;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::S3Control::Types qw//;
  has Fields => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Format => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Fields' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'Format' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'Format' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::JobManifestSpec

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::JobManifestSpec object:

  $service_obj->Method(Att1 => { Fields => $value, ..., Format => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::JobManifestSpec object:

  $result = $service_obj->Method(...);
  $result->Att1->Fields

=head1 DESCRIPTION

Describes the format of a manifest. If the manifest is in CSV format,
also describes the columns contained within the manifest.

=head1 ATTRIBUTES


=head2 Fields => ArrayRef[Str|Undef]

  If the specified manifest object is in the
C<S3BatchOperations_CSV_20180820> format, this element describes which
columns contain the required data.


=head2 B<REQUIRED> Format => Str

  Indicates which of the available formats the specified manifest uses.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

