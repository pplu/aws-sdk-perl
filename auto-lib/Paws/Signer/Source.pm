# Generated from default/object.tt
package Paws::Signer::Source;
  use Moo;
  use Types::Standard qw//;
  use Paws::Signer::Types qw/Signer_S3Source/;
  has S3 => (is => 'ro', isa => Signer_S3Source);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'S3' => {
                         'class' => 'Paws::Signer::S3Source',
                         'type' => 'Signer_S3Source'
                       }
             },
  'NameInRequest' => {
                       'S3' => 's3'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::Source

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Signer::Source object:

  $service_obj->Method(Att1 => { S3 => $value, ..., S3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Signer::Source object:

  $result = $service_obj->Method(...);
  $result->Att1->S3

=head1 DESCRIPTION

An C<S3Source> object that contains information about the S3 bucket
where you saved your unsigned code.

=head1 ATTRIBUTES


=head2 S3 => Signer_S3Source

  The C<S3Source> object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

