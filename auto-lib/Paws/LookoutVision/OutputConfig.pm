# Generated by default/object.tt
package Paws::LookoutVision::OutputConfig;
  use Moose;
  has S3Location => (is => 'ro', isa => 'Paws::LookoutVision::S3Location', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::OutputConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LookoutVision::OutputConfig object:

  $service_obj->Method(Att1 => { S3Location => $value, ..., S3Location => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LookoutVision::OutputConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Location

=head1 DESCRIPTION

The S3 location where Amazon Lookout for Vision saves model training
files.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3Location => L<Paws::LookoutVision::S3Location>

The S3 location for the output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LookoutVision>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

