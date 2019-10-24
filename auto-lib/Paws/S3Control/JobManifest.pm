# Generated from default/object.tt
package Paws::S3Control::JobManifest;
  use Moo;
  use Types::Standard qw//;
  use Paws::S3Control::Types qw/S3Control_JobManifestLocation S3Control_JobManifestSpec/;
  has Location => (is => 'ro', isa => S3Control_JobManifestLocation, required => 1);
  has Spec => (is => 'ro', isa => S3Control_JobManifestSpec, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Spec' => {
                           'class' => 'Paws::S3Control::JobManifestSpec',
                           'type' => 'S3Control_JobManifestSpec'
                         },
               'Location' => {
                               'class' => 'Paws::S3Control::JobManifestLocation',
                               'type' => 'S3Control_JobManifestLocation'
                             }
             },
  'IsRequired' => {
                    'Spec' => 1,
                    'Location' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::JobManifest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::JobManifest object:

  $service_obj->Method(Att1 => { Location => $value, ..., Spec => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::JobManifest object:

  $result = $service_obj->Method(...);
  $result->Att1->Location

=head1 DESCRIPTION

Contains the configuration information for a job's manifest.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Location => S3Control_JobManifestLocation

  Contains the information required to locate the specified job's
manifest.


=head2 B<REQUIRED> Spec => S3Control_JobManifestSpec

  Describes the format of the specified job's manifest. If the manifest
is in CSV format, also describes the columns contained within the
manifest.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

